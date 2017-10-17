// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.util.DisplayMetrics;
import android.graphics.Paint$Style;
import android.graphics.Path$Direction;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.graphics.Shader$TileMode;
import android.graphics.Matrix;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.PorterDuffXfermode;
import android.animation.Animator$AnimatorListener;
import android.view.MotionEvent;
import android.os.Parcelable;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.AppInfo;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.CellLayout$LayoutParams;
import com.android.launcher3.badge.BadgeInfo;
import android.graphics.Region$Op;
import android.graphics.Paint;
import com.android.launcher3.ItemInfo;
import java.util.List;
import android.widget.TextView;
import android.animation.ObjectAnimator;
import com.android.launcher3.Workspace;
import com.android.launcher3.dragndrop.DragLayer;
import android.view.animation.Interpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.ShortcutInfo;
import android.view.ViewConfiguration;
import com.android.launcher3.StylusEventHelper$StylusButtonListener;
import com.android.launcher3.SimpleOnStylusPressListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$AccessibilityDelegate;
import android.view.View$OnClickListener;
import android.widget.FrameLayout$LayoutParams;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.graphics.PorterDuff$Mode;
import android.graphics.Color;
import com.android.launcher3.FastBitmapDrawable;
import android.graphics.Canvas;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import android.view.View;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.config.FeatureFlags;
import android.graphics.Point;
import android.graphics.Rect;
import com.android.launcher3.StylusEventHelper;
import android.graphics.drawable.Drawable;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.BubbleTextView;
import java.util.ArrayList;
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
    FolderIcon$PreviewBackground mBackground;
    private FolderBadgeInfo mBadgeInfo;
    private BadgeRenderer mBadgeRenderer;
    private float mBadgeScale;
    private ArrayList mDrawingParams;
    Folder mFolder;
    BubbleTextView mFolderName;
    private FolderInfo mInfo;
    private int mIntrinsicIconSize;
    Launcher mLauncher;
    private CheckLongPressHelper mLongPressHelper;
    OnAlarmListener mOnOpenListener;
    private Alarm mOpenAlarm;
    private int mPrevTopPadding;
    private FolderIcon$PreviewLayoutRule mPreviewLayoutRule;
    private Drawable mReferenceDrawable;
    private float mSlop;
    private StylusEventHelper mStylusEventHelper;
    private Rect mTempBounds;
    private Point mTempSpaceForBadgeOffset;
    private FolderIcon$PreviewItemDrawingParams mTmpParams;
    private int mTotalWidth;
    
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
        final int mPrevTopPadding = -1;
        super(context);
        this.mIntrinsicIconSize = mPrevTopPadding;
        this.mTotalWidth = mPrevTopPadding;
        this.mPrevTopPadding = mPrevTopPadding;
        this.mBackground = new FolderIcon$PreviewBackground();
        this.mAnimating = false;
        this.mTempBounds = new Rect();
        this.mTmpParams = new FolderIcon$PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mDrawingParams = new ArrayList();
        this.mReferenceDrawable = null;
        this.mOpenAlarm = new Alarm();
        this.mBadgeInfo = new FolderBadgeInfo();
        this.mTempSpaceForBadgeOffset = new Point();
        this.mOnOpenListener = new FolderIcon$2(this);
        this.init();
    }
    
    public FolderIcon(final Context context, final AttributeSet set) {
        final int mPrevTopPadding = -1;
        super(context, set);
        this.mIntrinsicIconSize = mPrevTopPadding;
        this.mTotalWidth = mPrevTopPadding;
        this.mPrevTopPadding = mPrevTopPadding;
        this.mBackground = new FolderIcon$PreviewBackground();
        this.mAnimating = false;
        this.mTempBounds = new Rect();
        this.mTmpParams = new FolderIcon$PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f);
        this.mDrawingParams = new ArrayList();
        this.mReferenceDrawable = null;
        this.mOpenAlarm = new Alarm();
        this.mBadgeInfo = new FolderBadgeInfo();
        this.mTempSpaceForBadgeOffset = new Point();
        this.mOnOpenListener = new FolderIcon$2(this);
        this.init();
    }
    
    private void animateFirstItem(final Drawable drawable, final int n, final boolean b, final Runnable runnable) {
        FolderIcon$FolderPreviewItemAnim folderIcon$FolderPreviewItemAnim;
        if (!b) {
            folderIcon$FolderPreviewItemAnim = new FolderIcon$FolderPreviewItemAnim(this, this.mDrawingParams.get(0), -1, -1, 0, 2, n, runnable);
        }
        else {
            folderIcon$FolderPreviewItemAnim = new FolderIcon$FolderPreviewItemAnim(this, this.mDrawingParams.get(0), 0, 2, -1, -1, n, runnable);
        }
        folderIcon$FolderPreviewItemAnim.start();
    }
    
    private void computePreviewDrawingParams(final int mIntrinsicIconSize, final int mTotalWidth) {
        if (this.mIntrinsicIconSize != mIntrinsicIconSize || this.mTotalWidth != mTotalWidth || this.mPrevTopPadding != this.getPaddingTop()) {
            final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            this.mIntrinsicIconSize = mIntrinsicIconSize;
            this.mTotalWidth = mTotalWidth;
            this.mPrevTopPadding = this.getPaddingTop();
            this.mBackground.setup(this.getResources().getDisplayMetrics(), deviceProfile, (View)this, this.mTotalWidth, this.getPaddingTop());
            this.mPreviewLayoutRule.init(this.mBackground.previewSize, this.mIntrinsicIconSize, Utilities.isRtl(this.getResources()));
            this.updateItemDrawingParams(false);
        }
    }
    
    private void computePreviewDrawingParams(final Drawable drawable) {
        this.computePreviewDrawingParams(drawable.getIntrinsicWidth(), this.getMeasuredWidth());
    }
    
    private FolderIcon$PreviewItemDrawingParams computePreviewItemDrawingParams(final int n, final int n2, final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams) {
        if (n == -1) {
            return this.getFinalIconParams(folderIcon$PreviewItemDrawingParams);
        }
        return this.mPreviewLayoutRule.computePreviewItemDrawingParams(n, n2, folderIcon$PreviewItemDrawingParams);
    }
    
    private void copyToPreview(final PreviewImageView previewImageView) {
        previewImageView.copy((View)this);
        if (this.mFolder != null) {
            previewImageView.setPivotX(this.mFolder.getPivotXForIconAnimation());
            previewImageView.setPivotY(this.mFolder.getPivotYForIconAnimation());
            this.mFolder.bringToFront();
        }
    }
    
    private void drawPreviewItem(final Canvas canvas, final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams) {
        final int n = 255;
        canvas.save(1);
        canvas.translate(folderIcon$PreviewItemDrawingParams.transX, folderIcon$PreviewItemDrawingParams.transY);
        canvas.scale(folderIcon$PreviewItemDrawingParams.scale, folderIcon$PreviewItemDrawingParams.scale);
        final Drawable drawable = folderIcon$PreviewItemDrawingParams.drawable;
        if (drawable != null) {
            this.mTempBounds.set(drawable.getBounds());
            drawable.setBounds(0, 0, this.mIntrinsicIconSize, this.mIntrinsicIconSize);
            if (drawable instanceof FastBitmapDrawable) {
                ((FastBitmapDrawable)drawable).drawWithBrightness(canvas, folderIcon$PreviewItemDrawingParams.overlayAlpha);
            }
            else {
                drawable.setColorFilter(Color.argb((int)(folderIcon$PreviewItemDrawingParams.overlayAlpha * 255.0f), n, n, n), PorterDuff$Mode.SRC_ATOP);
                drawable.draw(canvas);
                drawable.clearColorFilter();
            }
            ((FastBitmapDrawable)drawable).setBounds(this.mTempBounds);
        }
        canvas.restore();
    }
    
    public static FolderIcon fromXml(final int n, final Launcher launcher, final ViewGroup viewGroup, final FolderInfo folderInfo) {
        final DeviceProfile deviceProfile = launcher.getDeviceProfile();
        final FolderIcon folderIcon = (FolderIcon)LayoutInflater.from((Context)launcher).inflate(n, viewGroup, false);
        folderIcon.setClipToPadding(false);
        (folderIcon.mFolderName = (BubbleTextView)folderIcon.findViewById(2131623999)).setText(folderInfo.title);
        folderIcon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout$LayoutParams)folderIcon.mFolderName.getLayoutParams()).topMargin = deviceProfile.iconDrawablePaddingPx + deviceProfile.iconSizePx;
        folderIcon.setTag((Object)folderInfo);
        folderIcon.setOnClickListener((View$OnClickListener)launcher);
        folderIcon.mInfo = folderInfo;
        folderIcon.mLauncher = launcher;
        folderIcon.mBadgeRenderer = launcher.getDeviceProfile().mBadgeRenderer;
        folderIcon.setContentDescription((CharSequence)launcher.getString(2131492940, new Object[] { folderInfo.title }));
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
    
    private FolderIcon$PreviewItemDrawingParams getFinalIconParams(final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams) {
        final float n = this.mLauncher.getDeviceProfile().iconSizePx;
        final float n2 = n / this.mReferenceDrawable.getIntrinsicWidth();
        final float n3 = (this.mBackground.previewSize - n) / 2.0f;
        folderIcon$PreviewItemDrawingParams.update(n3, n3, n2);
        return folderIcon$PreviewItemDrawingParams;
    }
    
    private float getLocalCenterForIndex(final int n, final int n2, final int[] array) {
        final float n3 = 2.0f;
        this.mTmpParams = this.computePreviewItemDrawingParams(Math.min(this.mPreviewLayoutRule.maxNumItems(), n), n2, this.mTmpParams);
        final FolderIcon$PreviewItemDrawingParams mTmpParams = this.mTmpParams;
        mTmpParams.transX += this.mBackground.basePreviewOffsetX;
        final FolderIcon$PreviewItemDrawingParams mTmpParams2 = this.mTmpParams;
        mTmpParams2.transY += this.mBackground.basePreviewOffsetY;
        final float n4 = this.mTmpParams.transX + this.mTmpParams.scale * this.mIntrinsicIconSize / n3;
        final float n5 = this.mTmpParams.transY + this.mTmpParams.scale * this.mIntrinsicIconSize / n3;
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
    }
    
    private void onDrop(final ShortcutInfo shortcutInfo, final DragView dragView, final Rect rect, float descendantRectRelativeToSelf, final int n, final Runnable runnable) {
        shortcutInfo.cellX = -1;
        shortcutInfo.cellY = -1;
        if (dragView != null) {
            final DragLayer dragLayer = this.mLauncher.getDragLayer();
            final Rect rect2 = new Rect();
            dragLayer.getViewRectRelativeToSelf(dragView, rect2);
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
            this.addItem(shortcutInfo);
            this.mFolder.hideItem(shortcutInfo);
            FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams;
            if (n < this.mDrawingParams.size()) {
                folderIcon$PreviewItemDrawingParams = this.mDrawingParams.get(n);
            }
            else {
                folderIcon$PreviewItemDrawingParams = null;
            }
            if (folderIcon$PreviewItemDrawingParams != null) {
                folderIcon$PreviewItemDrawingParams.hidden = true;
            }
            this.postDelayed((Runnable)new FolderIcon$3(this, folderIcon$PreviewItemDrawingParams, shortcutInfo), 400L);
        }
        else {
            this.addItem(shortcutInfo);
        }
    }
    
    private void setFolder(final Folder mFolder) {
        this.mFolder = mFolder;
        this.updateItemDrawingParams(false);
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
            ObjectAnimator.ofFloat((Object)this, FolderIcon.BADGE_SCALE_PROPERTY, new float[] { mBadgeScale }).start();
        }
        else {
            this.mBadgeScale = mBadgeScale;
            this.invalidate();
        }
    }
    
    private void updateItemDrawingParams(final boolean b) {
        final List itemsToDisplay = this.mPreviewLayoutRule.getItemsToDisplay(this.mFolder);
        final int i = itemsToDisplay.size();
        final int size = this.mDrawingParams.size();
        while (i < this.mDrawingParams.size()) {
            this.mDrawingParams.remove(this.mDrawingParams.size() - 1);
        }
        while (i > this.mDrawingParams.size()) {
            this.mDrawingParams.add(new FolderIcon$PreviewItemDrawingParams(0.0f, 0.0f, 0.0f, 0.0f));
        }
        for (int j = 0; j < this.mDrawingParams.size(); ++j) {
            final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams = this.mDrawingParams.get(j);
            folderIcon$PreviewItemDrawingParams.drawable = itemsToDisplay.get(j).getCompoundDrawables()[1];
            if (!b || FeatureFlags.LAUNCHER3_LEGACY_FOLDER_ICON) {
                this.computePreviewItemDrawingParams(j, i, folderIcon$PreviewItemDrawingParams);
                if (this.mReferenceDrawable == null) {
                    this.mReferenceDrawable = folderIcon$PreviewItemDrawingParams.drawable;
                }
            }
            else {
                final FolderIcon$FolderPreviewItemAnim anim = new FolderIcon$FolderPreviewItemAnim(this, folderIcon$PreviewItemDrawingParams, j, size, j, i, 400, null);
                if (folderIcon$PreviewItemDrawingParams.anim != null) {
                    if (folderIcon$PreviewItemDrawingParams.anim.hasEqualFinalState(anim)) {
                        continue;
                    }
                    folderIcon$PreviewItemDrawingParams.anim.cancel();
                }
                (folderIcon$PreviewItemDrawingParams.anim = anim).start();
            }
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
        this.mInfo.add(shortcutInfo, true);
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
    
    protected void dispatchDraw(final Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mReferenceDrawable != null) {
            this.computePreviewDrawingParams(this.mReferenceDrawable);
        }
        if (!this.mBackground.drawingDelegated()) {
            this.mBackground.drawBackground(canvas);
        }
        if (this.mFolder == null) {
            return;
        }
        if (this.mFolder.getItemCount() == 0 && (this.mAnimating ^ true)) {
            return;
        }
        int saveLayer;
        if (canvas.isHardwareAccelerated()) {
            saveLayer = canvas.saveLayer(0.0f, 0.0f, (float)this.getWidth(), (float)this.getHeight(), (Paint)null, 20);
        }
        else {
            final int save = canvas.save(2);
            if (this.mPreviewLayoutRule.clipToBackground()) {
                this.mBackground.clipCanvasSoftware(canvas, Region$Op.INTERSECT);
                saveLayer = save;
            }
            else {
                saveLayer = save;
            }
        }
        canvas.translate((float)this.mBackground.basePreviewOffsetX, (float)this.mBackground.basePreviewOffsetY);
        for (int i = this.mDrawingParams.size() - 1; i >= 0; --i) {
            final FolderIcon$PreviewItemDrawingParams folderIcon$PreviewItemDrawingParams = this.mDrawingParams.get(i);
            if (!folderIcon$PreviewItemDrawingParams.hidden) {
                this.drawPreviewItem(canvas, folderIcon$PreviewItemDrawingParams);
            }
        }
        canvas.translate((float)(-this.mBackground.basePreviewOffsetX), (float)(-this.mBackground.basePreviewOffsetY));
        if (this.mPreviewLayoutRule.clipToBackground() && canvas.isHardwareAccelerated()) {
            this.mBackground.clipCanvasHardware(canvas);
        }
        canvas.restoreToCount(saveLayer);
        if (this.mPreviewLayoutRule.clipToBackground() && (this.mBackground.drawingDelegated() ^ true)) {
            this.mBackground.drawBackgroundStroke(canvas);
        }
        if ((this.mBadgeInfo != null && this.mBadgeInfo.hasBadge()) || this.mBadgeScale > 0.0f) {
            final int offsetX = this.mBackground.getOffsetX();
            final int offsetY = this.mBackground.getOffsetY();
            final int n = (int)(this.mBackground.previewSize * this.mBackground.mScale);
            this.mTempBounds.set(offsetX, offsetY, offsetX + n, n + offsetY);
            final float max = Math.max(0.0f, this.mBadgeScale - this.mBackground.getScaleProgress());
            this.mTempSpaceForBadgeOffset.set(this.getWidth() - this.mTempBounds.right, this.mTempBounds.top);
            this.mBadgeRenderer.draw(canvas, this.mBadgeInfo, this.mTempBounds, max, this.mTempSpaceForBadgeOffset);
        }
    }
    
    public Folder getFolder() {
        return this.mFolder;
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
        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)this.getLayoutParams();
        cellLayout$LayoutParams.canReorder = false;
        if (this.mInfo.container == -101) {
            ((CellLayout)this.getParent().getParent()).setFolderLeaveBehindCell(cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY);
        }
        final PreviewImageView value = PreviewImageView.get(this.getContext());
        this.copyToPreview(value);
        this.setVisibility(4);
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale((View)value, 0.0f, n, n);
        ofViewAlphaAndScale.setDuration((long)this.getResources().getInteger(2131558417));
        ofViewAlphaAndScale.start();
    }
    
    public void onAdd(final ShortcutInfo shortcutInfo) {
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
        if (itemInfo instanceof AppInfo || itemInfo instanceof ShortcutInfo) {
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
    
    public void onItemsChanged(final boolean b) {
        this.updateItemDrawingParams(b);
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
        this.setContentDescription((CharSequence)this.getContext().getString(2131492940, new Object[] { text }));
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
        final Drawable prepareCreate = this.prepareCreate(view);
        this.mReferenceDrawable = prepareCreate;
        this.addItem(shortcutInfo);
        this.animateFirstItem(prepareCreate, 350, false, null);
        this.onDrop(shortcutInfo2, dragView, rect, n, 1, runnable);
    }
    
    public void performDestroyAnimation(final View view, final Runnable runnable) {
        final int n = 1;
        final Drawable drawable = ((TextView)view).getCompoundDrawables()[n];
        this.computePreviewDrawingParams(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        this.animateFirstItem(drawable, 200, n != 0, runnable);
    }
    
    public void prepareAutoUpdate() {
    }
    
    public Drawable prepareCreate(final View view) {
        final Drawable drawable = ((TextView)view).getCompoundDrawables()[1];
        this.computePreviewDrawingParams(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        return drawable;
    }
    
    public void removeListeners() {
        this.mInfo.removeListener(this);
        this.mInfo.removeListener(this.mFolder);
    }
    
    public void setBadgeInfo(final FolderBadgeInfo mBadgeInfo) {
        this.updateBadgeScale(this.mBadgeInfo.hasBadge(), mBadgeInfo.hasBadge());
        this.mBadgeInfo = mBadgeInfo;
    }
    
    public void setFolderBackground(final FolderIcon$PreviewBackground mBackground) {
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
        final CellLayout cellLayout = (CellLayout)this.getParent().getParent();
        ((CellLayout$LayoutParams)this.getLayoutParams()).canReorder = true;
        final PreviewImageView value = PreviewImageView.get(this.getContext());
        value.removeFromParent();
        this.copyToPreview(value);
        if (cellLayout != null) {
            cellLayout.clearFolderLeaveBehind();
        }
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale((View)value, n, n, n);
        ofViewAlphaAndScale.setDuration((long)this.getResources().getInteger(2131558417));
        ofViewAlphaAndScale.addListener((Animator$AnimatorListener)new FolderIcon$4(this, cellLayout, value));
        ofViewAlphaAndScale.start();
        if (!b) {
            ofViewAlphaAndScale.end();
        }
    }
}
