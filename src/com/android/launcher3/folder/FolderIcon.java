// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.animation.Animator$AnimatorListener;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Utilities;
import android.view.MotionEvent;
import android.os.Parcelable;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.AppInfo;
import com.android.launcher3.LauncherAnimUtils;
import java.util.ArrayList;
import com.android.launcher3.badge.BadgeInfo;
import com.android.launcher3.graphics.IconPalette;
import android.graphics.Region$Op;
import android.graphics.Paint;
import android.graphics.Canvas;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.ItemInfo;
import java.util.List;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.Interpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import java.util.Collection;
import com.android.launcher3.CellLayout;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.ShortcutInfo;
import android.view.ViewConfiguration;
import com.android.launcher3.StylusEventHelper$StylusButtonListener;
import com.android.launcher3.SimpleOnStylusPressListener;
import com.android.launcher3.DeviceProfile;
import android.view.View$OnFocusChangeListener;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.widget.FrameLayout$LayoutParams;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.Point;
import android.graphics.Rect;
import com.android.launcher3.StylusEventHelper;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.badge.FolderBadgeInfo;
import android.util.Property;
import com.android.launcher3.FolderInfo$FolderListener;
import android.widget.FrameLayout;

public class FolderIcon extends FrameLayout implements FolderInfo$FolderListener
{
    private static final Property BADGE_SCALE_PROPERTY;
    public static final int NUM_ITEMS_IN_PREVIEW;
    static boolean sStaticValuesDirty;
    boolean mAnimating;
    PreviewBackground mBackground;
    private boolean mBackgroundIsVisible;
    private FolderBadgeInfo mBadgeInfo;
    private BadgeRenderer mBadgeRenderer;
    private float mBadgeScale;
    Folder mFolder;
    BubbleTextView mFolderName;
    private FolderInfo mInfo;
    Launcher mLauncher;
    private CheckLongPressHelper mLongPressHelper;
    OnAlarmListener mOnOpenListener;
    private Alarm mOpenAlarm;
    private PreviewItemManager mPreviewItemManager;
    FolderIcon$PreviewLayoutRule mPreviewLayoutRule;
    FolderIconPreviewVerifier mPreviewVerifier;
    private float mSlop;
    private StylusEventHelper mStylusEventHelper;
    private Rect mTempBounds;
    private Point mTempSpaceForBadgeOffset;
    private PreviewItemDrawingParams mTmpParams;
    
    static {
        FolderIcon.sStaticValuesDirty = true;
        int num_ITEMS_IN_PREVIEW;
        if (FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON) {
            num_ITEMS_IN_PREVIEW = 3;
        }
        else {
            num_ITEMS_IN_PREVIEW = 4;
        }
        NUM_ITEMS_IN_PREVIEW = num_ITEMS_IN_PREVIEW;
        BADGE_SCALE_PROPERTY = new FolderIcon$1(Float.TYPE, "badgeScale");
    }
    
    public FolderIcon(final Context context) {
        super(context);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mAnimating = false;
        this.mTempBounds = new Rect();
        this.mOpenAlarm = new Alarm();
        this.mBadgeInfo = new FolderBadgeInfo();
        this.mTempSpaceForBadgeOffset = new Point();
        this.mOnOpenListener = new FolderIcon$2(this);
        this.init();
    }
    
    public FolderIcon(final Context context, final AttributeSet set) {
        super(context, set);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mAnimating = false;
        this.mTempBounds = new Rect();
        this.mOpenAlarm = new Alarm();
        this.mBadgeInfo = new FolderBadgeInfo();
        this.mTempSpaceForBadgeOffset = new Point();
        this.mOnOpenListener = new FolderIcon$2(this);
        this.init();
    }
    
    private void copyToPreview(final PreviewImageView previewImageView) {
        previewImageView.copy((View)this);
        if (this.mFolder != null) {
            previewImageView.setPivotX(this.mFolder.getPivotXForIconAnimation());
            previewImageView.setPivotY(this.mFolder.getPivotYForIconAnimation());
            this.mFolder.bringToFront();
        }
    }
    
