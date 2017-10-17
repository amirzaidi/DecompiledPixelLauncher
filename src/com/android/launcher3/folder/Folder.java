// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.view.View$OnKeyListener;
import android.view.View$MeasureSpec;
import android.view.ActionMode$Callback;
import android.view.KeyEvent;
import android.widget.TextView;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import android.text.Spannable;
import android.text.Selection;
import com.android.launcher3.Utilities;
import android.view.FocusFinder;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.accessibility.AccessibilityEvent;
import java.util.Iterator;
import android.view.ViewGroup$LayoutParams;
import java.util.List;
import java.util.Collections;
import android.animation.ValueAnimator;
import android.util.Property;
import android.animation.AnimatorSet;
import android.animation.Animator;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.util.CircleRevealOutlineProvider;
import android.animation.TimeInterpolator;
import com.android.launcher3.LogDecelerateInterpolator;
import android.animation.PropertyValuesHolder;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Workspace$ItemOperator;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.DropTarget$DragObject;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.LauncherAnimUtils;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Alarm;
import com.android.launcher3.Launcher;
import java.util.ArrayList;
import com.android.launcher3.FolderInfo;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.dragndrop.DragController;
import android.view.View;
import android.graphics.Rect;
import java.util.Comparator;
import com.android.launcher3.ExtendedEditText$OnBackKeyListener;
import com.android.launcher3.UninstallDropTarget$DropTargetSource;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnFocusChangeListener;
import android.widget.TextView$OnEditorActionListener;
import com.android.launcher3.FolderInfo$FolderListener;
import com.android.launcher3.DropTarget;
import android.view.View$OnLongClickListener;
import android.view.View$OnClickListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.AbstractFloatingView;

public class Folder extends AbstractFloatingView implements DragSource, View$OnClickListener, View$OnLongClickListener, DropTarget, FolderInfo$FolderListener, TextView$OnEditorActionListener, View$OnFocusChangeListener, DragController$DragListener, UninstallDropTarget$DropTargetSource, ExtendedEditText$OnBackKeyListener
{
    public static final Comparator ITEM_POS_COMPARATOR;
    private static String sDefaultFolderName;
    private static String sHintText;
    private static final Rect sTempRect;
    FolderPagedView mContent;
    private View mCurrentDragView;
    int mCurrentScrollDir;
    private boolean mDeferDropAfterUninstall;
    Runnable mDeferredAction;
    private boolean mDeleteFolderOnDropCompleted;
    private boolean mDestroyed;
    protected DragController mDragController;
    private boolean mDragInProgress;
    int mEmptyCellRank;
    private final int mExpandDuration;
    FolderIcon mFolderIcon;
    float mFolderIconPivotX;
    float mFolderIconPivotY;
    public ExtendedEditText mFolderName;
    private View mFooter;
    private int mFooterHeight;
    public FolderInfo mInfo;
    private boolean mIsEditingName;
    private boolean mIsExternalDrag;
    private boolean mItemAddedBackToSelfViaIcon;
    final ArrayList mItemsInReadingOrder;
    boolean mItemsInvalidated;
    protected final Launcher mLauncher;
    private final int mMaterialExpandDuration;
    private final int mMaterialExpandStagger;
    private final Alarm mOnExitAlarm;
    OnAlarmListener mOnExitAlarmListener;
    private final Alarm mOnScrollHintAlarm;
    private PageIndicatorDots mPageIndicator;
    int mPrevTargetRank;
    private boolean mRearrangeOnClose;
    private final Alarm mReorderAlarm;
    OnAlarmListener mReorderAlarmListener;
    private int mScrollAreaOffset;
    int mScrollHintDir;
    final Alarm mScrollPauseAlarm;
    int mState;
    private boolean mSuppressFolderDeletion;
    int mTargetRank;
    private boolean mUninstallSuccessful;
    
    static {
        sTempRect = new Rect();
        ITEM_POS_COMPARATOR = new Folder$3();
    }
    
    public Folder(final Context context, final AttributeSet set) {
        final int mCurrentScrollDir = -1;
        super(context, set);
        this.mReorderAlarm = new Alarm();
        this.mOnExitAlarm = new Alarm();
        this.mOnScrollHintAlarm = new Alarm();
        this.mScrollPauseAlarm = new Alarm();
        this.mItemsInReadingOrder = new ArrayList();
        this.mState = mCurrentScrollDir;
        this.mRearrangeOnClose = false;
        this.mItemsInvalidated = false;
        this.mDragInProgress = false;
        this.mDeleteFolderOnDropCompleted = false;
        this.mSuppressFolderDeletion = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mIsEditingName = false;
        this.mScrollHintDir = mCurrentScrollDir;
        this.mCurrentScrollDir = mCurrentScrollDir;
        this.mReorderAlarmListener = new Folder$1(this);
        this.mOnExitAlarmListener = new Folder$2(this);
        this.setAlwaysDrawnWithCacheEnabled(false);
        final Resources resources = this.getResources();
        this.mExpandDuration = resources.getInteger(2131558417);
        this.mMaterialExpandDuration = resources.getInteger(2131558418);
        this.mMaterialExpandStagger = resources.getInteger(2131558419);
        if (Folder.sDefaultFolderName == null) {
            Folder.sDefaultFolderName = resources.getString(2131492893);
        }
        if (Folder.sHintText == null) {
            Folder.sHintText = resources.getString(2131492930);
        }
        this.mLauncher = Launcher.getLauncher(context);
        this.setFocusableInTouchMode(true);
    }
    
    private void animateClosed() {
        final float n = 0.9f;
        final ObjectAnimator ofViewAlphaAndScale = LauncherAnimUtils.ofViewAlphaAndScale((View)this, 0.0f, n, n);
        ofViewAlphaAndScale.addListener((Animator$AnimatorListener)new Folder$11(this));
        ofViewAlphaAndScale.setDuration((long)this.mExpandDuration);
        this.setLayerType(2, (Paint)null);
        ofViewAlphaAndScale.start();
    }
    
