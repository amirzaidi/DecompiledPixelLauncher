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
import java.util.Collection;
import com.android.launcher3.BubbleTextView;
import android.view.FocusFinder;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.accessibility.AccessibilityEvent;
import java.util.Iterator;
import android.view.ViewGroup$LayoutParams;
import java.util.List;
import java.util.Collections;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.Workspace$ItemOperator;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.DropTarget$DragObject;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.animation.AccelerateInterpolator;
import com.android.launcher3.anim.CircleRevealOutlineProvider;
import android.animation.TimeInterpolator;
import com.android.launcher3.LogDecelerateInterpolator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import com.android.launcher3.anim.AnimationLayerSet;
import android.animation.Animator;
import com.android.launcher3.LauncherAnimUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragLayer$LayoutParams;
import android.animation.Animator$AnimatorListener;
import com.android.launcher3.config.FeatureFlags;
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
import android.animation.AnimatorSet;
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
    private AnimatorSet mCurrentAnimator;
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
    public final int mMaterialExpandDuration;
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
            Folder.sDefaultFolderName = resources.getString(2131492895);
        }
        if (Folder.sHintText == null) {
            Folder.sHintText = resources.getString(2131492932);
        }
        this.mLauncher = Launcher.getLauncher(context);
        this.setFocusableInTouchMode(true);
    }
    
    private void animateClosed() {
        AnimatorSet set;
        if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
            set = new FolderAnimationManager(this, false).getAnimator();
        }
        else {
            set = this.getClosingAnimator();
        }
        set.addListener((Animator$AnimatorListener)new Folder$12(this));
        this.startAnimation(set);
    }
    
    private void centerAboutIcon() {
        final float n = 1.0f;
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        final DragLayer$LayoutParams dragLayer$LayoutParams = (DragLayer$LayoutParams)this.getLayoutParams();
        final DragLayer dragLayer = (DragLayer)this.mLauncher.findViewById(2131624011);
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
        if (this.mFolderIcon != null) {
            this.mFolderIcon.setVisibility(0);
            if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
                this.mFolderIcon.setBackgroundVisible(mDeleteFolderOnDropCompleted != 0);
                this.mFolderIcon.mFolderName.setTextVisibility(mDeleteFolderOnDropCompleted != 0);
            }
            if (b) {
                if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
                    this.mFolderIcon.mBackground.fadeInBackgroundShadow();
                    this.mFolderIcon.mBackground.animateBackgroundStroke();
                    this.mFolderIcon.onFolderClose(this.mContent.getCurrentPage());
                }
                if (this.mFolderIcon.hasBadge()) {
                    final FolderIcon mFolderIcon = this.mFolderIcon;
                    final float[] array2;
                    final float[] array = array2 = new float[2];
                    array2[0] = 0.0f;
                    array2[1] = 1.0f;
                    mFolderIcon.createBadgeScaleAnimator(array).start();
                }
                this.mFolderIcon.requestFocus();
            }
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
        this.mContent.setCurrentPage(0);
    }
    
    static Folder fromXml(final Launcher launcher) {
        final LayoutInflater layoutInflater = launcher.getLayoutInflater();
        int n;
        if (FeatureFlags.LAUNCHER3_DISABLE_ICON_NORMALIZATION) {
            n = 2130968625;
        }
        else {
            n = 2130968626;
        }
        return (Folder)layoutInflater.inflate(n, (ViewGroup)null);
    }
    
    private AnimatorSet getClosingAnimator() {
        final float n = 0.9f;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        animatorSet.play((Animator)LauncherAnimUtils.ofViewAlphaAndScale((View)this, 0.0f, n, n));
        final AnimationLayerSet set = new AnimationLayerSet();
        set.addView((View)this);
        animatorSet.addListener((Animator$AnimatorListener)set);
        animatorSet.setDuration((long)this.mExpandDuration);
        return animatorSet;
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
    
    private AnimatorSet getOpeningAnimator() {
        final float n = -0.075f;
        final int n2 = 1;
        final int n3 = 2;
        this.prepareReveal();
        this.mFolderIcon.growAndFadeOut();
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final int folderWidth = this.getFolderWidth();
        final int folderHeight = this.getFolderHeight();
        final float translationX = (folderWidth / 2 - this.getPivotX()) * n;
        final float translationY = (folderHeight / 2 - this.getPivotY()) * n;
        this.setTranslationX(translationX);
        this.setTranslationY(translationY);
        final Property translation_X = Folder.TRANSLATION_X;
        final float[] array = new float[n3];
        array[0] = translationX;
        array[n2] = 0.0f;
        final PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat(translation_X, array);
        final Property translation_Y = Folder.TRANSLATION_Y;
        final float[] array2 = new float[n3];
        array2[0] = translationY;
        array2[n2] = 0.0f;
        final PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat(translation_Y, array2);
        final PropertyValuesHolder[] array3 = new PropertyValuesHolder[n3];
        array3[0] = ofFloat;
        array3[n2] = ofFloat2;
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
        final float[] array4 = array5 = new float[n3];
        array5[0] = 0.0f;
        array5[1] = 1.0f;
        final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object)mContent, "alpha", array4);
        ((Animator)ofFloat3).setDuration((long)this.mMaterialExpandDuration);
        ((Animator)ofFloat3).setStartDelay((long)this.mMaterialExpandStagger);
        ((Animator)ofFloat3).setInterpolator((TimeInterpolator)new AccelerateInterpolator(1.5f));
        this.mFooter.setAlpha(0.0f);
        final View mFooter = this.mFooter;
        final float[] array7;
        final float[] array6 = array7 = new float[n3];
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
        final AnimationLayerSet set = new AnimationLayerSet();
        set.addView((View)this.mContent);
        set.addView(this.mFooter);
        animatorSet.addListener((Animator$AnimatorListener)set);
        return animatorSet;
    }
    
    private int getTargetRank(final DropTarget$DragObject dropTarget$DragObject, final float[] array) {
        final float[] visualCenter = dropTarget$DragObject.getVisualCenter(array);
        return this.mContent.findNearestArea((int)visualCenter[0] - this.getPaddingLeft(), (int)visualCenter[1] - this.getPaddingTop());
    }
    
    private View getViewForInfo(final ShortcutInfo shortcutInfo) {
        return this.mContent.iterateOverItems(new Folder$17(this, shortcutInfo));
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
    
    private void startAnimation(final AnimatorSet set) {
        if (this.mCurrentAnimator != null && this.mCurrentAnimator.isRunning()) {
            this.mCurrentAnimator.cancel();
        }
        set.addListener((Animator$AnimatorListener)new Folder$8(this, set));
        set.start();
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
        this.centerAboutIcon();
        AnimatorSet set;
        if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
            set = new FolderAnimationManager(this, mIsOpen != 0).getAnimator();
        }
        else {
            set = this.getOpeningAnimator();
        }
        set.addListener((Animator$AnimatorListener)new Folder$10(this, new Folder$9(this)));
        if (this.mContent.getPageCount() > mIsOpen && (this.mInfo.hasOption(4) ^ true)) {
            float translationX = (this.mContent.getDesiredWidth() - this.mFooter.getPaddingLeft() - this.mFooter.getPaddingRight() - this.mFolderName.getPaint().measureText(this.mFolderName.getText().toString())) / 2.0f;
            final ExtendedEditText mFolderName = this.mFolderName;
            if (this.mContent.mIsRtl) {
                translationX = -translationX;
            }
            mFolderName.setTranslationX(translationX);
            this.mPageIndicator.prepareEntryAnimation();
            set.addListener((Animator$AnimatorListener)new Folder$11(this, this.mDragInProgress ^ true));
        }
        else {
            this.mFolderName.setTranslationX(0.0f);
        }
        this.mPageIndicator.stopAllAnimations();
        this.startAnimation(set);
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
            this.mFolderName.setHint((CharSequence)null);
        }
        else {
            this.mFolderName.setText((CharSequence)"");
            this.mFolderName.setHint((CharSequence)Folder.sHintText);
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
            this.mContent.iterateOverItems(new Folder$18(this));
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }
    
    public List getItemsOnPage(final int n) {
        final ArrayList itemsInReadingOrder = this.getItemsInReadingOrder();
        final int n2 = this.mContent.getPageCount() - 1;
        final int size = itemsInReadingOrder.size();
        final int itemsPerPage = this.mContent.itemsPerPage();
        int n3;
        if (n == n2) {
            n3 = size - itemsPerPage * n;
        }
        else {
            n3 = itemsPerPage;
        }
        int i = itemsPerPage * n;
        final int min = Math.min(i + n3, itemsInReadingOrder.size());
        final ArrayList list = new ArrayList<BubbleTextView>(n3);
        while (i < min) {
            list.add((BubbleTextView)itemsInReadingOrder.get(i));
            ++i;
        }
        return list;
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
            if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
                this.mFolderIcon.clearLeaveBehindIfExists();
            }
            else {
                this.mFolderIcon.shrinkAndFadeIn(b);
            }
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
        boolean b = true;
        if (FeatureFlags.LAUNCHER3_NEW_FOLDER_ANIMATION) {
            if (this.mState == (b ? 1 : 0)) {
                b = false;
            }
            return b;
        }
        return b;
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
    
    public void onAdd(final ShortcutInfo shortcutInfo, final int n) {
        final View andAddViewForRank = this.mContent.createAndAddViewForRank(shortcutInfo, n);
        this.mLauncher.getModelWriter().addOrMoveItemInDatabase(shortcutInfo, this.mInfo.id, 0L, shortcutInfo.cellX, shortcutInfo.cellY);
        final ArrayList<View> list = new ArrayList<View>(this.getItemsInReadingOrder());
        list.add(n, andAddViewForRank);
        this.mContent.arrangeChildren(list, list.size());
        this.mItemsInvalidated = true;
    }
    
    protected void onAttachedToWindow() {
        this.requestFocus();
        super.onAttachedToWindow();
    }
    
    public boolean onBackKey() {
        final int n = 1;
        final String string = this.mFolderName.getText().toString();
        this.mInfo.setTitle(string);
        this.mLauncher.getModelWriter().updateItemInDatabase(this.mInfo);
        final ExtendedEditText mFolderName = this.mFolderName;
        String sHintText;
        if (Folder.sDefaultFolderName.contentEquals(string)) {
            sHintText = Folder.sHintText;
        }
        else {
            sHintText = null;
        }
        mFolderName.setHint((CharSequence)sHintText);
        final Context context = this.getContext();
        final Object[] array = new Object[n];
        array[0] = string;
        Utilities.sendCustomAccessibilityEvent((View)this, 32, context.getString(2131492941, array));
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
        this.mDragInProgress = false;
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
                stateAnnouncer.announce(context.getString(2131492980, array2));
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
        Label_0394: {
            if (nextPage <= 0) {
                break Label_0394;
            }
            int n7;
            if (this.mContent.mIsRtl) {
                n7 = n6;
            }
            else {
                n7 = n5;
            }
            if (n7 == 0) {
                break Label_0394;
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
        //    23: if_acmpeq       363
        //    26: aload_1        
        //    27: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //    30: astore          4
        //    32: aload           4
        //    34: instanceof      Lcom/android/launcher3/folder/Folder;
        //    37: iconst_1       
        //    38: ixor           
        //    39: istore          6
        //    41: iload           6
        //    43: ifeq            840
        //    46: new             Lcom/android/launcher3/folder/Folder$16;
        //    49: astore_3       
        //    50: aload_3        
        //    51: aload_0        
        //    52: invokespecial   com/android/launcher3/folder/Folder$16.<init>:(Lcom/android/launcher3/folder/Folder;)V
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
        //   140: instanceof      Lcom/android/launcher3/widget/PendingAddShortcutInfo;
        //   143: istore_2       
        //   144: iload_2        
        //   145: ifeq            372
        //   148: aload_1        
        //   149: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   152: checkcast       Lcom/android/launcher3/widget/PendingAddShortcutInfo;
        //   155: astore_3       
        //   156: aload_3        
        //   157: astore          4
        //   159: aload           4
        //   161: ifnull          381
        //   164: aload           4
        //   166: getfield        com/android/launcher3/widget/PendingAddShortcutInfo.activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;
        //   169: invokevirtual   com/android/launcher3/compat/ShortcutConfigActivityInfo.createShortcutInfo:()Lcom/android/launcher3/ShortcutInfo;
        //   172: astore_3       
        //   173: aload           4
        //   175: ifnull          388
        //   178: aload_3        
        //   179: ifnonnull       388
        //   182: aload_0        
        //   183: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   186: getfield        com/android/launcher3/FolderInfo.id:J
        //   189: lstore          8
        //   191: aload           4
        //   193: lload           8
        //   195: putfield        com/android/launcher3/widget/PendingAddShortcutInfo.container:J
        //   198: aload_0        
        //   199: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //   202: istore_2       
        //   203: aload           4
        //   205: iload_2        
        //   206: putfield        com/android/launcher3/widget/PendingAddShortcutInfo.rank:I
        //   209: aload_0        
        //   210: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   213: astore_3       
        //   214: aload           4
        //   216: getfield        com/android/launcher3/widget/PendingAddShortcutInfo.container:J
        //   219: lstore          8
        //   221: aload           4
        //   223: getfield        com/android/launcher3/widget/PendingAddShortcutInfo.screenId:J
        //   226: lstore          10
        //   228: aload           4
        //   230: getfield        com/android/launcher3/widget/PendingAddShortcutInfo.spanX:I
        //   233: istore          12
        //   235: aload           4
        //   237: getfield        com/android/launcher3/widget/PendingAddShortcutInfo.spanY:I
        //   240: istore          13
        //   242: iconst_0       
        //   243: istore          14
        //   245: aload_3        
        //   246: aload           4
        //   248: lload           8
        //   250: lload           10
        //   252: aconst_null    
        //   253: iload           12
        //   255: iload           13
        //   257: invokevirtual   com/android/launcher3/Launcher.addPendingItem:(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
        //   260: aconst_null    
        //   261: astore_3       
        //   262: aload_1        
        //   263: iconst_0       
        //   264: putfield        com/android/launcher3/DropTarget$DragObject.deferDragViewCleanupPostAnimation:Z
        //   267: iconst_1       
        //   268: istore_2       
        //   269: aload_0        
        //   270: iload_2        
        //   271: putfield        com/android/launcher3/folder/Folder.mRearrangeOnClose:Z
        //   274: aload_0        
        //   275: iconst_0       
        //   276: putfield        com/android/launcher3/folder/Folder.mDragInProgress:Z
        //   279: aload_0        
        //   280: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   283: astore_3       
        //   284: aload_3        
        //   285: invokevirtual   com/android/launcher3/folder/FolderPagedView.getPageCount:()I
        //   288: istore_2       
        //   289: iconst_1       
        //   290: istore          6
        //   292: iload_2        
        //   293: iload           6
        //   295: if_icmple       337
        //   298: aload_0        
        //   299: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   302: astore_3       
        //   303: aload_0        
        //   304: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   307: invokevirtual   com/android/launcher3/Launcher.getModelWriter:()Lcom/android/launcher3/model/ModelWriter;
        //   310: astore          4
        //   312: iconst_4       
        //   313: istore          15
        //   315: ldc_w           5.6E-45
        //   318: fstore          16
        //   320: iconst_1       
        //   321: istore          17
        //   323: ldc             1.4E-45
        //   325: fstore          18
        //   327: aload_3        
        //   328: iload           15
        //   330: iload           17
        //   332: aload           4
        //   334: invokevirtual   com/android/launcher3/FolderInfo.setOption:(IZLcom/android/launcher3/model/ModelWriter;)V
        //   337: aload_1        
        //   338: getfield        com/android/launcher3/DropTarget$DragObject.stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
        //   341: astore_3       
        //   342: aload_3        
        //   343: ifnull          362
        //   346: aload_1        
        //   347: getfield        com/android/launcher3/DropTarget$DragObject.stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;
        //   350: astore_3       
        //   351: ldc_w           2131492982
        //   354: istore          6
        //   356: aload_3        
        //   357: iload           6
        //   359: invokevirtual   com/android/launcher3/accessibility/DragViewStateAnnouncer.completeAction:(I)V
        //   362: return         
        //   363: iconst_0       
        //   364: istore          13
        //   366: aconst_null    
        //   367: astore          7
        //   369: goto            58
        //   372: iconst_0       
        //   373: istore          6
        //   375: aconst_null    
        //   376: astore          4
        //   378: goto            159
        //   381: iconst_0       
        //   382: istore_2       
        //   383: aconst_null    
        //   384: astore_3       
        //   385: goto            173
        //   388: aload_3        
        //   389: ifnull          658
        //   392: aload_3        
        //   393: astore          4
        //   395: aload_0        
        //   396: getfield        com/android/launcher3/folder/Folder.mIsExternalDrag:Z
        //   399: istore_2       
        //   400: iload_2        
        //   401: ifeq            703
        //   404: aload_0        
        //   405: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   408: astore_3       
        //   409: aload_0        
        //   410: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //   413: istore          15
        //   415: aload_3        
        //   416: aload           4
        //   418: iload           15
        //   420: invokevirtual   com/android/launcher3/folder/FolderPagedView.createAndAddViewForRank:(Lcom/android/launcher3/ShortcutInfo;I)Landroid/view/View;
        //   423: astore          19
        //   425: aload_0        
        //   426: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   429: invokevirtual   com/android/launcher3/Launcher.getModelWriter:()Lcom/android/launcher3/model/ModelWriter;
        //   432: astore_3       
        //   433: aload_0        
        //   434: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   437: astore          5
        //   439: aload           5
        //   441: getfield        com/android/launcher3/FolderInfo.id:J
        //   444: lstore          8
        //   446: lconst_0       
        //   447: lstore          10
        //   449: aload           4
        //   451: getfield        com/android/launcher3/ShortcutInfo.cellX:I
        //   454: istore          14
        //   456: aload           4
        //   458: getfield        com/android/launcher3/ShortcutInfo.cellY:I
        //   461: istore          12
        //   463: aload_3        
        //   464: aload           4
        //   466: lload           8
        //   468: lload           10
        //   470: iload           14
        //   472: iload           12
        //   474: invokevirtual   com/android/launcher3/model/ModelWriter.addOrMoveItemInDatabase:(Lcom/android/launcher3/ItemInfo;JJII)V
        //   477: aload_1        
        //   478: getfield        com/android/launcher3/DropTarget$DragObject.dragSource:Lcom/android/launcher3/DragSource;
        //   481: astore_3       
        //   482: aload_3        
        //   483: aload_0        
        //   484: if_acmpeq       491
        //   487: aload_0        
        //   488: invokespecial   com/android/launcher3/folder/Folder.updateItemLocationsInDatabaseBatch:()V
        //   491: iconst_0       
        //   492: istore_2       
        //   493: aload_0        
        //   494: iconst_0       
        //   495: putfield        com/android/launcher3/folder/Folder.mIsExternalDrag:Z
        //   498: aload           19
        //   500: astore_3       
        //   501: aload_1        
        //   502: getfield        com/android/launcher3/DropTarget$DragObject.dragView:Lcom/android/launcher3/dragndrop/DragView;
        //   505: astore          5
        //   507: aload           5
        //   509: invokevirtual   com/android/launcher3/dragndrop/DragView.hasDrawn:()Z
        //   512: istore          15
        //   514: iload           15
        //   516: ifeq            733
        //   519: aload_0        
        //   520: invokevirtual   com/android/launcher3/folder/Folder.getScaleX:()F
        //   523: fstore          16
        //   525: aload_0        
        //   526: invokevirtual   com/android/launcher3/folder/Folder.getScaleY:()F
        //   529: fstore          18
        //   531: aload_0        
        //   532: ldc             1.0
        //   534: invokevirtual   com/android/launcher3/folder/Folder.setScaleX:(F)V
        //   537: ldc             1.0
        //   539: fstore          20
        //   541: aload_0        
        //   542: fload           20
        //   544: invokevirtual   com/android/launcher3/folder/Folder.setScaleY:(F)V
        //   547: aload_0        
        //   548: getfield        com/android/launcher3/folder/Folder.mLauncher:Lcom/android/launcher3/Launcher;
        //   551: invokevirtual   com/android/launcher3/Launcher.getDragLayer:()Lcom/android/launcher3/dragndrop/DragLayer;
        //   554: astore          21
        //   556: aload_1        
        //   557: getfield        com/android/launcher3/DropTarget$DragObject.dragView:Lcom/android/launcher3/dragndrop/DragView;
        //   560: astore          22
        //   562: iconst_0       
        //   563: istore          14
        //   565: aload           21
        //   567: aload           22
        //   569: aload_3        
        //   570: aload           7
        //   572: aconst_null    
        //   573: invokevirtual   com/android/launcher3/dragndrop/DragLayer.animateViewIntoPosition:(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
        //   576: aload_0        
        //   577: fload           16
        //   579: invokevirtual   com/android/launcher3/folder/Folder.setScaleX:(F)V
        //   582: aload_0        
        //   583: fload           18
        //   585: invokevirtual   com/android/launcher3/folder/Folder.setScaleY:(F)V
        //   588: iconst_1       
        //   589: istore_2       
        //   590: aload_0        
        //   591: iload_2        
        //   592: putfield        com/android/launcher3/folder/Folder.mItemsInvalidated:Z
        //   595: aload_0        
        //   596: invokevirtual   com/android/launcher3/folder/Folder.rearrangeChildren:()V
        //   599: fconst_0       
        //   600: fstore          20
        //   602: aconst_null    
        //   603: astore          21
        //   605: iconst_0       
        //   606: istore          17
        //   608: fconst_0       
        //   609: fstore          18
        //   611: new             Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
        //   614: astore          5
        //   616: aload           5
        //   618: aload_0        
        //   619: invokespecial   com/android/launcher3/folder/Folder$SuppressInfoChanges.<init>:(Lcom/android/launcher3/folder/Folder;)V
        //   622: aload_0        
        //   623: getfield        com/android/launcher3/folder/Folder.mInfo:Lcom/android/launcher3/FolderInfo;
        //   626: astore_3       
        //   627: iconst_0       
        //   628: istore          17
        //   630: fconst_0       
        //   631: fstore          18
        //   633: aload_3        
        //   634: aload           4
        //   636: iconst_0       
        //   637: invokevirtual   com/android/launcher3/FolderInfo.add:(Lcom/android/launcher3/ShortcutInfo;Z)V
        //   640: aload           5
        //   642: ifnull          650
        //   645: aload           5
        //   647: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   650: aload           21
        //   652: ifnull          274
        //   655: aload           21
        //   657: athrow         
        //   658: aload_1        
        //   659: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   662: astore_3       
        //   663: aload_3        
        //   664: instanceof      Lcom/android/launcher3/AppInfo;
        //   667: istore_2       
        //   668: iload_2        
        //   669: ifeq            689
        //   672: aload_1        
        //   673: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   676: checkcast       Lcom/android/launcher3/AppInfo;
        //   679: astore_3       
        //   680: aload_3        
        //   681: invokevirtual   com/android/launcher3/AppInfo.makeShortcut:()Lcom/android/launcher3/ShortcutInfo;
        //   684: astore          4
        //   686: goto            395
        //   689: aload_1        
        //   690: getfield        com/android/launcher3/DropTarget$DragObject.dragInfo:Lcom/android/launcher3/ItemInfo;
        //   693: checkcast       Lcom/android/launcher3/ShortcutInfo;
        //   696: astore_3       
        //   697: aload_3        
        //   698: astore          4
        //   700: goto            395
        //   703: aload_0        
        //   704: getfield        com/android/launcher3/folder/Folder.mCurrentDragView:Landroid/view/View;
        //   707: astore_3       
        //   708: aload_0        
        //   709: getfield        com/android/launcher3/folder/Folder.mContent:Lcom/android/launcher3/folder/FolderPagedView;
        //   712: astore          5
        //   714: aload_0        
        //   715: getfield        com/android/launcher3/folder/Folder.mEmptyCellRank:I
        //   718: istore          17
        //   720: aload           5
        //   722: aload_3        
        //   723: aload           4
        //   725: iload           17
        //   727: invokevirtual   com/android/launcher3/folder/FolderPagedView.addViewForRank:(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
        //   730: goto            501
        //   733: aload_1        
        //   734: iconst_0       
        //   735: putfield        com/android/launcher3/DropTarget$DragObject.deferDragViewCleanupPostAnimation:Z
        //   738: iconst_0       
        //   739: istore          15
        //   741: fconst_0       
        //   742: fstore          16
        //   744: aconst_null    
        //   745: astore          5
        //   747: aload_3        
        //   748: iconst_0       
        //   749: invokevirtual   android/view/View.setVisibility:(I)V
        //   752: goto            588
        //   755: astore          21
        //   757: goto            650
        //   760: astore_3       
        //   761: iconst_0       
        //   762: istore          6
        //   764: aconst_null    
        //   765: astore          4
        //   767: aload_3        
        //   768: athrow         
        //   769: astore          23
        //   771: aload           4
        //   773: astore          5
        //   775: aload_3        
        //   776: astore          4
        //   778: aload           23
        //   780: astore_3       
        //   781: aload           5
        //   783: ifnull          791
        //   786: aload           5
        //   788: invokevirtual   com/android/launcher3/folder/Folder$SuppressInfoChanges.close:()V
        //   791: aload           4
        //   793: ifnull          830
        //   796: aload           4
        //   798: athrow         
        //   799: astore          5
        //   801: aload           4
        //   803: ifnonnull       813
        //   806: aload           5
        //   808: astore          4
        //   810: goto            791
        //   813: aload           4
        //   815: aload           5
        //   817: if_acmpeq       791
        //   820: aload           4
        //   822: aload           5
        //   824: invokevirtual   java/lang/Throwable.addSuppressed:(Ljava/lang/Throwable;)V
        //   827: goto            791
        //   830: aload_3        
        //   831: athrow         
        //   832: astore_3       
        //   833: aload           5
        //   835: astore          4
        //   837: goto            767
        //   840: iconst_0       
        //   841: istore          13
        //   843: aconst_null    
        //   844: astore          7
        //   846: goto            58
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  611    614    760    769    Any
        //  618    622    760    769    Any
        //  622    626    832    769    Any
        //  636    640    832    769    Any
        //  645    650    755    760    Any
        //  767    769    769    832    Any
        //  786    791    799    830    Any
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
        //    27: new             Lcom/android/launcher3/folder/Folder$13;
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
        //    49: invokespecial   com/android/launcher3/folder/Folder$13.<init>:(Lcom/android/launcher3/folder/Folder;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
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
        (this.mContent = (FolderPagedView)this.findViewById(2131624065)).setFolder(this);
        this.mPageIndicator = (PageIndicatorDots)this.findViewById(2131624066);
        (this.mFolderName = (ExtendedEditText)this.findViewById(2131624068)).setOnBackKeyListener(this);
        this.mFolderName.setOnFocusChangeListener((View$OnFocusChangeListener)this);
        if (!Utilities.ATLEAST_MARSHMALLOW) {
            this.mFolderName.setCustomSelectionActionModeCallback((ActionMode$Callback)new Folder$4(this));
        }
        this.mFolderName.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.mFolderName.setSelectAllOnFocus(selectAllOnFocus);
        this.mFolderName.setInputType((this.mFolderName.getInputType() & 0xFFFF7FFF & 0xFFF7FFFF) | 0x2000);
        this.mFolderName.forceDisableSuggestions(selectAllOnFocus);
        (this.mFooter = this.findViewById(2131624067)).measure(0, 0);
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
        final Folder$14 folder$14 = new Folder$14(this);
        if (this.mContent.getLastItem() != null) {
            this.mFolderIcon.performDestroyAnimation(folder$14);
        }
        else {
            folder$14.run();
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
            this.mEmptyCellRank = ((ShortcutInfo)tag).rank;
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
            this.setOnKeyListener((View$OnKeyListener)new Folder$15(this, lastItem));
        }
    }
}