    public static FolderIcon fromXml(final int n, final Launcher launcher, final ViewGroup viewGroup, final FolderInfo folderInfo) {
        final DeviceProfile deviceProfile = launcher.getDeviceProfile();
        final FolderIcon folderIcon = (FolderIcon)LayoutInflater.from(viewGroup.getContext()).inflate(n, viewGroup, false);
        folderIcon.setClipToPadding(false);
        (folderIcon.mFolderName = (BubbleTextView)folderIcon.findViewById(2131624007)).setText(folderInfo.title);
        folderIcon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout$LayoutParams)folderIcon.mFolderName.getLayoutParams()).topMargin = deviceProfile.iconDrawablePaddingPx + deviceProfile.iconSizePx;
        folderIcon.setTag((Object)folderInfo);
        folderIcon.setOnClickListener((View$OnClickListener)launcher);
        folderIcon.mInfo = folderInfo;
        folderIcon.mLauncher = launcher;
        folderIcon.mBadgeRenderer = launcher.getDeviceProfile().mBadgeRenderer;
        folderIcon.setContentDescription((CharSequence)launcher.getString(2131492942, new Object[] { folderInfo.title }));
        final Folder fromXml = Folder.fromXml(launcher);
        fromXml.setDragController(launcher.getDragController());
        fromXml.setFolderIcon(folderIcon);
        fromXml.bind(folderInfo);
        folderIcon.setFolder(fromXml);
        folderIcon.setAccessibilityDelegate((View$AccessibilityDelegate)launcher.getAccessibilityDelegate());
        folderInfo.addListener(folderIcon);
        folderIcon.setOnFocusChangeListener((View$OnFocusChangeListener)launcher.mFocusHandler);
        return folderIcon;
    }
    
    private float getLocalCenterForIndex(final int n, final int n2, final int[] array) {
        final float n3 = 2.0f;
        this.mTmpParams = this.mPreviewItemManager.computePreviewItemDrawingParams(Math.min(this.mPreviewLayoutRule.maxNumItems(), n), n2, this.mTmpParams);
        final PreviewItemDrawingParams mTmpParams = this.mTmpParams;
        mTmpParams.transX += this.mBackground.basePreviewOffsetX;
        final PreviewItemDrawingParams mTmpParams2 = this.mTmpParams;
        mTmpParams2.transY += this.mBackground.basePreviewOffsetY;
        final float intrinsicIconSize = this.mPreviewItemManager.getIntrinsicIconSize();
        final float n4 = this.mTmpParams.transX + this.mTmpParams.scale * intrinsicIconSize / n3;
        final float n5 = intrinsicIconSize * this.mTmpParams.scale / n3 + this.mTmpParams.transY;
        array[0] = Math.round(n4);
        array[1] = Math.round(n5);
        return this.mTmpParams.scale;
    }
    
    private void init() {
        this.mLongPressHelper = new CheckLongPressHelper((View)this);
        this.mStylusEventHelper = new StylusEventHelper(new SimpleOnStylusPressListener((View)this), (View)this);
        FolderIcon$PreviewLayoutRule mPreviewLayoutRule;
        if (FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON) {
            mPreviewLayoutRule = new StackFolderIconLayoutRule();
        }
        else {
            mPreviewLayoutRule = new ClippedFolderIconLayoutRule();
        }
        this.mPreviewLayoutRule = mPreviewLayoutRule;
        this.mSlop = ViewConfiguration.get(this.getContext()).getScaledTouchSlop();
        this.mPreviewItemManager = new PreviewItemManager(this);
    }
    
    private void onDrop(final ShortcutInfo shortcutInfo, final DragView dragView, final Rect rect, float descendantRectRelativeToSelf, int n, final Runnable runnable) {
        shortcutInfo.cellX = -1;
        shortcutInfo.cellY = -1;
        if (dragView != null) {
            final DragLayer dragLayer = this.mLauncher.getDragLayer();
            final Rect rect2 = new Rect();
            dragLayer.getViewRectRelativeToSelf((View)dragView, rect2);
            Rect rect3;
            if (rect == null) {
                rect3 = new Rect();
                final Workspace workspace = this.mLauncher.getWorkspace();
                workspace.setFinalTransitionTransform((CellLayout)this.getParent().getParent());
                final float scaleX = this.getScaleX();
                final float scaleY = this.getScaleY();
                this.setScaleX(1.0f);
                this.setScaleY(1.0f);
                descendantRectRelativeToSelf = dragLayer.getDescendantRectRelativeToSelf((View)this, rect3);
                this.setScaleX(scaleX);
                this.setScaleY(scaleY);
                workspace.resetTransitionTransform((CellLayout)this.getParent().getParent());
            }
            else {
                rect3 = rect;
            }
            boolean b;
            if (n >= this.mPreviewLayoutRule.maxNumItems()) {
                if (this.mPreviewLayoutRule.hasEnterExitIndices()) {
                    final List previewItemsOnPage = this.getPreviewItemsOnPage(0);
                    this.addItem(shortcutInfo, false);
                    final List previewItemsOnPage2 = this.getPreviewItemsOnPage(0);
                    if (!previewItemsOnPage.containsAll(previewItemsOnPage2)) {
                        for (int i = 0; i < previewItemsOnPage2.size(); ++i) {
                            if (previewItemsOnPage2.get(i).getTag().equals(shortcutInfo)) {
                                n = i;
                            }
                        }
                        this.mPreviewItemManager.onDrop(previewItemsOnPage, previewItemsOnPage2, shortcutInfo);
                        b = true;
                    }
                    else {
                        this.removeItem(shortcutInfo, false);
                        b = false;
                    }
                }
                else {
                    b = false;
                }
            }
            else {
                b = false;
            }
            if (!b) {
                this.addItem(shortcutInfo);
            }
            final int[] array = new int[2];
            final float localCenterForIndex = this.getLocalCenterForIndex(n, n + 1, array);
            array[0] = Math.round(array[0] * descendantRectRelativeToSelf);
            array[1] = Math.round(array[1] * descendantRectRelativeToSelf);
            rect3.offset(array[0] - dragView.getMeasuredWidth() / 2, array[1] - dragView.getMeasuredHeight() / 2);
            float n2;
            if (n < this.mPreviewLayoutRule.maxNumItems()) {
                n2 = 0.5f;
            }
            else {
                n2 = 0.0f;
            }
            final float n3 = localCenterForIndex * descendantRectRelativeToSelf;
            dragLayer.animateView(dragView, rect2, rect3, n2, 1.0f, 1.0f, n3, n3, 400, (Interpolator)new DecelerateInterpolator(2.0f), (Interpolator)new AccelerateInterpolator(2.0f), runnable, 0, null);
            this.mFolder.hideItem(shortcutInfo);
            if (!b) {
                this.mPreviewItemManager.hidePreviewItem(n, true);
            }
            this.postDelayed((Runnable)new FolderIcon$3(this, n, shortcutInfo), 400L);
        }
        else {
            this.addItem(shortcutInfo);
        }
    }
    
    private void setFolder(final Folder mFolder) {
        this.mFolder = mFolder;
        this.mPreviewVerifier = new FolderIconPreviewVerifier(this.mLauncher.getDeviceProfile().inv);
        this.mPreviewItemManager.updateItemDrawingParams(false);
    }
    
    private void updateBadgeScale(final boolean b, final boolean b2) {
        float mBadgeScale;
        if (b2) {
            mBadgeScale = 1.0f;
        }
        else {
            mBadgeScale = 0.0f;
        }
        if ((b ^ b2) && this.isShown()) {
            this.createBadgeScaleAnimator(mBadgeScale).start();
        }
        else {
            this.mBadgeScale = mBadgeScale;
            this.invalidate();
        }
    }
    
    private boolean willAcceptItem(final ItemInfo itemInfo) {
        boolean b = false;
        final int itemType = itemInfo.itemType;
        if ((itemType == 0 || itemType == 1 || itemType == 6) && ((this.mFolder.isFull() ^ true) && itemInfo != this.mInfo)) {
            b = (this.mFolder.isOpen() ^ true);
        }
        return b;
    }
    
    public boolean acceptDrop(final ItemInfo itemInfo) {
        return !this.mFolder.isDestroyed() && this.willAcceptItem(itemInfo);
    }
    
    public void addItem(final ShortcutInfo shortcutInfo) {
        this.addItem(shortcutInfo, true);
    }
    
    public void addItem(final ShortcutInfo shortcutInfo, final boolean b) {
        this.mInfo.add(shortcutInfo, b);
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
    
    public void clearLeaveBehindIfExists() {
        ((CellLayout$LayoutParams)this.getLayoutParams()).canReorder = true;
        if (this.mInfo.container == -101) {
            ((CellLayout)this.getParent().getParent()).clearFolderLeaveBehind();
        }
    }
    
    public Animator createBadgeScaleAnimator(final float... array) {
        return (Animator)ObjectAnimator.ofFloat((Object)this, FolderIcon.BADGE_SCALE_PROPERTY, array);
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        if (!this.mBackgroundIsVisible) {
            return;
        }
        this.mPreviewItemManager.recomputePreviewDrawingParams();
        if (!this.mBackground.drawingDelegated()) {
            this.mBackground.drawBackground(canvas);
        }
        if (this.mFolder == null) {
            return;
        }
        if (this.mFolder.getItemCount() == 0 && (this.mAnimating ^ true)) {
            return;
        }
        int n;
        if (canvas.isHardwareAccelerated()) {
            n = canvas.saveLayer(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight(), (Paint)null, 20);
        }
        else {
            n = canvas.save(2);
            if (this.mPreviewLayoutRule.clipToBackground()) {
                this.mBackground.clipCanvasSoftware(canvas, Region$Op.INTERSECT);
            }
        }
        canvas.translate((float)this.mBackground.basePreviewOffsetX, (float)this.mBackground.basePreviewOffsetY);
        this.mPreviewItemManager.draw(canvas);
        canvas.translate((float)(-this.mBackground.basePreviewOffsetX), (float)(-this.mBackground.basePreviewOffsetY));
        if (this.mPreviewLayoutRule.clipToBackground() && canvas.isHardwareAccelerated()) {
            this.mBackground.clipCanvasHardware(canvas);
        }
        canvas.restoreToCount(n);
        if (this.mPreviewLayoutRule.clipToBackground() && (this.mBackground.drawingDelegated() ^ true)) {
            this.mBackground.drawBackgroundStroke(canvas);
        }
        if ((this.mBadgeInfo != null && this.mBadgeInfo.hasBadge()) || this.mBadgeScale > 0.0f) {
            final int offsetX = this.mBackground.getOffsetX();
            final int offsetY = this.mBackground.getOffsetY();
            final int n2 = (int)(this.mBackground.previewSize * this.mBackground.mScale);
            this.mTempBounds.set(offsetX, offsetY, offsetX + n2, n2 + offsetY);
            final float max = Math.max(0.0f, this.mBadgeScale - this.mBackground.getScaleProgress());
            this.mTempSpaceForBadgeOffset.set(this.getWidth() - this.mTempBounds.right, this.mTempBounds.top);
            this.mBadgeRenderer.draw(canvas, IconPalette.getFolderBadgePalette(this.getResources()), this.mBadgeInfo, this.mTempBounds, max, this.mTempSpaceForBadgeOffset);
        }
    }
    
    public void drawLeaveBehindIfExists() {
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)this.getLayoutParams();
        cellLayout$LayoutParams.canReorder = false;
        if (this.mInfo.container == -101) {
            ((CellLayout)this.getParent().getParent()).setFolderLeaveBehindCell(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY);
        }
    }
    
    public Folder getFolder() {
        return this.mFolder;
    }
    
    public FolderIcon$PreviewLayoutRule getLayoutRule() {
        return this.mPreviewLayoutRule;
    }
    
    public List getPreviewItems() {
        return this.getPreviewItemsOnPage(0);
    }
    
    public List getPreviewItemsOnPage(final int n) {
        this.mPreviewVerifier.setFolderInfo(this.mFolder.getInfo());
        final ArrayList<BubbleTextView> list = new ArrayList<BubbleTextView>();
        final List itemsOnPage = this.mFolder.getItemsOnPage(n);
        for (int size = itemsOnPage.size(), i = 0; i < size; ++i) {
            if (this.mPreviewVerifier.isItemInPreview(n, i)) {
                list.add(itemsOnPage.get(i));
            }
            if (list.size() == FolderIcon.NUM_ITEMS_IN_PREVIEW) {
                break;
            }
        }
        return list;
    }
    
    public boolean getTextVisible() {
        boolean b = false;
        if (this.mFolderName.getVisibility() == 0) {
            b = true;
        }
        return b;
    }
    
    public void growAndFadeOut() {
        final float n = 1.5f;
        this.drawLeaveBehindIfExists();
        final PreviewImageView value = PreviewImageView.get(this.getContext());
        this.copyToPreview(value);
        this.setVisibility(4);
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale((View)value, 0.0f, n, n);
        ofViewAlphaAndScale.setDuration((long)this.getResources().getInteger(2131558417));
        ofViewAlphaAndScale.start();
    }
    
    public boolean hasBadge() {
        return this.mBadgeInfo != null && this.mBadgeInfo.hasBadge();
    }
    
    public void onAdd(final ShortcutInfo shortcutInfo, final int n) {
        final boolean hasBadge = this.mBadgeInfo.hasBadge();
        this.mBadgeInfo.addBadgeInfo(this.mLauncher.getPopupDataProvider().getBadgeInfoForItem(shortcutInfo));
        this.updateBadgeScale(hasBadge, this.mBadgeInfo.hasBadge());
        this.invalidate();
        this.requestLayout();
    }
    
    public void onDragEnter(final ItemInfo itemInfo) {
        if (this.mFolder.isDestroyed() || (this.willAcceptItem(itemInfo) ^ true)) {
            return;
        }
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)this.getLayoutParams();
        this.mBackground.animateToAccept((CellLayout)this.getParent().getParent(), cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY);
        this.mOpenAlarm.setOnAlarmListener(this.mOnOpenListener);
        if (itemInfo instanceof AppInfo || itemInfo instanceof ShortcutInfo || itemInfo instanceof PendingAddShortcutInfo) {
            this.mOpenAlarm.setAlarm(800L);
        }
    }
    
    public void onDragExit() {
        this.mBackground.animateToRest();
        this.mOpenAlarm.cancelAlarm();
    }
    
    public void onDrop(final DropTarget$DragObject dropTarget$DragObject) {
        ShortcutInfo shortcut;
        if (dropTarget$DragObject.dragInfo instanceof AppInfo) {
            shortcut = ((AppInfo)dropTarget$DragObject.dragInfo).makeShortcut();
        }
        else {
            shortcut = (ShortcutInfo)dropTarget$DragObject.dragInfo;
        }
        this.mFolder.notifyDrop();
        this.onDrop(shortcut, dropTarget$DragObject.dragView, null, 1.0f, this.mInfo.contents.size(), dropTarget$DragObject.postAnimationRunnable);
    }
    
    public void onFolderClose(final int n) {
        this.mPreviewItemManager.onFolderClose(n);
    }
    
    public void onItemsChanged(final boolean b) {
        this.mPreviewItemManager.updateItemDrawingParams(b);
        this.invalidate();
        this.requestLayout();
    }
    
    public void onRemove(final ShortcutInfo shortcutInfo) {
        final boolean hasBadge = this.mBadgeInfo.hasBadge();
        this.mBadgeInfo.subtractBadgeInfo(this.mLauncher.getPopupDataProvider().getBadgeInfoForItem(shortcutInfo));
        this.updateBadgeScale(hasBadge, this.mBadgeInfo.hasBadge());
        this.invalidate();
        this.requestLayout();
    }
    
    protected Parcelable onSaveInstanceState() {
        FolderIcon.sStaticValuesDirty = true;
        return super.onSaveInstanceState();
    }
    
    public void onTitleChanged(final CharSequence text) {
        this.mFolderName.setText(text);
        this.setContentDescription((CharSequence)this.getContext().getString(2131492942, new Object[] { text }));
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (this.mStylusEventHelper.onMotionEvent(motionEvent)) {
            this.mLongPressHelper.cancelLongPress();
            return true;
        }
        switch (motionEvent.getAction()) {
            case 0: {
                this.mLongPressHelper.postCheckForLongPress();
                break;
            }
            case 1:
            case 3: {
                this.mLongPressHelper.cancelLongPress();
                break;
            }
            case 2: {
                if (!Utilities.pointInView((View)this, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    break;
                }
                break;
            }
        }
        return onTouchEvent;
    }
    
    public void performCreateAnimation(final ShortcutInfo shortcutInfo, final View view, final ShortcutInfo shortcutInfo2, final DragView dragView, final Rect rect, final float n, final Runnable runnable) {
        this.prepareCreateAnimation(view);
        this.addItem(shortcutInfo);
        this.mPreviewItemManager.createFirstItemAnimation(false, null).start();
        this.onDrop(shortcutInfo2, dragView, rect, n, 1, runnable);
    }
    
    public void performDestroyAnimation(final Runnable runnable) {
        this.mPreviewItemManager.createFirstItemAnimation(true, runnable).start();
    }
    
    public void prepareAutoUpdate() {
    }
    
    public Drawable prepareCreateAnimation(final View view) {
        return this.mPreviewItemManager.prepareCreateAnimation(view);
    }
    
    public void removeItem(final ShortcutInfo shortcutInfo, final boolean b) {
        this.mInfo.remove(shortcutInfo, b);
    }
    
    public void removeListeners() {
        this.mInfo.removeListener(this);
        this.mInfo.removeListener(this.mFolder);
    }
    
    public void setBackgroundVisible(final boolean mBackgroundIsVisible) {
        this.mBackgroundIsVisible = mBackgroundIsVisible;
        this.invalidate();
    }
    
    public void setBadgeInfo(final FolderBadgeInfo mBadgeInfo) {
        this.updateBadgeScale(this.mBadgeInfo.hasBadge(), mBadgeInfo.hasBadge());
        this.mBadgeInfo = mBadgeInfo;
    }
    
    public void setFolderBackground(final PreviewBackground mBackground) {
        (this.mBackground = mBackground).setInvalidateDelegate((View)this);
    }
    
    public void setTextVisible(final boolean b) {
        if (b) {
            this.mFolderName.setVisibility(0);
        }
        else {
            this.mFolderName.setVisibility(4);
        }
    }
    
    public void shrinkAndFadeIn(final boolean b) {
        final float n = 1.0f;
        final PreviewImageView value = PreviewImageView.get(this.getContext());
        value.removeFromParent();
        this.copyToPreview(value);
        this.clearLeaveBehindIfExists();
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale((View)value, n, n, n);
        ofViewAlphaAndScale.setDuration((long)this.getResources().getInteger(2131558417));
        ofViewAlphaAndScale.addListener((Animator$AnimatorListener)new FolderIcon$4(this, value));
        ofViewAlphaAndScale.start();
        if (!b) {
            ofViewAlphaAndScale.end();
        }
    }
    
    protected boolean verifyDrawable(final Drawable drawable) {
        return this.mPreviewItemManager.verifyDrawable(drawable) || super.verifyDrawable(drawable);
    }
}