    private void centerAboutIcon() {
        final float n = 1.0f;
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)this.getLayoutParams();
        final DragLayer dragLayer = (DragLayer)this.mLauncher.findViewById(2131624002);
        final int folderWidth = this.getFolderWidth();
        final int folderHeight = this.getFolderHeight();
        dragLayer.getDescendantRectRelativeToSelf((View)this.mFolderIcon, Folder.sTempRect);
        final int centerX = Folder.sTempRect.centerX();
        final int centerY = Folder.sTempRect.centerY();
        final int n2 = centerX - folderWidth / 2;
        final int n3 = centerY - folderHeight / 2;
        this.mLauncher.getWorkspace().getPageAreaRelativeToDragLayer(Folder.sTempRect);
        int min = Math.min(Math.max(Folder.sTempRect.left, n2), Folder.sTempRect.right - folderWidth);
        final int min2 = Math.min(Math.max(Folder.sTempRect.top, n3), Folder.sTempRect.bottom - folderHeight);
        final int n4 = this.mLauncher.getWorkspace().getPaddingLeft() + this.getPaddingLeft();
        if (deviceProfile.isPhone && deviceProfile.availableWidthPx - folderWidth < n4 * 4) {
            min = (deviceProfile.availableWidthPx - folderWidth) / 2;
        }
        else if (folderWidth >= Folder.sTempRect.width()) {
            min = Folder.sTempRect.left + (Folder.sTempRect.width() - folderWidth) / 2;
        }
        int max;
        int max2;
        if (folderHeight >= Folder.sTempRect.height()) {
            final int n5 = Folder.sTempRect.top + (Folder.sTempRect.height() - folderHeight) / 2;
            max = min;
            max2 = n5;
        }
        else {
            final Rect absoluteOpenFolderBounds = deviceProfile.getAbsoluteOpenFolderBounds();
            max = Math.max(absoluteOpenFolderBounds.left, Math.min(min, absoluteOpenFolderBounds.right - folderWidth));
            max2 = Math.max(absoluteOpenFolderBounds.top, Math.min(min2, absoluteOpenFolderBounds.bottom - folderHeight));
        }
        final int n6 = n2 - max + folderWidth / 2;
        final int n7 = n3 - max2 + folderHeight / 2;
        this.setPivotX((float)n6);
        this.setPivotY((float)n7);
        this.mFolderIconPivotX = (int)(n6 * n / folderWidth * this.mFolderIcon.getMeasuredWidth());
        this.mFolderIconPivotY = (int)(n7 * n / folderHeight * this.mFolderIcon.getMeasuredHeight());
        dragLayer$LayoutParams.width = folderWidth;
        dragLayer$LayoutParams.height = folderHeight;
        dragLayer$LayoutParams.x = max;
        dragLayer$LayoutParams.y = max2;
    }
    
    private void clearDragInfo() {
        this.mCurrentDragView = null;
        this.mIsExternalDrag = false;
    }
    
    private void closeComplete(final boolean b) {
        final int mDeleteFolderOnDropCompleted = 1;
        final DragLayer dragLayer = (DragLayer)this.getParent();
        if (dragLayer != null) {
            dragLayer.removeView((View)this);
        }
        this.mDragController.removeDropTarget(this);
        this.clearFocus();
        if (b) {
            this.mFolderIcon.requestFocus();
        }
        if (this.mRearrangeOnClose) {
            this.rearrangeChildren();
            this.mRearrangeOnClose = false;
        }
        if (this.getItemCount() <= mDeleteFolderOnDropCompleted) {
            if (!this.mDragInProgress && (this.mSuppressFolderDeletion ^ true)) {
                this.replaceFolderWithFinalItem();
            }
            else if (this.mDragInProgress) {
                this.mDeleteFolderOnDropCompleted = (mDeleteFolderOnDropCompleted != 0);
            }
        }
        this.mSuppressFolderDeletion = false;
        this.clearDragInfo();
        this.mState = 0;
    }
    
    static Folder fromXml(final Launcher launcher) {
        final LayoutInflater layoutInflater = launcher.getLayoutInflater();
        int n;
        if (FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION) {
            n = 2130968623;
        }
        else {
            n = 2130968624;
        }
        return (Folder)layoutInflater.inflate(n, (ViewGroup)null);
    }
    
    private int getContentAreaHeight() {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        return Math.max(Math.min(deviceProfile.availableHeightPx - deviceProfile.getTotalWorkspacePadding().y - this.mFooterHeight, this.mContent.getDesiredHeight()), 5);
    }
    
    private int getContentAreaWidth() {
        return Math.max(this.mContent.getDesiredWidth(), 5);
    }
    
    private int getFolderHeight() {
        return this.getFolderHeight(this.getContentAreaHeight());
    }
    
    private int getFolderHeight(final int n) {
        return this.getPaddingTop() + this.getPaddingBottom() + n + this.mFooterHeight;
    }
    
    private int getFolderWidth() {
        return this.getPaddingLeft() + this.getPaddingRight() + this.mContent.getDesiredWidth();
    }
    
    public static Folder getOpen(final Launcher launcher) {
        return (Folder)AbstractFloatingView.getOpenView(launcher, 1);
    }
    
    private int getTargetRank(final DropTarget$DragObject dropTarget$DragObject, final float[] array) {
        final float[] visualCenter = dropTarget$DragObject.getVisualCenter(array);
        return this.mContent.findNearestArea((int)visualCenter[0] - this.getPaddingLeft(), (int)visualCenter[1] - this.getPaddingTop());
    }
    
    private View getViewForInfo(final ShortcutInfo shortcutInfo) {
        return this.mContent.iterateOverItems(new Folder$16(this, shortcutInfo));
    }
    
    private void prepareReveal() {
        final float alpha = 1.0f;
        this.setScaleX(alpha);
        this.setScaleY(alpha);
        this.setAlpha(alpha);
        this.mState = 0;
    }
    
    private void showScrollHint(final int n, final DropTarget$DragObject dropTarget$DragObject) {
        if (this.mScrollHintDir != n) {
            this.mContent.showScrollHint(n);
            this.mScrollHintDir = n;
        }
        if (!this.mOnScrollHintAlarm.alarmPending() || this.mCurrentScrollDir != n) {
            this.mCurrentScrollDir = n;
            this.mOnScrollHintAlarm.cancelAlarm();
            this.mOnScrollHintAlarm.setOnAlarmListener(new Folder$OnScrollHintListener(this, dropTarget$DragObject));
            this.mOnScrollHintAlarm.setAlarm(500L);
            this.mReorderAlarm.cancelAlarm();
            this.mTargetRank = this.mEmptyCellRank;
        }
    }
    
    private void updateItemLocationsInDatabaseBatch() {
        final ArrayList itemsInReadingOrder = this.getItemsInReadingOrder();
        final ArrayList<ItemInfo> list = new ArrayList<ItemInfo>();
        for (int i = 0; i < itemsInReadingOrder.size(); ++i) {
            final ItemInfo itemInfo = (ItemInfo)itemsInReadingOrder.get(i).getTag();
            itemInfo.rank = i;
            list.add(itemInfo);
        }
        this.mLauncher.getModelWriter().moveItemsInDatabase(list, this.mInfo.id, 0);
    }
    
    public boolean acceptDrop(final DropTarget$DragObject dropTarget$DragObject) {
        boolean b = false;
        final int itemType = dropTarget$DragObject.dragInfo.itemType;
        if (itemType == 0 || itemType == 1 || itemType == 6) {
            b = (this.isFull() ^ true);
        }
        return b;
    }
    
    public void animateOpen() {
        final int mIsOpen = 1;
        final int n = 2;
        final Folder open = getOpen(this.mLauncher);
        if (open != null && open != this) {
            open.close(mIsOpen != 0);
        }
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        if (this.getParent() == null) {
            dragLayer.addView((View)this);
            this.mDragController.addDropTarget(this);
        }
        this.mIsOpen = (mIsOpen != 0);
        this.mContent.completePendingPageChanges();
        if (!this.mDragInProgress) {
            this.mContent.snapToPageImmediately(0);
        }
        this.mDeleteFolderOnDropCompleted = false;
        this.prepareReveal();
        this.centerAboutIcon();
        this.mFolderIcon.growAndFadeOut();
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final int folderWidth = this.getFolderWidth();
        final int folderHeight = this.getFolderHeight();
        final float translationX = (folderWidth / 2 - this.getPivotX()) * -0.075f;
        final float translationY = (folderHeight / 2 - this.getPivotY()) * -0.075f;
        this.setTranslationX(translationX);
        this.setTranslationY(translationY);
        final Property translation_X = Folder.TRANSLATION_X;
        final float[] array = new float[n];
        array[0] = translationX;
        array[mIsOpen] = 0.0f;
        final PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat(translation_X, array);
        final Property translation_Y = Folder.TRANSLATION_Y;
        final float[] array2 = new float[n];
        array2[0] = translationY;
        array2[mIsOpen] = 0.0f;
        final PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat(translation_Y, array2);
        final PropertyValuesHolder[] array3 = new PropertyValuesHolder[n];
        array3[0] = ofFloat;
        array3[mIsOpen] = ofFloat2;
        final ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder((Object)this, array3);
        ((Animator)ofPropertyValuesHolder).setDuration((long)this.mMaterialExpandDuration);
        ((Animator)ofPropertyValuesHolder).setStartDelay((long)this.mMaterialExpandStagger);
        ((Animator)ofPropertyValuesHolder).setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
        final ValueAnimator revealAnimator = new CircleRevealOutlineProvider((int)this.getPivotX(), (int)this.getPivotY(), 0.0f, (float)Math.hypot((int)Math.max(Math.max(folderWidth - this.getPivotX(), 0.0f), this.getPivotX()), (int)Math.max(Math.max(folderHeight - this.getPivotY(), 0.0f), this.getPivotY()))).createRevealAnimator((View)this);
        ((Animator)revealAnimator).setDuration((long)this.mMaterialExpandDuration);
        ((Animator)revealAnimator).setInterpolator((TimeInterpolator)new LogDecelerateInterpolator(100, 0));
        this.mContent.setAlpha(0.0f);
        final FolderPagedView mContent = this.mContent;
        final float[] array5;
        final float[] array4 = array5 = new float[n];
        array5[0] = 0.0f;
        array5[1] = 1.0f;
        final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object)mContent, "alpha", array4);
        ((Animator)ofFloat3).setDuration((long)this.mMaterialExpandDuration);
        ((Animator)ofFloat3).setStartDelay((long)this.mMaterialExpandStagger);
        ((Animator)ofFloat3).setInterpolator((TimeInterpolator)new AccelerateInterpolator(1.5f));
        this.mFooter.setAlpha(0.0f);
        final View mFooter = this.mFooter;
        final float[] array7;
        final float[] array6 = array7 = new float[n];
        array7[0] = 0.0f;
        array7[1] = 1.0f;
        final ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat((Object)mFooter, "alpha", array6);
        ((Animator)ofFloat4).setDuration((long)this.mMaterialExpandDuration);
        ((Animator)ofFloat4).setStartDelay((long)this.mMaterialExpandStagger);
        ((Animator)ofFloat4).setInterpolator((TimeInterpolator)new AccelerateInterpolator(1.5f));
        animatorSet.play((Animator)ofPropertyValuesHolder);
        animatorSet.play((Animator)ofFloat3);
        animatorSet.play((Animator)ofFloat4);
        animatorSet.play((Animator)revealAnimator);
        this.mContent.setLayerType(n, (Paint)null);
        this.mFooter.setLayerType(n, (Paint)null);
        animatorSet.addListener((Animator$AnimatorListener)new Folder$9(this, new Folder$8(this)));
        if (this.mContent.getPageCount() > mIsOpen && (this.mInfo.hasOption(4) ^ true)) {
            float translationX2 = (this.mContent.getDesiredWidth() - this.mFooter.getPaddingLeft() - this.mFooter.getPaddingRight() - this.mFolderName.getPaint().measureText(this.mFolderName.getText().toString())) / 2.0f;
            final ExtendedEditText mFolderName = this.mFolderName;
            if (this.mContent.mIsRtl) {
                translationX2 = -translationX2;
            }
            mFolderName.setTranslationX(translationX2);
            this.mPageIndicator.prepareEntryAnimation();
            animatorSet.addListener((Animator$AnimatorListener)new Folder$10(this, this.mDragInProgress ^ true));
        }
        else {
            this.mFolderName.setTranslationX(0.0f);
        }
        this.mPageIndicator.stopAllAnimations();
        animatorSet.start();
        if (this.mDragController.isDragging()) {
            this.mDragController.forceTouchMove();
        }
        this.mContent.verifyVisibleHighResIcons(this.mContent.getNextPage());
        this.sendAccessibilityEvent(32);
        dragLayer.sendAccessibilityEvent(2048);
    }
    
    public void beginExternalDrag() {
        final boolean b = true;
        this.mEmptyCellRank = this.mContent.allocateRankForNewItem();
        this.mIsExternalDrag = b;
        this.mDragInProgress = b;
        this.mDragController.addDragListener(this);
    }
    
    void bind(final FolderInfo mInfo) {
        final boolean b = true;
        this.mInfo = mInfo;
        final ArrayList contents = mInfo.contents;
        Collections.sort((List<Object>)contents, Folder.ITEM_POS_COMPARATOR);
        for (final ShortcutInfo shortcutInfo : this.mContent.bindItems(contents)) {
            this.mInfo.remove(shortcutInfo, false);
            this.mLauncher.getModelWriter().deleteItemFromDatabase(shortcutInfo);
        }
        if (this.getLayoutParams() == null) {
            final DragLayer$LayoutParams layoutParams = new DragLayer$LayoutParams(0, 0);
            layoutParams.customPosition = b;
            this.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        }
        this.centerAboutIcon();
        this.mItemsInvalidated = b;
        this.updateTextViewFocus();
        this.mInfo.addListener(this);
        if (!Folder.sDefaultFolderName.contentEquals(this.mInfo.title)) {
            this.mFolderName.setText(this.mInfo.title);
        }
        else {
            this.mFolderName.setText((CharSequence)"");
        }
        this.mFolderIcon.post((Runnable)new Folder$7(this));
    }
    
    public void completeDragExit() {
        final boolean b = true;
        if (this.mIsOpen) {
            this.close(b);
            this.mRearrangeOnClose = b;
        }
        else if (this.mState == (b ? 1 : 0)) {
            this.mRearrangeOnClose = b;
        }
        else {
            this.rearrangeChildren();
            this.clearDragInfo();
        }
    }
    
    public void deferCompleteDropAfterUninstallActivity() {
        this.mDeferDropAfterUninstall = true;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        return true;
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        launcherLogProto$Target.pageIndex = this.mContent.getCurrentPage();
        launcherLogProto$Target2.containerType = 3;
    }
    
    public View focusSearch(final int n) {
        return FocusFinder.getInstance().findNextFocus((ViewGroup)this, (View)null, n);
    }
    
    public ExtendedEditText getActiveTextView() {
        ExtendedEditText mFolderName;
        if (this.isEditingName()) {
            mFolderName = this.mFolderName;
        }
        else {
            mFolderName = null;
        }
        return mFolderName;
    }
    
    public FolderIcon getFolderIcon() {
        return this.mFolderIcon;
    }
    
    public void getHitRectRelativeToDragLayer(final Rect rect) {
        this.getHitRect(rect);
        rect.left -= this.mScrollAreaOffset;
        rect.right += this.mScrollAreaOffset;
    }
    
    public FolderInfo getInfo() {
        return this.mInfo;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return 1.0f;
    }
    
    public int getItemCount() {
        return this.mContent.getItemCount();
    }
    
    public ArrayList getItemsInReadingOrder() {
        if (this.mItemsInvalidated) {
            this.mItemsInReadingOrder.clear();
            this.mContent.iterateOverItems(new Folder$17(this));
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }
    
    public int getLogContainerType() {
        return 3;
    }
    
    public float getPivotXForIconAnimation() {
        return this.mFolderIconPivotX;
    }
    
    public float getPivotYForIconAnimation() {
        return this.mFolderIconPivotY;
    }
    
    protected void handleClose(final boolean b) {
        this.mIsOpen = false;
        if (this.isEditingName()) {
            this.mFolderName.dispatchBackKey();
        }
        if (this.mFolderIcon != null) {
            this.mFolderIcon.shrinkAndFadeIn(b);
        }
        if (!(this.getParent() instanceof DragLayer)) {
            return;
        }
        final DragLayer dragLayer = (DragLayer)this.getParent();
        if (b) {
            this.animateClosed();
        }
        else {
            this.closeComplete(false);
        }
        dragLayer.sendAccessibilityEvent(32);
    }
    
    public void hideItem(final ShortcutInfo shortcutInfo) {
        this.getViewForInfo(shortcutInfo).setVisibility(4);
    }
    
    public boolean isDestroyed() {
        return this.mDestroyed;
    }
    
    public boolean isDropEnabled() {
        return true;
    }
    
    public boolean isEditingName() {
        return this.mIsEditingName;
    }
    
    public boolean isFull() {
        return this.mContent.isFull();
    }
    
    public boolean isLayoutRtl() {
        boolean b = true;
        if (this.getLayoutDirection() != (b ? 1 : 0)) {
            b = false;
        }
        return b;
    }
    
    protected boolean isOfType(final int n) {
        boolean b = false;
        if ((n & 0x1) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public void notifyDrop() {
        if (this.mDragInProgress) {
            this.mItemAddedBackToSelfViaIcon = true;
        }
    }
    
    public void onAdd(final ShortcutInfo shortcutInfo) {
        this.mContent.createAndAddViewForRank(shortcutInfo, this.mContent.allocateRankForNewItem());
        this.mItemsInvalidated = true;
        this.mLauncher.getModelWriter().addOrMoveItemInDatabase(shortcutInfo, this.mInfo.id, 0L, shortcutInfo.cellX, shortcutInfo.cellY);
    }
    
    protected void onAttachedToWindow() {
        this.requestFocus();
        super.onAttachedToWindow();
    }
    
    public boolean onBackKey() {
        final int n = 1;
        this.mFolderName.setHint((CharSequence)Folder.sHintText);
        final String string = this.mFolderName.getText().toString();
        this.mInfo.setTitle(string);
        this.mLauncher.getModelWriter().updateItemInDatabase(this.mInfo);
        final Context context = this.getContext();
        final Object[] array = new Object[n];
        array[0] = string;
        Utilities.sendCustomAccessibilityEvent((View)this, 32, context.getString(2131492939, array));
        this.mFolderName.clearFocus();
        Selection.setSelection((Spannable)this.mFolderName.getText(), 0, 0);
        this.mIsEditingName = false;
        return n != 0;
    }
    
    public void onClick(final View view) {
        if (view.getTag() instanceof ShortcutInfo) {
            this.mLauncher.onClick(view);
        }
    }
    
    public void onDragEnd() {
        if (this.mIsExternalDrag && this.mDragInProgress) {
            this.completeDragExit();
        }
        this.mDragController.removeDragListener(this);
    }
    
    public void onDragEnter(final DropTarget$DragObject dropTarget$DragObject) {
        this.mPrevTargetRank = -1;
        this.mOnExitAlarm.cancelAlarm();
        this.mScrollAreaOffset = dropTarget$DragObject.dragView.getDragRegionWidth() / 2 - dropTarget$DragObject.xOffset;
    }
    
    public void onDragExit(final DropTarget$DragObject dropTarget$DragObject) {
        final int mScrollHintDir = -1;
        if (!dropTarget$DragObject.dragComplete) {
            this.mOnExitAlarm.setOnAlarmListener(this.mOnExitAlarmListener);
            this.mOnExitAlarm.setAlarm(400L);
        }
        this.mReorderAlarm.cancelAlarm();
        this.mOnScrollHintAlarm.cancelAlarm();
        this.mScrollPauseAlarm.cancelAlarm();
        if (this.mScrollHintDir != mScrollHintDir) {
            this.mContent.clearScrollHint();
            this.mScrollHintDir = mScrollHintDir;
        }
    }
    
    public void onDragObjectRemoved(final boolean mUninstallSuccessful) {
        this.mDeferDropAfterUninstall = false;
        this.mUninstallSuccessful = mUninstallSuccessful;
        if (this.mDeferredAction != null) {
            this.mDeferredAction.run();
        }
    }
    
    public void onDragOver(final DropTarget$DragObject dropTarget$DragObject) {
        this.onDragOver(dropTarget$DragObject, 250);
    }
    
    void onDragOver(final DropTarget$DragObject dropTarget$DragObject, final int n) {
        final int mScrollHintDir = -1;
        final int n2 = 1;
        if (this.mScrollPauseAlarm.alarmPending()) {
            return;
        }
        final float[] array = new float[2];
        this.mTargetRank = this.getTargetRank(dropTarget$DragObject, array);
        if (this.mTargetRank != this.mPrevTargetRank) {
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarm.setOnAlarmListener(this.mReorderAlarmListener);
            this.mReorderAlarm.setAlarm(250L);
            this.mPrevTargetRank = this.mTargetRank;
            if (dropTarget$DragObject.stateAnnouncer != null) {
                final DragViewStateAnnouncer stateAnnouncer = dropTarget$DragObject.stateAnnouncer;
                final Context context = this.getContext();
                final Object[] array2 = new Object[n2];
                array2[0] = this.mTargetRank + 1;
                stateAnnouncer.announce(context.getString(2131492971, array2));
            }
        }
        final float n3 = array[0];
        final int nextPage = this.mContent.getNextPage();
        final float n4 = 0.45f * this.mContent.getCurrentCellLayout().getCellWidth();
        int n5;
        if (n3 < n4) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        int n6;
        if (n3 > this.getWidth() - n4) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        Label_0393: {
            if (nextPage <= 0) {
                break Label_0393;
            }
            int n7;
            if (this.mContent.mIsRtl) {
                n7 = n6;
            }
            else {
                n7 = n5;
            }
            if (n7 == 0) {
                break Label_0393;
            }
            this.showScrollHint(0, dropTarget$DragObject);
            return;
        }
        if (nextPage < this.mContent.getPageCount() - 1) {
            if (!this.mContent.mIsRtl) {
                n5 = n6;
            }
            if (n5 != 0) {
                this.showScrollHint(n2, dropTarget$DragObject);
                return;
            }
        }
        this.mOnScrollHintAlarm.cancelAlarm();
        if (this.mScrollHintDir != mScrollHintDir) {
            this.mContent.clearScrollHint();
            this.mScrollHintDir = mScrollHintDir;
        }
    }
    
    public void onDragStart(final DropTarget$DragObject p0, final DragOptions p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_3       
        //     2: aconst_null    
        //     3: astore          4
        //     5: aload_1        
        //     6: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //     9: astore          5
        //    11: aload           5
        //    13: aload_0        
        //    14: if_acmpeq       18
        //    17: return         
        //    18: aload_0        
        //    19: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //    22: astore          5
        //    24: aload_0        
        //    25: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //    28: astore          6
        //    30: aload           5
        //    32: aload           6
        //    34: invokevirtual   com/android/launcher3/folder/FolderPagedView.removeItem:(Landroid/view/View;)V
        //    37: aload_1        
        //    38: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //    41: astore          5
        //    43: aload           5
        //    45: instanceof      Lcom/android/launcher3/ShortcutInfo;
        //    48: istore          7
        //    50: iload           7
        //    52: ifeq            195
        //    55: aload_0        
        //    56: iload_3        
        //    57: putfield        com/android/launcher3/folder/Folder.mItemsInvalidated:Z
        //    60: new             Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
        //    63: astore          6
        //    65: aload           6
        //    67: aload_0        
        //    68: invokespecial   com/android/launcher3/folder/Folder$SuppressInfoChanges.<init>:(Lcom/android/launcher3/folder/Folder;)V
        //    71: aload_0        
        //    72: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //    75: astore          8
        //    77: aload_1        
        //    78: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //    81: astore          5
        //    83: aload           5
        //    85: checkcast       Lcom/android/launcher3/ShortcutInfo;
        //    88: astore          5
        //    90: iconst_1       
        //    91: istore          9
        //    93: aload           8
        //    95: aload           5
        //    97: iload           9
        //    99: invokevirtual   com/android/launcher3/FolderInfo.remove:(Lcom/android/launcher3/ShortcutInfo;Z)V
        //   102: aload           6
        //   104: ifnull          112
        //   107: aload           6
        //   109: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   112: aload           4
        //   114: ifnull          195
        //   117: aload           4
        //   119: athrow         
        //   120: astore          4
        //   122: goto            112
        //   125: astore          5
        //   127: aconst_null    
        //   128: astore          6
        //   130: aload           5
        //   132: athrow         
        //   133: astore          10
        //   135: aload           5
        //   137: astore          4
        //   139: aload           10
        //   141: astore          5
        //   143: aload           6
        //   145: ifnull          153
        //   148: aload           6
        //   150: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   153: aload           4
        //   155: ifnull          192
        //   158: aload           4
        //   160: athrow         
        //   161: astore          6
        //   163: aload           4
        //   165: ifnonnull       175
        //   168: aload           6
        //   170: astore          4
        //   172: goto            153
        //   175: aload           4
        //   177: aload           6
        //   179: if_acmpeq       153
        //   182: aload           4
        //   184: aload           6
        //   186: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   189: goto            153
        //   192: aload           5
        //   194: athrow         
        //   195: aload_0        
        //   196: iload_3        
        //   197: putfield        com/android/launcher3/folder/Folder.mDragInProgress:Z
        //   200: aload_0        
        //   201: iconst_0       
        //   202: putfield        com/android/launcher3/folder/Folder.mItemAddedBackToSelfViaIcon:Z
        //   205: return         
        //   206: astore          5
        //   208: goto            130
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  60     63     125    133    Any
        //  67     71     125    133    Any
        //  71     75     206    133    Any
        //  77     81     206    133    Any
        //  83     88     206    133    Any
        //  97     102    206    133    Any
        //  107    112    120    125    Any
        //  130    133    133    195    Any
        //  148    153    161    192    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void onDrop(final DropTarget$DragObject p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_2       
        //     2: aconst_null    
        //     3: astore_3       
        //     4: aload_1        
        //     5: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //     8: astore          4
        //    10: aload_0        
        //    11: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //    14: invokevirtual   com/android/launcher3/Launcher.getWorkspace:()Lcom/android/launcher3/Workspace;
        //    17: astore          5
        //    19: aload           4
        //    21: aload           5
        //    23: if_acmpeq       425
        //    26: aload_1        
        //    27: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //    30: astore          4
        //    32: aload           4
        //    34: instanceof      Lcom/android/launcher3/folder/Folder;
        //    37: iconst_1       
        //    38: ixor           
        //    39: istore          6
        //    41: iload           6
        //    43: ifeq            671
        //    46: new             Lcom/android/launcher3/folder/Folder$15;
        //    49: astore_3       
        //    50: aload_3        
        //    51: aload_0        
        //    52: invokespecial   com/android/launcher3/folder/Folder$15.<init>:(Lcom/android/launcher3/folder/Folder;)V
        //    55: aload_3        
        //    56: astore          7
        //    58: aload_0        
        //    59: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //    62: astore_3       
        //    63: aload_0        
        //    64: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //    67: istore          6
        //    69: aload_3        
        //    70: iload           6
        //    72: invokevirtual   com/android/launcher3/folder/FolderPagedView.rankOnCurrentPage:(I)Z
        //    75: istore_2       
        //    76: iload_2        
        //    77: ifne            127
        //    80: aload_0        
        //    81: aload_1        
        //    82: aconst_null    
        //    83: invokespecial   com/android/launcher3/folder/Folder.getTargetRank:(Lcom/android/launcher3/DropTarget$DragObject;[F)I
        //    86: istore_2       
        //    87: aload_0        
        //    88: iload_2        
        //    89: putfield        com/android/launcher3/folder/Folder.mTargetRank:I
        //    92: aload_0        
        //    93: getfield        com/android/launcher3/folder/Folder.mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;
        //    96: astore_3       
        //    97: aload_0        
        //    98: getfield        com/android/launcher3/folder/Folder.mReorderAlarm:Lcom/android/launcher3/Alarm;
        //   101: astore          4
        //   103: aload_3        
        //   104: aload           4
        //   106: invokeinterface com/android/launcher3/OnAlarmListener.onAlarm:(Lcom/android/launcher3/Alarm;)V
        //   111: aload_0        
        //   112: getfield        com/android/launcher3/folder/Folder.mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;
        //   115: invokevirtual   com/android/launcher3/Alarm.cancelAlarm:()V
        //   118: aload_0        
        //   119: getfield        com/android/launcher3/folder/Folder.mScrollPauseAlarm:Lcom/android/launcher3/Alarm;
        //   122: astore_3       
        //   123: aload_3        
        //   124: invokevirtual   com/android/launcher3/Alarm.cancelAlarm:()V
        //   127: aload_0        
        //   128: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   131: invokevirtual   com/android/launcher3/folder/FolderPagedView.completePendingPageChanges:()V
        //   134: aload_1        
        //   135: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   138: astore_3       
        //   139: aload_3        
        //   140: instanceof      Lcom/android/launcher3/AppInfo;
        //   143: istore_2       
        //   144: iload_2        
        //   145: ifeq            431
        //   148: aload_1        
        //   149: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   152: checkcast       Lcom/android/launcher3/AppInfo;
        //   155: astore_3       
        //   156: aload_3        
        //   157: invokevirtual   com/android/launcher3/AppInfo.makeShortcut:()Lcom/android/launcher3/ShortcutInfo;
        //   160: astore          4
        //   162: aload_0        
        //   163: getfield        com/android/launcher3/folder/Folder.mIsExternalDrag:Z
        //   166: istore_2       
        //   167: iload_2        
        //   168: ifeq            445
        //   171: aload_0        
        //   172: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   175: astore_3       
        //   176: aload_0        
        //   177: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //   180: istore          8
        //   182: aload_3        
        //   183: aload           4
        //   185: iload           8
        //   187: invokevirtual   com/android/launcher3/folder/FolderPagedView.createAndAddViewForRank:(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;
        //   190: astore          9
        //   192: aload_0        
        //   193: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   196: invokevirtual   com/android/launcher3/Launcher.getModelWriter:()Lcom/android/launcher3/model/ModelWriter;
        //   199: astore_3       
        //   200: aload_0        
        //   201: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   204: astore          5
        //   206: aload           5
        //   208: getfield        com/android/launcher3/FolderInfo.id:J
        //   211: lstore          10
        //   213: lconst_0       
        //   214: lstore          12
        //   216: aload           4
        //   218: getfield        com/android/launcher3/ShortcutInfo.cellX:I
        //   221: istore          14
        //   223: aload           4
        //   225: getfield        com/android/launcher3/ShortcutInfo.cellY:I
        //   228: istore          15
        //   230: aload_3        
        //   231: aload           4
        //   233: lload           10
        //   235: lload           12
        //   237: iload           14
        //   239: iload           15
        //   241: invokevirtual   com/android/launcher3/model/ModelWriter.addOrMoveItemInDatabase:(Lcom/android/launcher3/ItemInfo;JJII)V
        //   244: aload_1        
        //   245: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //   248: astore_3       
        //   249: aload_3        
        //   250: aload_0        
        //   251: if_acmpeq       258
        //   254: aload_0        
        //   255: invokespecial   com/android/launcher3/folder/Folder.updateItemLocationsInDatabaseBatch:()V
        //   258: iconst_0       
        //   259: istore_2       
        //   260: aload_0        
        //   261: iconst_0       
        //   262: putfield        com/android/launcher3/folder/Folder.mIsExternalDrag:Z
        //   265: aload           9
        //   267: astore_3       
        //   268: aload_1        
        //   269: getfield        com/android/launcher3/DropTarget$DragObject.dragView:Lcom/android/launcher3/dragndrop/DragView;
        //   272: astore          5
        //   274: aload           5
        //   276: invokevirtual   com/android/launcher3/dragndrop/DragView.hasDrawn:()Z
        //   279: istore          8
        //   281: iload           8
        //   283: ifeq            475
        //   286: aload_0        
        //   287: invokevirtual   com/android/launcher3/folder/Folder.getScaleX:()F
        //   290: fstore          16
        //   292: aload_0        
        //   293: invokevirtual   com/android/launcher3/folder/Folder.getScaleY:()F
        //   296: fstore          17
        //   298: aload_0        
        //   299: ldc             1.0
        //   301: invokevirtual   com/android/launcher3/folder/Folder.setScaleX:(F)V
        //   304: ldc             1.0
        //   306: fstore          18
        //   308: aload_0        
        //   309: fload           18
        //   311: invokevirtual   com/android/launcher3/folder/Folder.setScaleY:(F)V
        //   314: aload_0        
        //   315: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   318: invokevirtual   com/android/launcher3/Launcher.getDragLayer:()Lcom/android/launcher3/dragndrop/DragLayer;
        //   321: astore          19
        //   323: aload_1        
        //   324: getfield        com/android/launcher3/DropTarget$DragObject.dragView:Lcom/android/launcher3/dragndrop/DragView;
        //   327: astore          20
        //   329: iconst_0       
        //   330: istore          14
        //   332: aload           19
        //   334: aload           20
        //   336: aload_3        
        //   337: aload           7
        //   339: aconst_null    
        //   340: invokevirtual   com/android/launcher3/dragndrop/DragLayer.animateViewIntoPosition:(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
        //   343: aload_0        
        //   344: fload           16
        //   346: invokevirtual   com/android/launcher3/folder/Folder.setScaleX:(F)V
        //   349: aload_0        
        //   350: fload           17
        //   352: invokevirtual   com/android/launcher3/folder/Folder.setScaleY:(F)V
        //   355: iconst_1       
        //   356: istore_2       
        //   357: aload_0        
        //   358: iload_2        
        //   359: putfield        com/android/launcher3/folder/Folder.mItemsInvalidated:Z
        //   362: aload_0        
        //   363: invokevirtual   com/android/launcher3/folder/Folder.rearrangeChildren:()V
        //   366: fconst_0       
        //   367: fstore          18
        //   369: aconst_null    
        //   370: astore          19
        //   372: iconst_0       
        //   373: istore          21
        //   375: fconst_0       
        //   376: fstore          17
        //   378: new             Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
        //   381: astore          5
        //   383: aload           5
        //   385: aload_0        
        //   386: invokespecial   com/android/launcher3/folder/Folder$SuppressInfoChanges.<init>:(Lcom/android/launcher3/folder/Folder;)V
        //   389: aload_0        
        //   390: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   393: astore_3       
        //   394: iconst_0       
        //   395: istore          21
        //   397: fconst_0       
        //   398: fstore          17
        //   400: aload_3        
        //   401: aload           4
        //   403: iconst_0       
        //   404: invokevirtual   com/android/launcher3/FolderInfo.add:(Lcom/android/launcher3/ShortcutInfo;Z)V
        //   407: aload           5
        //   409: ifnull          417
        //   412: aload           5
        //   414: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   417: aload           19
        //   419: ifnull          574
        //   422: aload           19
        //   424: athrow         
        //   425: aconst_null    
        //   426: astore          7
        //   428: goto            58
        //   431: aload_1        
        //   432: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   435: checkcast       Lcom/android/launcher3/ShortcutInfo;
        //   438: astore_3       
        //   439: aload_3        
        //   440: astore          4
        //   442: goto            162
        //   445: aload_0        
        //   446: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   449: astore_3       
        //   450: aload_0        
        //   451: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   454: astore          5
        //   456: aload_0        
        //   457: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //   460: istore          21
        //   462: aload           5
        //   464: aload_3        
        //   465: aload           4
        //   467: iload           21
        //   469: invokevirtual   com/android/launcher3/folder/FolderPagedView.addViewForRank:(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
        //   472: goto            268
        //   475: aload_1        
        //   476: iconst_0       
        //   477: putfield        com/android/launcher3/DropTarget$DragObject.deferDragViewCleanupPostAnimation:Z
        //   480: iconst_0       
        //   481: istore          8
        //   483: fconst_0       
        //   484: fstore          16
        //   486: aconst_null    
        //   487: astore          5
        //   489: aload_3        
        //   490: iconst_0       
        //   491: invokevirtual   android/view/View.setVisibility:(I)V
        //   494: goto            355
        //   497: astore          19
        //   499: goto            417
        //   502: astore_3       
        //   503: iconst_0       
        //   504: istore          6
        //   506: aconst_null    
        //   507: astore          4
        //   509: aload_3        
        //   510: athrow         
        //   511: astore          22
        //   513: aload           4
        //   515: astore          5
        //   517: aload_3        
        //   518: astore          4
        //   520: aload           22
        //   522: astore_3       
        //   523: aload           5
        //   525: ifnull          533
        //   528: aload           5
        //   530: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   533: aload           4
        //   535: ifnull          572
        //   538: aload           4
        //   540: athrow         
        //   541: astore          5
        //   543: aload           4
        //   545: ifnonnull       555
        //   548: aload           5
        //   550: astore          4
        //   552: goto            533
        //   555: aload           4
        //   557: aload           5
        //   559: if_acmpeq       533
        //   562: aload           4
        //   564: aload           5
        //   566: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   569: goto            533
        //   572: aload_3        
        //   573: athrow         
        //   574: aload_0        
        //   575: iconst_0       
        //   576: putfield        com/android/launcher3/folder/Folder.mDragInProgress:Z
        //   579: aload_0        
        //   580: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   583: astore_3       
        //   584: aload_3        
        //   585: invokevirtual   com/android/launcher3/folder/FolderPagedView.getPageCount:()I
        //   588: istore_2       
        //   589: iconst_1       
        //   590: istore          6
        //   592: iload_2        
        //   593: iload           6
        //   595: if_icmple       637
        //   598: aload_0        
        //   599: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   602: astore_3       
        //   603: aload_0        
        //   604: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   607: invokevirtual   com/android/launcher3/Launcher.getModelWriter:()Lcom/android/launcher3/model/ModelWriter;
        //   610: astore          4
        //   612: iconst_4       
        //   613: istore          8
        //   615: ldc_w           5.6E-45
        //   618: fstore          16
        //   620: iconst_1       
        //   621: istore          21
        //   623: ldc             1.4E-45
        //   625: fstore          17
        //   627: aload_3        
        //   628: iload           8
        //   630: iload           21
        //   632: aload           4
        //   634: invokevirtual   com/android/launcher3/FolderInfo.setOption:(IZLcom/android/launcher3/model/ModelWriter;)V
        //   637: aload_1        
        //   638: getfield        com/android/launcher3/DropTarget$DragObject.stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
        //   641: astore_3       
        //   642: aload_3        
        //   643: ifnull          662
        //   646: aload_1        
        //   647: getfield        com/android/launcher3/DropTarget$DragObject.stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
        //   650: astore_3       
        //   651: ldc_w           2131492973
        //   654: istore          6
        //   656: aload_3        
        //   657: iload           6
        //   659: invokevirtual   com/android/launcher3/accessibility/DragViewStateAnnouncer.completeAction:(I)V
        //   662: return         
        //   663: astore_3       
        //   664: aload           5
        //   666: astore          4
        //   668: goto            509
        //   671: aconst_null    
        //   672: astore          7
        //   674: goto            58
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  378    381    502    511    Any
        //  385    389    502    511    Any
        //  389    393    663    511    Any
        //  403    407    663    511    Any
        //  412    417    497    502    Any
        //  509    511    511    574    Any
        //  528    533    541    572    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public void onDropCompleted(final View p0, final DropTarget$DragObject p1, final boolean p2, final boolean p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore          5
        //     3: aconst_null    
        //     4: astore          6
        //     6: aload_0        
        //     7: getfield        com/android/launcher3/folder/Folder.mDeferDropAfterUninstall:Z
        //    10: istore          7
        //    12: iload           7
        //    14: ifeq            59
        //    17: ldc_w           "Launcher.Folder"
        //    20: ldc_w           "Deferred handling drop because waiting for uninstall."
        //    23: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    26: pop            
        //    27: new             Lcom/android/launcher3/folder/Folder$12;
        //    30: astore          8
        //    32: aload_0        
        //    33: astore          9
        //    35: aload_1        
        //    36: astore          6
        //    38: iload_3        
        //    39: istore          5
        //    41: aload           8
        //    43: aload_0        
        //    44: aload_1        
        //    45: aload_2        
        //    46: iload_3        
        //    47: iload           4
        //    49: invokespecial   com/android/launcher3/folder/Folder$12.<init>:(Lcom/android/launcher3/folder/Folder;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
        //    52: aload_0        
        //    53: aload           8
        //    55: putfield        com/android/launcher3/folder/Folder.mDeferredAction:Ljava/lang/Runnable;
        //    58: return         
        //    59: aload_0        
        //    60: getfield        com/android/launcher3/folder/Folder.mDeferredAction:Ljava/lang/Runnable;
        //    63: astore          8
        //    65: aload           8
        //    67: ifnull          296
        //    70: iload           5
        //    72: istore          7
        //    74: iload           4
        //    76: ifeq            312
        //    79: iload           7
        //    81: ifeq            305
        //    84: aload_0        
        //    85: getfield        com/android/launcher3/folder/Folder.mUninstallSuccessful:Z
        //    88: istore          7
        //    90: iload           7
        //    92: istore          10
        //    94: iload           10
        //    96: ifeq            318
        //    99: aload_0        
        //   100: getfield        com/android/launcher3/folder/Folder.mDeleteFolderOnDropCompleted:Z
        //   103: istore          7
        //   105: iload           7
        //   107: ifeq            132
        //   110: aload_0        
        //   111: getfield        com/android/launcher3/folder/Folder.mItemAddedBackToSelfViaIcon:Z
        //   114: iconst_1       
        //   115: ixor           
        //   116: istore          7
        //   118: iload           7
        //   120: ifeq            132
        //   123: aload_1        
        //   124: aload_0        
        //   125: if_acmpeq       132
        //   128: aload_0        
        //   129: invokevirtual   com/android/launcher3/folder/Folder.replaceFolderWithFinalItem:()V
        //   132: aload_1        
        //   133: aload_0        
        //   134: if_acmpeq       192
        //   137: aload_0        
        //   138: getfield        com/android/launcher3/folder/Folder.mOnExitAlarm:Lcom/android/launcher3/Alarm;
        //   141: astore          8
        //   143: aload           8
        //   145: invokevirtual   com/android/launcher3/Alarm.alarmPending:()Z
        //   148: istore          7
        //   150: iload           7
        //   152: ifeq            192
        //   155: aload_0        
        //   156: getfield        com/android/launcher3/folder/Folder.mOnExitAlarm:Lcom/android/launcher3/Alarm;
        //   159: astore          8
        //   161: aload           8
        //   163: invokevirtual   com/android/launcher3/Alarm.cancelAlarm:()V
        //   166: iload           10
        //   168: ifne            177
        //   171: aload_0        
        //   172: iload           5
        //   174: putfield        com/android/launcher3/folder/Folder.mSuppressFolderDeletion:Z
        //   177: aload_0        
        //   178: getfield        com/android/launcher3/folder/Folder.mScrollPauseAlarm:Lcom/android/launcher3/Alarm;
        //   181: astore          8
        //   183: aload           8
        //   185: invokevirtual   com/android/launcher3/Alarm.cancelAlarm:()V
        //   188: aload_0        
        //   189: invokevirtual   com/android/launcher3/folder/Folder.completeDragExit:()V
        //   192: aload_0        
        //   193: iconst_0       
        //   194: putfield        com/android/launcher3/folder/Folder.mDeleteFolderOnDropCompleted:Z
        //   197: aload_0        
        //   198: iconst_0       
        //   199: putfield        com/android/launcher3/folder/Folder.mDragInProgress:Z
        //   202: aload_0        
        //   203: iconst_0       
        //   204: putfield        com/android/launcher3/folder/Folder.mItemAddedBackToSelfViaIcon:Z
        //   207: aload_0        
        //   208: aconst_null    
        //   209: putfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   212: aload_0        
        //   213: invokespecial   com/android/launcher3/folder/Folder.updateItemLocationsInDatabaseBatch:()V
        //   216: aload_0        
        //   217: invokevirtual   com/android/launcher3/folder/Folder.getItemCount:()I
        //   220: istore          7
        //   222: aload_0        
        //   223: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   226: astore          9
        //   228: aload           9
        //   230: invokevirtual   com/android/launcher3/folder/FolderPagedView.itemsPerPage:()I
        //   233: istore          11
        //   235: iload           7
        //   237: iload           11
        //   239: if_icmpgt       270
        //   242: aload_0        
        //   243: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   246: astore          8
        //   248: aload_0        
        //   249: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   252: invokevirtual   com/android/launcher3/Launcher.getModelWriter:()Lcom/android/launcher3/model/ModelWriter;
        //   255: astore          9
        //   257: iconst_4       
        //   258: istore          5
        //   260: aload           8
        //   262: iload           5
        //   264: iconst_0       
        //   265: aload           9
        //   267: invokevirtual   com/android/launcher3/FolderInfo.setOption:(IZLcom/android/launcher3/model/ModelWriter;)V
        //   270: iload_3        
        //   271: ifne            295
        //   274: aload_0        
        //   275: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   278: astore          8
        //   280: sipush          500
        //   283: istore          11
        //   285: aload           8
        //   287: iload           10
        //   289: iload           11
        //   291: aconst_null    
        //   292: invokevirtual   com/android/launcher3/Launcher.exitSpringLoadedDragModeDelayed:(ZILjava/lang/Runnable;)V
        //   295: return         
        //   296: iconst_0       
        //   297: istore          7
        //   299: aconst_null    
        //   300: astore          8
        //   302: goto            74
        //   305: iload           5
        //   307: istore          10
        //   309: goto            94
        //   312: iconst_0       
        //   313: istore          10
        //   315: goto            94
        //   318: aload_2        
        //   319: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   322: checkcast       Lcom/android/launcher3/ShortcutInfo;
        //   325: astore          8
        //   327: aload_0        
        //   328: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   331: astore          9
        //   333: aload           9
        //   335: ifnull          457
        //   338: aload_0        
        //   339: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   342: invokevirtual   android/view/View.getTag:()Ljava/lang/Object;
        //   345: astore          9
        //   347: aload           9
        //   349: aload           8
        //   351: if_acmpne       457
        //   354: aload_0        
        //   355: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   358: astore          9
        //   360: aload_0        
        //   361: invokevirtual   com/android/launcher3/folder/Folder.getItemsInReadingOrder:()Ljava/util/ArrayList;
        //   364: astore          12
        //   366: aload           8
        //   368: getfield        com/android/launcher3/ShortcutInfo.rank:I
        //   371: istore          7
        //   373: aload           12
        //   375: iload           7
        //   377: aload           9
        //   379: invokevirtual   java/util/ArrayList.add:(ILjava/lang/Object;)V
        //   382: aload_0        
        //   383: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   386: astore          8
        //   388: aload           12
        //   390: invokevirtual   java/util/ArrayList.size:()I
        //   393: istore          11
        //   395: aload           8
        //   397: aload           12
        //   399: iload           11
        //   401: invokevirtual   com/android/launcher3/folder/FolderPagedView.arrangeChildren:(Ljava/util/ArrayList;I)V
        //   404: aload_0        
        //   405: iload           5
        //   407: putfield        com/android/launcher3/folder/Folder.mItemsInvalidated:Z
        //   410: new             Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
        //   413: astore          9
        //   415: aload           9
        //   417: aload_0        
        //   418: invokespecial   com/android/launcher3/folder/Folder$SuppressInfoChanges.<init>:(Lcom/android/launcher3/folder/Folder;)V
        //   421: aload_0        
        //   422: getfield        com/android/launcher3/folder/Folder.mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;
        //   425: astore          8
        //   427: aload           8
        //   429: aload_2        
        //   430: invokevirtual   com/android/launcher3/folder/FolderIcon.onDrop:(Lcom/android/launcher3/DropTarget$DragObject;)V
        //   433: aload           9
        //   435: ifnull          443
        //   438: aload           9
        //   440: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   443: iconst_0       
        //   444: istore          7
        //   446: aconst_null    
        //   447: astore          8
        //   449: aload           8
        //   451: ifnull          132
        //   454: aload           8
        //   456: athrow         
        //   457: aload_0        
        //   458: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   461: aload           8
        //   463: invokevirtual   com/android/launcher3/folder/FolderPagedView.createNewView:(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
        //   466: astore          9
        //   468: goto            360
        //   471: astore          8
        //   473: goto            449
        //   476: astore          8
        //   478: iconst_0       
        //   479: istore          11
        //   481: aconst_null    
        //   482: astore          9
        //   484: aload           8
        //   486: athrow         
        //   487: astore          13
        //   489: aload           8
        //   491: astore          6
        //   493: aload           13
        //   495: astore          8
        //   497: aload           9
        //   499: ifnull          507
        //   502: aload           9
        //   504: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   507: aload           6
        //   509: ifnull          546
        //   512: aload           6
        //   514: athrow         
        //   515: astore          9
        //   517: aload           6
        //   519: ifnonnull       529
        //   522: aload           9
        //   524: astore          6
        //   526: goto            507
        //   529: aload           6
        //   531: aload           9
        //   533: if_acmpeq       507
        //   536: aload           6
        //   538: aload           9
        //   540: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   543: goto            507
        //   546: aload           8
        //   548: athrow         
        //   549: astore          8
        //   551: goto            484
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  410    413    476    487    Any
        //  417    421    476    487    Any
        //  421    425    549    487    Any
        //  429    433    549    487    Any
        //  438    443    471    476    Any
        //  484    487    487    549    Any
        //  502    507    515    546    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.OutOfMemoryError: Java heap space
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n == 6) {
            this.mFolderName.dispatchBackKey();
            return true;
        }
        return false;
    }
    
    protected void onFinishInflate() {
        final boolean selectAllOnFocus = true;
        super.onFinishInflate();
        (this.mContent = (FolderPagedView)this.findViewById(2131624039)).setFolder(this);
        this.mPageIndicator = (PageIndicatorDots)this.findViewById(2131624040);
        (this.mFolderName = (ExtendedEditText)this.findViewById(2131624042)).setOnBackKeyListener(this);
        this.mFolderName.setOnFocusChangeListener((View$OnFocusChangeListener)this);
        if (!Utilities.ATLEAST_MARSHMALLOW) {
            this.mFolderName.setCustomSelectionActionModeCallback((ActionMode$Callback)new Folder$4(this));
        }
        this.mFolderName.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.mFolderName.setSelectAllOnFocus(selectAllOnFocus);
        this.mFolderName.setInputType((this.mFolderName.getInputType() & 0xFFFF7FFF & 0xFFF7FFFF) | 0x2000);
        this.mFolderName.forceDisableSuggestions(selectAllOnFocus);
        (this.mFooter = this.findViewById(2131624041)).measure(0, 0);
        this.mFooterHeight = this.mFooter.getMeasuredHeight();
    }
    
    public void onFocusChange(final View view, final boolean b) {
        if (view == this.mFolderName) {
            if (b) {
                this.startEditingFolderName();
            }
            else {
                this.mFolderName.dispatchBackKey();
            }
        }
    }
    
    public void onItemsChanged(final boolean b) {
        this.updateTextViewFocus();
    }
    
    public boolean onLongClick(final View view) {
        return !this.mLauncher.isDraggingEnabled() || this.startDrag(view, new DragOptions());
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int n3 = 1073741824;
        final int contentAreaWidth = this.getContentAreaWidth();
        final int contentAreaHeight = this.getContentAreaHeight();
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(contentAreaWidth, n3);
        final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(contentAreaHeight, n3);
        this.mContent.setFixedSize(contentAreaWidth, contentAreaHeight);
        this.mContent.measure(measureSpec, measureSpec2);
        if (this.mContent.getChildCount() > 0) {
            final int n4 = (this.mContent.getPageAt(0).getCellWidth() - this.mLauncher.getDeviceProfile().iconSizePx) / 2;
            this.mFooter.setPadding(this.mContent.getPaddingLeft() + n4, this.mFooter.getPaddingTop(), n4 + this.mContent.getPaddingRight(), this.mFooter.getPaddingBottom());
        }
        this.mFooter.measure(measureSpec, View$MeasureSpec.makeMeasureSpec(this.mFooterHeight, n3));
        this.setMeasuredDimension(contentAreaWidth + (this.getPaddingLeft() + this.getPaddingRight()), this.getFolderHeight(contentAreaHeight));
    }
    
    public void onRemove(final ShortcutInfo shortcutInfo) {
        final int n = 1;
        this.mItemsInvalidated = (n != 0);
        this.mContent.removeItem(this.getViewForInfo(shortcutInfo));
        if (this.mState == n) {
            this.mRearrangeOnClose = (n != 0);
        }
        else {
            this.rearrangeChildren();
        }
        if (this.getItemCount() <= n) {
            if (this.mIsOpen) {
                this.close(n != 0);
            }
            else {
                this.replaceFolderWithFinalItem();
            }
        }
    }
    
    public void onTitleChanged(final CharSequence charSequence) {
    }
    
    public void prepareAccessibilityDrop() {
        if (this.mReorderAlarm.alarmPending()) {
            this.mReorderAlarm.cancelAlarm();
            this.mReorderAlarmListener.onAlarm(this.mReorderAlarm);
        }
    }
    
    public void prepareAutoUpdate() {
        this.close(false);
    }
    
    public void rearrangeChildren() {
        this.rearrangeChildren(-1);
    }
    
    public void rearrangeChildren(final int n) {
        final ArrayList itemsInReadingOrder = this.getItemsInReadingOrder();
        this.mContent.arrangeChildren(itemsInReadingOrder, Math.max(n, itemsInReadingOrder.size()));
        this.mItemsInvalidated = true;
    }
    
    void replaceFolderWithFinalItem() {
        final Folder$13 folder$13 = new Folder$13(this);
        final View lastItem = this.mContent.getLastItem();
        if (lastItem != null) {
            this.mFolderIcon.performDestroyAnimation(lastItem, folder$13);
        }
        else {
            folder$13.run();
        }
        this.mDestroyed = true;
    }
    
    public void setDragController(final DragController mDragController) {
        this.mDragController = mDragController;
    }
    
    public void setFolderIcon(final FolderIcon mFolderIcon) {
        this.mFolderIcon = mFolderIcon;
    }
    
    public void showItem(final ShortcutInfo shortcutInfo) {
        this.getViewForInfo(shortcutInfo).setVisibility(0);
    }
    
    public boolean startDrag(final View mCurrentDragView, final DragOptions dragOptions) {
        final boolean b = true;
        final Object tag = mCurrentDragView.getTag();
        if (tag instanceof ShortcutInfo) {
            final ShortcutInfo shortcutInfo = (ShortcutInfo)tag;
            if (!mCurrentDragView.isInTouchMode()) {
                return false;
            }
            this.mEmptyCellRank = shortcutInfo.rank;
            this.mCurrentDragView = mCurrentDragView;
            this.mDragController.addDragListener(this);
            if (dragOptions.isAccessibleDrag) {
                this.mDragController.addDragListener(new Folder$5(this, this.mContent, (int)(b ? 1 : 0)));
            }
            this.mLauncher.getWorkspace().beginDragShared(mCurrentDragView, this, dragOptions);
        }
        return b;
    }
    
    public void startEditingFolderName() {
        this.post((Runnable)new Folder$6(this));
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return true;
    }
    
    public void updateTextViewFocus() {
        final View firstItem = this.mContent.getFirstItem();
        final View lastItem = this.mContent.getLastItem();
        if (firstItem != null && lastItem != null) {
            this.mFolderName.setNextFocusDownId(lastItem.getId());
            this.mFolderName.setNextFocusRightId(lastItem.getId());
            this.mFolderName.setNextFocusLeftId(lastItem.getId());
            this.mFolderName.setNextFocusUpId(lastItem.getId());
            this.mFolderName.setNextFocusForwardId(firstItem.getId());
            this.setNextFocusDownId(firstItem.getId());
            this.setNextFocusRightId(firstItem.getId());
            this.setNextFocusLeftId(firstItem.getId());
            this.setNextFocusUpId(firstItem.getId());
            this.setOnKeyListener((View$OnKeyListener)new Folder$14(this, lastItem));
        }
    }
}
