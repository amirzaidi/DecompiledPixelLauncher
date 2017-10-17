// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.compat.AppWidgetManagerCompat;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.animation.AnimatorSet;
import android.animation.Animator;
import com.android.launcher3.anim.AnimationLayerSet;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.HashSet;
import android.os.UserHandle;
import android.os.Bundle;
import android.appwidget.AppWidgetProviderInfo;
import android.os.IBinder;
import android.view.View$OnClickListener;
import com.android.launcher3.accessibility.OverviewAccessibilityDelegate;
import java.util.Iterator;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import android.view.MotionEvent;
import android.graphics.Bitmap$Config;
import android.view.View$MeasureSpec;
import android.view.accessibility.AccessibilityManager;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.graphics.Bitmap;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import android.graphics.Point;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.accessibility.OverviewScreenAccessibilityDelegate;
import android.widget.Toast;
import android.util.Property;
import android.appwidget.AppWidgetHostView;
import android.view.ViewGroup;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.dragndrop.DragView;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.ViewGroup$LayoutParams;
import com.android.launcher3.folder.Folder;
import android.view.View$OnKeyListener;
import android.util.Log;
import android.view.View;
import android.content.res.Resources;
import android.view.animation.DecelerateInterpolator;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.util.LongArrayMap;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import android.app.WallpaperManager;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import android.util.SparseArray;
import java.util.ArrayList;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.graphics.DragPreviewProvider;
import android.animation.LayoutTransition;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.dragndrop.DragController;
import android.graphics.Canvas;
import android.view.animation.Interpolator;
import android.graphics.Rect;
import android.view.ViewGroup$OnHierarchyChangeListener;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.view.View$OnTouchListener;

public class Workspace extends PagedView implements DropTarget, DragSource, View$OnTouchListener, DragController$DragListener, ViewGroup$OnHierarchyChangeListener, Insettable, UninstallDropTarget$DropTargetSource
{
    private static final Rect sTempRect;
    private boolean mAddToExistingFolderOnDrop;
    private final Interpolator mAlphaInterpolator;
    boolean mAnimatingViewIntoPlace;
    private final Canvas mCanvas;
    boolean mChildrenLayersEnabled;
    private boolean mCreateUserFolderOnDrop;
    private float mCurrentScale;
    Launcher$CustomContentCallbacks mCustomContentCallbacks;
    private String mCustomContentDescription;
    private long mCustomContentShowTime;
    boolean mCustomContentShowing;
    private boolean mDeferDropAfterUninstall;
    boolean mDeferRemoveExtraEmptyScreen;
    Runnable mDeferredAction;
    Runnable mDelayedResizeRunnable;
    private Runnable mDelayedSnapToPageRunnable;
    DragController mDragController;
    private CellLayout$CellInfo mDragInfo;
    private int mDragMode;
    private FolderIcon mDragOverFolderIcon;
    private int mDragOverX;
    private int mDragOverY;
    private CellLayout mDragOverlappingLayout;
    private ShortcutAndWidgetContainer mDragSourceInternal;
    CellLayout mDragTargetLayout;
    float[] mDragViewVisualCenter;
    private CellLayout mDropToLayout;
    private PreviewBackground mFolderCreateBg;
    private final Alarm mFolderCreationAlarm;
    private boolean mForceDrawAdjacentPages;
    private final float[] mHotseatAlpha;
    private boolean mIsSwitchingState;
    private float mLastCustomContentScrollProgress;
    float mLastOverlayScroll;
    int mLastReorderX;
    int mLastReorderY;
    final Launcher mLauncher;
    Launcher$LauncherOverlay mLauncherOverlay;
    private LayoutTransition mLayoutTransition;
    private float mMaxDistanceForFolderCreation;
    private DragPreviewProvider mOutlineProvider;
    boolean mOverlayShown;
    private float mOverlayTranslation;
    private final float mOverviewModeShrinkFactor;
    private final float[] mPageAlpha;
    private View$AccessibilityDelegate mPagesAccessibilityDelegate;
    Runnable mRemoveEmptyScreenRunnable;
    private final Alarm mReorderAlarm;
    private final ArrayList mRestoredPages;
    private SparseArray mSavedStates;
    final ArrayList mScreenOrder;
    boolean mScrollInteractionBegan;
    private SpringLoadedDragController mSpringLoadedDragController;
    boolean mStartedSendingScrollEvents;
    private Workspace$State mState;
    private final WorkspaceStateTransitionAnimation mStateTransitionAnimation;
    private boolean mStripScreensOnPageStopMoving;
    int[] mTargetCell;
    private final float[] mTempTouchCoordinates;
    private final int[] mTempXY;
    private long mTouchDownTime;
    private float mTransitionProgress;
    private boolean mUninstallSuccessful;
    private boolean mUnlockWallpaperFromDefaultPageOnLayout;
    final WallpaperManager mWallpaperManager;
    final WallpaperOffsetInterpolator mWallpaperOffset;
    private final boolean mWorkspaceFadeInAdjacentScreens;
    final LongArrayMap mWorkspaceScreens;
    private float mXDown;
    private float mYDown;
    
    static {
        sTempRect = new Rect();
    }
    
    public Workspace(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public Workspace(final Context context, final AttributeSet set, final int n) {
        final boolean b = true;
        final int n2 = -1;
        final int n3 = 2;
        super(context, set, n);
        this.mTouchDownTime = -1;
        this.mCustomContentShowTime = -1;
        this.mWorkspaceScreens = new LongArrayMap();
        this.mScreenOrder = new ArrayList();
        this.mDeferRemoveExtraEmptyScreen = false;
        this.mTargetCell = new int[n3];
        this.mDragOverX = n2;
        this.mDragOverY = n2;
        this.mLastCustomContentScrollProgress = -1.0f;
        this.mCustomContentDescription = "";
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        this.mTempXY = new int[n3];
        this.mDragViewVisualCenter = new float[n3];
        this.mTempTouchCoordinates = new float[n3];
        final float[] array;
        final float[] mPageAlpha = array = new float[n3];
        array[1] = (array[0] = 1.0f);
        this.mPageAlpha = mPageAlpha;
        final float[] array2;
        final float[] mHotseatAlpha = array2 = new float[3];
        array2[0] = 1.0f;
        array2[2] = (array2[1] = 1.0f);
        this.mHotseatAlpha = mHotseatAlpha;
        this.mState = Workspace$State.NORMAL;
        this.mIsSwitchingState = false;
        this.mAnimatingViewIntoPlace = false;
        this.mChildrenLayersEnabled = b;
        this.mStripScreensOnPageStopMoving = false;
        this.mOutlineProvider = null;
        this.mFolderCreationAlarm = new Alarm();
        this.mReorderAlarm = new Alarm();
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mCanvas = new Canvas();
        this.mDragMode = 0;
        this.mLastReorderX = n2;
        this.mLastReorderY = n2;
        this.mRestoredPages = new ArrayList();
        this.mLastOverlayScroll = 0.0f;
        this.mOverlayShown = false;
        this.mForceDrawAdjacentPages = false;
        this.mAlphaInterpolator = (Interpolator)new DecelerateInterpolator(3.0f);
        this.mLauncher = Launcher.getLauncher(context);
        this.mStateTransitionAnimation = new WorkspaceStateTransitionAnimation(this.mLauncher, this);
        final Resources resources = this.getResources();
        this.mWorkspaceFadeInAdjacentScreens = this.mLauncher.getDeviceProfile().shouldFadeAdjacentWorkspaceScreens();
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mWallpaperOffset = new WallpaperOffsetInterpolator(this);
        this.mOverviewModeShrinkFactor = resources.getInteger(2131558406) / 100.0f;
        this.setOnHierarchyChangeListener((ViewGroup$OnHierarchyChangeListener)this);
        this.setHapticFeedbackEnabled(false);
        this.initWorkspace();
        this.setMotionEventSplittingEnabled(b);
    }
    
    private void addInScreen(final View view, final long n, final long n2, final int cellX, final int cellY, final int cellHSpan, final int cellVSpan) {
        if (n == -100 && this.getScreenWithId(n2) == null) {
            Log.e("Launcher.Workspace", "Skipping child, screenId " + n2 + " not found");
            new Throwable().printStackTrace();
            return;
        }
        if (n2 == -201L) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
        CellLayout screenWithId;
        if (n == -101) {
            final CellLayout layout = this.mLauncher.getHotseat().getLayout();
            view.setOnKeyListener((View$OnKeyListener)new HotseatIconKeyEventListener());
            if (view instanceof FolderIcon) {
                ((FolderIcon)view).setTextVisible(false);
                screenWithId = layout;
            }
            else {
                screenWithId = layout;
            }
        }
        else {
            if (view instanceof FolderIcon) {
                ((FolderIcon)view).setTextVisible(true);
            }
            screenWithId = this.getScreenWithId(n2);
            view.setOnKeyListener((View$OnKeyListener)new IconKeyEventListener());
        }
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        CellLayout$LayoutParams cellLayout$LayoutParams;
        if (layoutParams == null || (layoutParams instanceof CellLayout$LayoutParams ^ true)) {
            cellLayout$LayoutParams = new CellLayout$LayoutParams(cellX, cellY, cellHSpan, cellVSpan);
        }
        else {
            final CellLayout$LayoutParams cellLayout$LayoutParams2 = (CellLayout$LayoutParams)layoutParams;
            cellLayout$LayoutParams2.cellX = cellX;
            cellLayout$LayoutParams2.cellY = cellY;
            cellLayout$LayoutParams2.cellHSpan = cellHSpan;
            cellLayout$LayoutParams2.cellVSpan = cellVSpan;
            cellLayout$LayoutParams = cellLayout$LayoutParams2;
        }
        if (cellHSpan < 0 && cellVSpan < 0) {
            cellLayout$LayoutParams.isLockedToGrid = false;
        }
        if (!screenWithId.addViewToCellLayout(view, -1, this.mLauncher.getViewIdForItem((ItemInfo)view.getTag()), cellLayout$LayoutParams, view instanceof Folder ^ true)) {
            Log.e("Launcher.Workspace", "Failed to add to item at (" + cellLayout$LayoutParams.cellX + "," + cellLayout$LayoutParams.cellY + ") to CellLayout");
        }
        if (!(view instanceof Folder)) {
            view.setHapticFeedbackEnabled(false);
            view.setOnLongClickListener(this.mLongClickListener);
        }
        if (view instanceof DropTarget) {
            this.mDragController.addDropTarget((DropTarget)view);
        }
    }
    
    private void cleanupAddToFolder() {
        if (this.mDragOverFolderIcon != null) {
            this.mDragOverFolderIcon.onDragExit();
            this.mDragOverFolderIcon = null;
        }
    }
    
    private void cleanupFolderCreation() {
        if (this.mFolderCreateBg != null) {
            this.mFolderCreateBg.animateToRest();
        }
        this.mFolderCreationAlarm.setOnAlarmListener(null);
        this.mFolderCreationAlarm.cancelAlarm();
    }
    
    private void cleanupReorder(final boolean b) {
        final int n = -1;
        if (b) {
            this.mReorderAlarm.cancelAlarm();
        }
        this.mLastReorderX = n;
        this.mLastReorderY = n;
    }
    
    private void convertFinalScreenToEmptyScreenIfNecessary() {
        final long n = -201L;
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (this.hasExtraEmptyScreen() || this.mScreenOrder.size() == 0) {
            return;
        }
        final long longValue = this.mScreenOrder.get(this.mScreenOrder.size() - 1);
        if (longValue == -301L) {
            return;
        }
        final CellLayout cellLayout = (CellLayout)this.mWorkspaceScreens.get(longValue);
        if (cellLayout.getShortcutsAndWidgets().getChildCount() == 0 && (cellLayout.isDropPending() ^ true)) {
            this.mWorkspaceScreens.remove(longValue);
            this.mScreenOrder.remove(longValue);
            this.mWorkspaceScreens.put(n, (Object)cellLayout);
            this.mScreenOrder.add(n);
            LauncherModel.updateWorkspaceScreenOrder((Context)this.mLauncher, this.mScreenOrder);
        }
    }
    
    private void enableHwLayersOnVisiblePages() {
        final int n = -1;
        if (this.mChildrenLayersEnabled) {
            final int childCount = this.getChildCount();
            float n2 = this.getViewportOffsetX();
            float n3 = this.getViewportWidth() + n2;
            final float scaleX = this.getScaleX();
            if (scaleX < 1.0f && scaleX > 0.0f) {
                final float n4 = this.getMeasuredWidth() / 2;
                n2 = n4 - (n4 - n2) / scaleX;
                n3 = (n3 - n4) / scaleX + n4;
            }
            int i = this.numCustomPages();
            int n5 = n;
            int n6 = n;
            while (i < childCount) {
                final View page = this.getPageAt(i);
                final float n7 = page.getLeft() + page.getTranslationX() - this.getScrollX();
                int n8;
                int n9;
                if (n7 <= n3 && page.getMeasuredWidth() + n7 >= n2) {
                    if (n6 == n) {
                        n6 = i;
                    }
                    n8 = n6;
                    n9 = i;
                }
                else {
                    final int n10 = n5;
                    n8 = n6;
                    n9 = n10;
                }
                ++i;
                final int n11 = n9;
                n6 = n8;
                n5 = n11;
            }
            int boundToRange;
            int boundToRange2;
            if (this.mForceDrawAdjacentPages) {
                boundToRange = Utilities.boundToRange(this.getCurrentPage() - 1, this.numCustomPages(), n5);
                boundToRange2 = Utilities.boundToRange(this.getCurrentPage() + 1, boundToRange, this.getPageCount() - 1);
            }
            else {
                boundToRange2 = n5;
                boundToRange = n6;
            }
            while (true) {
                Label_0455: {
                    if (boundToRange != boundToRange2) {
                        break Label_0455;
                    }
                    int n13;
                    int n14;
                    if (boundToRange2 < childCount - 1) {
                        final int n12 = boundToRange2 + 1;
                        n13 = boundToRange;
                        n14 = n12;
                    }
                    else {
                        if (boundToRange <= 0) {
                            break Label_0455;
                        }
                        n13 = boundToRange - 1;
                        n14 = boundToRange2;
                    }
                    for (int j = this.numCustomPages(); j < childCount; ++j) {
                        ((CellLayout)this.getPageAt(j)).enableHardwareLayer(n13 <= j && j <= n14);
                    }
                    return;
                }
                int n13 = boundToRange;
                int n14 = boundToRange2;
                continue;
            }
        }
    }
    
    private void fadeAndRemoveEmptyScreen(final int n, final int n2, final Runnable runnable, final boolean b) {
        final int n3 = 1;
        final float[] array = new float[n3];
        array[0] = 0.0f;
        final PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("alpha", array);
        final float[] array2 = new float[n3];
        array2[0] = 0.0f;
        final PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("backgroundAlpha", array2);
        final CellLayout cellLayout = (CellLayout)this.mWorkspaceScreens.get(-201L);
        this.mRemoveEmptyScreenRunnable = new Workspace$2(this, cellLayout, b);
        final PropertyValuesHolder[] array3 = { ofFloat, null };
        array3[n3] = ofFloat2;
        final ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder((Object)cellLayout, array3);
        ofPropertyValuesHolder.setDuration((long)n2);
        ofPropertyValuesHolder.setStartDelay((long)n);
        ofPropertyValuesHolder.addListener((Animator$AnimatorListener)new Workspace$3(this, runnable));
        ofPropertyValuesHolder.start();
    }
    
    private int getDefaultPage() {
        return this.numCustomPages();
    }
    
    private void getFinalPositionForDropAnimation(final int[] array, final float[] array2, final DragView dragView, final CellLayout finalTransitionTransform, final ItemInfo itemInfo, final int[] array3, final boolean b) {
        final Rect estimateItemPosition = this.estimateItemPosition(finalTransitionTransform, array3[0], array3[1], itemInfo.spanX, itemInfo.spanY);
        if (itemInfo.itemType == 4) {
            final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
            Utilities.shrinkRect(estimateItemPosition, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        }
        array[0] = estimateItemPosition.left;
        array[1] = estimateItemPosition.top;
        this.setFinalTransitionTransform(finalTransitionTransform);
        final float descendantCoordRelativeToSelf = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf((View)finalTransitionTransform, array, true);
        this.resetTransitionTransform(finalTransitionTransform);
        if (b) {
            final float n = estimateItemPosition.width() * 1.0f / dragView.getMeasuredWidth();
            final float n2 = estimateItemPosition.height() * 1.0f / dragView.getMeasuredHeight();
            array[0] -= (int)((dragView.getMeasuredWidth() - estimateItemPosition.width() * descendantCoordRelativeToSelf) / 2.0f - Math.ceil(finalTransitionTransform.getUnusedHorizontalSpace() / 2.0f));
            final int n3 = 1;
            array[n3] -= (int)((dragView.getMeasuredHeight() - estimateItemPosition.height() * descendantCoordRelativeToSelf) / 2.0f);
            array2[0] = n * descendantCoordRelativeToSelf;
            array2[1] = n2 * descendantCoordRelativeToSelf;
        }
        else {
            final float n4 = dragView.getInitialScale() * descendantCoordRelativeToSelf;
            array[0] += (int)((n4 - 1.0f) * dragView.getWidth() / 2.0f);
            final int n5 = 1;
            array[n5] += (int)((n4 - 1.0f) * dragView.getHeight() / 2.0f);
            array2[0] = (array2[1] = n4);
            final Rect dragRegion = dragView.getDragRegion();
            if (dragRegion != null) {
                array[0] += (int)(dragRegion.left * descendantCoordRelativeToSelf);
                final int n6 = 1;
                array[n6] += (int)(dragRegion.top * descendantCoordRelativeToSelf);
            }
        }
    }
    
    private void getOverviewModePages(final int[] array) {
        final int numCustomPages = this.numCustomPages();
        final int n = this.getChildCount() - 1;
        array[0] = Math.max(0, Math.min(numCustomPages, this.getChildCount() - 1));
        array[1] = Math.max(0, n);
    }
    
    private String getPageDescription(final int n) {
        final int n2 = 1;
        final int numCustomPages = this.numCustomPages();
        int n3 = this.getChildCount() - numCustomPages;
        final int index = this.mScreenOrder.indexOf(-201L);
        if (index >= 0 && n3 > n2) {
            if (n == index) {
                return this.getContext().getString(2131492936);
            }
            --n3;
        }
        if (n3 == 0) {
            return this.getContext().getString(2131492918);
        }
        final Context context = this.getContext();
        final Object[] array = { n + 1 - numCustomPages, null };
        array[n2] = n3;
        return context.getString(2131492935, array);
    }
    
    private boolean isDragWidget(final DropTarget$DragObject dropTarget$DragObject) {
        return dropTarget$DragObject.dragInfo instanceof LauncherAppWidgetInfo || dropTarget$DragObject.dragInfo instanceof PendingAddWidgetInfo;
    }
    
    private boolean isScrollingOverlay() {
        boolean b = true;
        if (this.mLauncherOverlay != null) {
            if ((!this.mIsRtl || this.getUnboundedScrollX() <= this.mMaxScrollX) && (this.mIsRtl || this.getUnboundedScrollX() >= 0)) {
                b = false;
            }
        }
        else {
            b = false;
        }
        return b;
    }
    
    private void manageFolderFeedback(final CellLayout cellLayout, final int[] array, final float n, final DropTarget$DragObject dropTarget$DragObject) {
        final int dragMode = 2;
        final int n2 = 1;
        if (n > this.mMaxDistanceForFolderCreation) {
            return;
        }
        final View child = this.mDragTargetLayout.getChildAt(this.mTargetCell[0], this.mTargetCell[n2]);
        final ItemInfo dragInfo = dropTarget$DragObject.dragInfo;
        final boolean willCreateUserFolder = this.willCreateUserFolder(dragInfo, child, false);
        if (this.mDragMode == 0 && willCreateUserFolder && (this.mFolderCreationAlarm.alarmPending() ^ true)) {
            final Workspace$FolderCreationAlarmListener onAlarmListener = new Workspace$FolderCreationAlarmListener(this, cellLayout, array[0], array[n2]);
            if (!dropTarget$DragObject.accessibleDrag) {
                this.mFolderCreationAlarm.setOnAlarmListener(onAlarmListener);
                this.mFolderCreationAlarm.setAlarm(0L);
            }
            else {
                onAlarmListener.onAlarm(this.mFolderCreationAlarm);
            }
            if (dropTarget$DragObject.stateAnnouncer != null) {
                dropTarget$DragObject.stateAnnouncer.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(child, this.getContext()));
            }
            return;
        }
        final boolean willAddToExistingUserFolder = this.willAddToExistingUserFolder(dragInfo, child);
        if (willAddToExistingUserFolder && this.mDragMode == 0) {
            (this.mDragOverFolderIcon = (FolderIcon)child).onDragEnter(dragInfo);
            if (cellLayout != null) {
                cellLayout.clearDragOutlines();
            }
            this.setDragMode(dragMode);
            if (dropTarget$DragObject.stateAnnouncer != null) {
                dropTarget$DragObject.stateAnnouncer.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(child, this.getContext()));
            }
            return;
        }
        if (this.mDragMode == dragMode && (willAddToExistingUserFolder ^ true)) {
            this.setDragMode(0);
        }
        if (this.mDragMode == n2 && (willCreateUserFolder ^ true)) {
            this.setDragMode(0);
        }
    }
    
    private void onDropExternal(final int[] array, final CellLayout finalTransitionTransform, final DropTarget$DragObject dropTarget$DragObject) {
        final Workspace$9 postAnimationRunnable = new Workspace$9(this);
        if (dropTarget$DragObject.dragInfo instanceof PendingAddShortcutInfo) {
            final ShortcutInfo shortcutInfo = ((PendingAddShortcutInfo)dropTarget$DragObject.dragInfo).activityInfo.createShortcutInfo();
            if (shortcutInfo != null) {
                dropTarget$DragObject.dragInfo = shortcutInfo;
            }
        }
        ShortcutInfo dragInfo;
        final ItemInfo itemInfo = dragInfo = (ShortcutInfo)dropTarget$DragObject.dragInfo;
        int n = itemInfo.spanX;
        int n2 = itemInfo.spanY;
        if (this.mDragInfo != null) {
            n = this.mDragInfo.spanX;
            n2 = this.mDragInfo.spanY;
        }
        int n3;
        if (this.mLauncher.isHotseatLayout((View)finalTransitionTransform)) {
            n3 = -101;
        }
        else {
            n3 = -100;
        }
        final long n4 = n3;
        final long idForScreen = this.getIdForScreen(finalTransitionTransform);
        if (!this.mLauncher.isHotseatLayout((View)finalTransitionTransform) && idForScreen != this.getScreenIdForPageIndex(this.mCurrentPage) && this.mState != Workspace$State.SPRING_LOADED) {
            this.snapToScreenId(idForScreen, null);
        }
        if (dragInfo instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo)dragInfo;
            final boolean b = true;
            while (true) {
                Label_1974: {
                    if (pendingAddItemInfo.itemType != 1) {
                        break Label_1974;
                    }
                    this.mTargetCell = this.findNearestArea(array[0], array[1], n, n2, finalTransitionTransform, this.mTargetCell);
                    final float distanceFromCell = finalTransitionTransform.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
                    if (!this.willCreateUserFolder(dropTarget$DragObject.dragInfo, finalTransitionTransform, this.mTargetCell, distanceFromCell, true) && !this.willAddToExistingUserFolder(dropTarget$DragObject.dragInfo, finalTransitionTransform, this.mTargetCell, distanceFromCell)) {
                        break Label_1974;
                    }
                    final boolean b2 = false;
                    final ItemInfo dragInfo2;
                    final ItemInfo itemInfo2 = dragInfo2 = dropTarget$DragObject.dragInfo;
                    int n5 = 0;
                    if (b2) {
                        int n6 = itemInfo2.spanX;
                        int n7 = itemInfo2.spanY;
                        if (itemInfo2.minSpanX > 0 && itemInfo2.minSpanY > 0) {
                            n6 = itemInfo2.minSpanX;
                            n7 = itemInfo2.minSpanY;
                        }
                        final int[] array2 = new int[2];
                        this.mTargetCell = finalTransitionTransform.performReorder((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], n6, n7, ((PendingAddItemInfo)dragInfo).spanX, ((PendingAddItemInfo)dragInfo).spanY, null, this.mTargetCell, array2, 3);
                        int n8;
                        if (array2[0] != dragInfo2.spanX || array2[1] != dragInfo2.spanY) {
                            n8 = 1;
                        }
                        else {
                            n8 = 0;
                        }
                        dragInfo2.spanX = array2[0];
                        dragInfo2.spanY = array2[1];
                        n5 = n8;
                    }
                    final Workspace$10 workspace$10 = new Workspace$10(this, pendingAddItemInfo, n4, idForScreen, dragInfo2);
                    final boolean b3 = pendingAddItemInfo.itemType == 4 || (pendingAddItemInfo.itemType == 5 && true);
                    AppWidgetHostView boundWidget;
                    if (b3) {
                        boundWidget = ((PendingAddWidgetInfo)pendingAddItemInfo).boundWidget;
                    }
                    else {
                        boundWidget = null;
                    }
                    if (boundWidget != null && n5 != 0) {
                        AppWidgetResizeFrame.updateWidgetSizeRanges(boundWidget, this.mLauncher, dragInfo2.spanX, dragInfo2.spanY);
                    }
                    int n9 = 0;
                    if (b3 && ((PendingAddWidgetInfo)pendingAddItemInfo).info != null && ((PendingAddWidgetInfo)pendingAddItemInfo).getHandler().needsConfigure()) {
                        n9 = 1;
                    }
                    this.animateWidgetDrop(dragInfo, finalTransitionTransform, dropTarget$DragObject.dragView, workspace$10, n9, (View)boundWidget, true);
                    return;
                }
                final boolean b2 = b;
                continue;
            }
        }
        Object o = null;
        switch (dragInfo.itemType) {
            default: {
                throw new IllegalStateException("Unknown item type: " + dragInfo.itemType);
            }
            case 0:
            case 1:
            case 6: {
                ShortcutInfo shortcutInfo2;
                if (dragInfo.container == -1) {
                    if (dragInfo instanceof AppInfo) {
                        final ShortcutInfo shortcut = ((AppInfo)dragInfo).makeShortcut();
                        dropTarget$DragObject.dragInfo = shortcut;
                        shortcutInfo2 = shortcut;
                    }
                    else {
                        shortcutInfo2 = dragInfo;
                    }
                }
                else {
                    shortcutInfo2 = dragInfo;
                }
                o = this.mLauncher.createShortcut(finalTransitionTransform, shortcutInfo2);
                dragInfo = shortcutInfo2;
                break;
            }
            case 2: {
                o = FolderIcon.fromXml(2130968597, this.mLauncher, finalTransitionTransform, (FolderInfo)dragInfo);
                break;
            }
        }
        if (array != null) {
            this.mTargetCell = this.findNearestArea(array[0], array[1], n, n2, finalTransitionTransform, this.mTargetCell);
            final float distanceFromCell2 = finalTransitionTransform.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
            dropTarget$DragObject.postAnimationRunnable = postAnimationRunnable;
            if (this.createUserFolderIfNecessary((View)o, n4, finalTransitionTransform, this.mTargetCell, distanceFromCell2, true, dropTarget$DragObject.dragView, dropTarget$DragObject.postAnimationRunnable)) {
                return;
            }
            if (this.addToExistingFolderIfNecessary((View)o, finalTransitionTransform, this.mTargetCell, distanceFromCell2, dropTarget$DragObject, true)) {
                return;
            }
        }
        if (array != null) {
            this.mTargetCell = finalTransitionTransform.performReorder((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], 1, 1, 1, 1, null, this.mTargetCell, null, 3);
        }
        else {
            finalTransitionTransform.findCellForSpan(this.mTargetCell, 1, 1);
        }
        this.mLauncher.getModelWriter().addOrMoveItemInDatabase(dragInfo, n4, idForScreen, this.mTargetCell[0], this.mTargetCell[1]);
        this.addInScreen((View)o, n4, idForScreen, this.mTargetCell[0], this.mTargetCell[1], dragInfo.spanX, dragInfo.spanY);
        finalTransitionTransform.onDropChild((View)o);
        finalTransitionTransform.getShortcutsAndWidgets().measureChild((View)o);
        if (dropTarget$DragObject.dragView != null) {
            this.setFinalTransitionTransform(finalTransitionTransform);
            this.mLauncher.getDragLayer().animateViewIntoPosition(dropTarget$DragObject.dragView, (View)o, postAnimationRunnable, (View)this);
            this.resetTransitionTransform(finalTransitionTransform);
        }
    }
    
    private boolean setDropLayoutForDragObject(final DropTarget$DragObject dropTarget$DragObject, final float n, final float n2) {
        int n3 = -1;
        CellLayout cellLayout = null;
        final int n4 = 1;
        if (this.mLauncher.getHotseat() != null && (this.isDragWidget(dropTarget$DragObject) ^ true) && this.isPointInSelfOverHotseat(dropTarget$DragObject.x, dropTarget$DragObject.y)) {
            cellLayout = this.mLauncher.getHotseat().getLayout();
        }
        final int nextPage = this.getNextPage();
        if (cellLayout == null && (this.isPageInTransition() ^ true)) {
            this.mTempTouchCoordinates[0] = Math.min(n, dropTarget$DragObject.x);
            this.mTempTouchCoordinates[n4] = dropTarget$DragObject.y;
            int n5;
            if (this.mIsRtl) {
                n5 = n4;
            }
            else {
                n5 = n3;
            }
            cellLayout = this.verifyInsidePage(n5 + nextPage, this.mTempTouchCoordinates);
        }
        if (cellLayout == null && (this.isPageInTransition() ^ true)) {
            this.mTempTouchCoordinates[0] = Math.max(n, dropTarget$DragObject.x);
            this.mTempTouchCoordinates[n4] = dropTarget$DragObject.y;
            if (!this.mIsRtl) {
                n3 = n4;
            }
            cellLayout = this.verifyInsidePage(nextPage + n3, this.mTempTouchCoordinates);
        }
        if (cellLayout == null && nextPage >= this.numCustomPages() && nextPage < this.getPageCount()) {
            cellLayout = (CellLayout)this.getChildAt(nextPage);
        }
        if (cellLayout != this.mDragTargetLayout) {
            this.setCurrentDropLayout(cellLayout);
            this.setCurrentDragOverlappingLayout(cellLayout);
            return n4 != 0;
        }
        return false;
    }
    
    private void setHotseatAlphaAtIndex(final float n, final int n2) {
        final int n3 = 2;
        this.mHotseatAlpha[n2] = n;
        final float alpha = this.mHotseatAlpha[0] * this.mHotseatAlpha[1] * this.mHotseatAlpha[n3];
        final float alpha2 = this.mHotseatAlpha[0] * this.mHotseatAlpha[n3];
        this.mLauncher.getHotseat().setAlpha(alpha);
        this.mPageIndicator.setAlpha(alpha2);
    }
    
    private void setWorkspaceTranslationAndAlpha(final Workspace$Direction workspace$Direction, final float n, final float n2) {
        final Property -get0 = workspace$Direction.viewProperty;
        this.mPageAlpha[workspace$Direction.ordinal()] = n2;
        final float n3 = this.mPageAlpha[1] * this.mPageAlpha[0];
        final View child = this.getChildAt(this.getCurrentPage());
        if (child != null) {
            -get0.set((Object)child, (Object)n);
            child.setAlpha(n3);
        }
        if (Float.compare(n, 0.0f) == 0) {
            for (int i = this.getChildCount() - 1; i >= 0; --i) {
                final View child2 = this.getChildAt(i);
                -get0.set((Object)child2, (Object)n);
                child2.setAlpha(n3);
            }
        }
    }
    
    private void setupLayoutTransition() {
        (this.mLayoutTransition = new LayoutTransition()).enableTransitionType(3);
        this.mLayoutTransition.enableTransitionType(1);
        this.mLayoutTransition.disableTransitionType(2);
        this.mLayoutTransition.disableTransitionType(0);
        this.setLayoutTransition(this.mLayoutTransition);
    }
    
    private boolean shouldConsumeTouch(final View view) {
        boolean b = true;
        if (this.workspaceIconsCanBeDragged() && (this.workspaceInModalState() || this.indexOfChild(view) == this.mCurrentPage)) {
            b = false;
        }
        return b;
    }
    
    private void showOutOfSpaceMessage(final boolean b) {
        int n;
        if (b) {
            n = 2131492916;
        }
        else {
            n = 2131492915;
        }
        Toast.makeText((Context)this.mLauncher, (CharSequence)this.mLauncher.getString(n), 0).show();
    }
    
    private void showPageIndicatorAtCurrentScroll() {
        if (this.mPageIndicator != null) {
            this.mPageIndicator.setScroll(this.getScrollX(), this.computeMaxScrollX());
        }
    }
    
    private boolean transitionStateShouldAllowDrop() {
        boolean b = true;
        boolean b2 = false;
        if (!this.isSwitchingState() || this.mTransitionProgress > 0.25f) {
            if (this.mState != Workspace$State.NORMAL && this.mState != Workspace$State.SPRING_LOADED) {
                b = false;
            }
            b2 = b;
        }
        return b2;
    }
    
    private void updateAccessibilityFlags(final CellLayout cellLayout, final int n) {
        final int importantForAccessibility = 4;
        int importantForAccessibility2 = 0;
        if (this.mState == Workspace$State.OVERVIEW) {
            cellLayout.setImportantForAccessibility(1);
            cellLayout.getShortcutsAndWidgets().setImportantForAccessibility(importantForAccessibility);
            cellLayout.setContentDescription((CharSequence)this.getPageDescription(n));
            if (n > 0) {
                if (this.mPagesAccessibilityDelegate == null) {
                    this.mPagesAccessibilityDelegate = new OverviewScreenAccessibilityDelegate(this);
                }
                cellLayout.setAccessibilityDelegate(this.mPagesAccessibilityDelegate);
            }
        }
        else {
            if (this.mState != Workspace$State.NORMAL) {
                importantForAccessibility2 = importantForAccessibility;
            }
            cellLayout.setImportantForAccessibility(2);
            cellLayout.getShortcutsAndWidgets().setImportantForAccessibility(importantForAccessibility2);
            cellLayout.setContentDescription((CharSequence)null);
            cellLayout.setAccessibilityDelegate((View$AccessibilityDelegate)null);
        }
    }
    
    private void updatePageAlphaValues() {
        if (!this.workspaceInModalState() && (this.mIsSwitchingState ^ true)) {
            final int n = this.getScrollX() + this.getViewportWidth() / 2;
            for (int i = this.numCustomPages(); i < this.getChildCount(); ++i) {
                final CellLayout cellLayout = (CellLayout)this.getChildAt(i);
                if (cellLayout != null) {
                    final float alpha = 1.0f - Math.abs(this.getScrollProgress(n, (View)cellLayout, i));
                    if (this.mWorkspaceFadeInAdjacentScreens) {
                        cellLayout.getShortcutsAndWidgets().setAlpha(alpha);
                    }
                    else {
                        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
                        int importantForAccessibility;
                        if (alpha > 0.0f) {
                            importantForAccessibility = 0;
                        }
                        else {
                            importantForAccessibility = 4;
                        }
                        shortcutsAndWidgets.setImportantForAccessibility(importantForAccessibility);
                    }
                }
            }
        }
    }
    
    private void updateStateForCustomContent() {
        final long n = -301L;
        float backgroundAlpha = 0.0f;
        float max;
        float n7;
        if (this.hasCustomContent()) {
            final int index = this.mScreenOrder.indexOf(n);
            final int n2 = this.getScrollX() - this.getScrollForPage(index) - this.getLayoutTransitionOffsetForPage(index);
            final float n3 = this.getScrollForPage(index + 1) - this.getScrollForPage(index);
            final float n4 = n3 - n2;
            final float n5 = (n3 - n2) / n3;
            float n6;
            if (this.mIsRtl) {
                n6 = Math.min(0.0f, n4);
            }
            else {
                n6 = Math.max(0.0f, n4);
            }
            max = Math.max(0.0f, n5);
            n7 = n6;
        }
        else {
            max = 0.0f;
            n7 = 0.0f;
        }
        if (Float.compare(max, this.mLastCustomContentScrollProgress) == 0) {
            return;
        }
        final CellLayout cellLayout = (CellLayout)this.mWorkspaceScreens.get(n);
        if (max > 0.0f && cellLayout.getVisibility() != 0 && (this.workspaceInModalState() ^ true)) {
            cellLayout.setVisibility(0);
        }
        this.mLastCustomContentScrollProgress = max;
        if (this.mState == Workspace$State.NORMAL) {
            final DragLayer dragLayer = this.mLauncher.getDragLayer();
            if (max != 1.0f) {
                backgroundAlpha = 0.8f * max;
            }
            dragLayer.setBackgroundAlpha(backgroundAlpha);
        }
        if (this.mLauncher.getHotseat() != null) {
            this.mLauncher.getHotseat().setTranslationX(n7);
        }
        if (this.mPageIndicator != null) {
            this.mPageIndicator.setTranslationX(n7);
        }
        if (this.mCustomContentCallbacks != null) {
            this.mCustomContentCallbacks.onScrollProgressChanged(max);
        }
    }
    
    private CellLayout verifyInsidePage(final int n, final float[] array) {
        final int n2 = 1;
        if (n >= this.numCustomPages() && n < this.getPageCount()) {
            final CellLayout cellLayout = (CellLayout)this.getChildAt(n);
            this.mapPointFromSelfToChild((View)cellLayout, array);
            if (array[0] >= 0.0f && array[0] <= cellLayout.getWidth() && array[n2] >= 0.0f && array[n2] <= cellLayout.getHeight()) {
                return cellLayout;
            }
        }
        return null;
    }
    
    public boolean acceptDrop(final DropTarget$DragObject dropTarget$DragObject) {
        final CellLayout mDropToLayout = this.mDropToLayout;
        if (dropTarget$DragObject.dragSource != this) {
            if (mDropToLayout == null) {
                return false;
            }
            if (!this.transitionStateShouldAllowDrop()) {
                return false;
            }
            this.mDragViewVisualCenter = dropTarget$DragObject.getVisualCenter(this.mDragViewVisualCenter);
            if (this.mLauncher.isHotseatLayout((View)mDropToLayout)) {
                this.mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            }
            else {
                this.mapPointFromSelfToChild((View)mDropToLayout, this.mDragViewVisualCenter);
            }
            int n;
            int n2;
            if (this.mDragInfo != null) {
                final CellLayout$CellInfo mDragInfo = this.mDragInfo;
                final int spanX = mDragInfo.spanX;
                n = mDragInfo.spanY;
                n2 = spanX;
            }
            else {
                final int spanX2 = dropTarget$DragObject.dragInfo.spanX;
                n = dropTarget$DragObject.dragInfo.spanY;
                n2 = spanX2;
            }
            int minSpanX;
            int minSpanY;
            if (dropTarget$DragObject.dragInfo instanceof PendingAddWidgetInfo) {
                minSpanX = ((PendingAddWidgetInfo)dropTarget$DragObject.dragInfo).minSpanX;
                minSpanY = ((PendingAddWidgetInfo)dropTarget$DragObject.dragInfo).minSpanY;
            }
            else {
                minSpanY = n;
                minSpanX = n2;
            }
            this.mTargetCell = this.findNearestArea((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], minSpanX, minSpanY, mDropToLayout, this.mTargetCell);
            final float distanceFromCell = mDropToLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
            if (this.mCreateUserFolderOnDrop && this.willCreateUserFolder(dropTarget$DragObject.dragInfo, mDropToLayout, this.mTargetCell, distanceFromCell, true)) {
                return true;
            }
            if (this.mAddToExistingFolderOnDrop && this.willAddToExistingUserFolder(dropTarget$DragObject.dragInfo, mDropToLayout, this.mTargetCell, distanceFromCell)) {
                return true;
            }
            this.mTargetCell = mDropToLayout.performReorder((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], minSpanX, minSpanY, n2, n, null, this.mTargetCell, new int[2], 4);
            int n3;
            if (this.mTargetCell[0] >= 0 && this.mTargetCell[1] >= 0) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 == 0) {
                this.onNoCellFound((View)mDropToLayout);
                return false;
            }
        }
        if (this.getIdForScreen(mDropToLayout) == -201L) {
            this.commitExtraEmptyScreen();
        }
        return true;
    }
    
    public boolean addExtraEmptyScreen() {
        final long n = -201L;
        if (!this.mWorkspaceScreens.containsKey(n)) {
            this.insertNewWorkspaceScreen(n);
            return true;
        }
        return false;
    }
    
    public void addExtraEmptyScreenOnDrag() {
        final long n = -201L;
        boolean b = false;
        final boolean b2 = true;
        this.mRemoveEmptyScreenRunnable = null;
        boolean b3;
        if (this.mDragSourceInternal != null) {
            b3 = (this.mDragSourceInternal.getChildCount() == (b2 ? 1 : 0) && b2);
            if (this.indexOfChild((View)this.mDragSourceInternal.getParent()) == this.getChildCount() - 1) {
                b = b2;
            }
        }
        else {
            b3 = false;
        }
        if (b3 && b) {
            return;
        }
        if (!this.mWorkspaceScreens.containsKey(n)) {
            this.insertNewWorkspaceScreen(n);
        }
    }
    
    public void addInScreen(final View view, final ItemInfo itemInfo) {
        this.addInScreen(view, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
    }
    
    public void addInScreenFromBind(final View view, final ItemInfo itemInfo) {
        int n = itemInfo.cellX;
        int n2 = itemInfo.cellY;
        if (itemInfo.container == -101) {
            final int n3 = (int)itemInfo.screenId;
            n = this.mLauncher.getHotseat().getCellXFromOrder(n3);
            n2 = this.mLauncher.getHotseat().getCellYFromOrder(n3);
        }
        this.addInScreen(view, itemInfo.container, itemInfo.screenId, n, n2, itemInfo.spanX, itemInfo.spanY);
    }
    
    boolean addToExistingFolderIfNecessary(final View view, final CellLayout cellLayout, final int[] array, final float n, final DropTarget$DragObject dropTarget$DragObject, final boolean b) {
        final int n2 = 1;
        if (n > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        final View child = cellLayout.getChildAt(array[0], array[n2]);
        if (!this.mAddToExistingFolderOnDrop) {
            return false;
        }
        this.mAddToExistingFolderOnDrop = false;
        if (child instanceof FolderIcon) {
            final FolderIcon folderIcon = (FolderIcon)child;
            if (folderIcon.acceptDrop(dropTarget$DragObject.dragInfo)) {
                folderIcon.onDrop(dropTarget$DragObject);
                if (!b) {
                    this.getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
                }
                return n2 != 0;
            }
        }
        return false;
    }
    
    public void animateWidgetDrop(final ItemInfo itemInfo, final CellLayout cellLayout, final DragView dragView, final Runnable runnable, final int n, final View view, final boolean b) {
        final Rect rect = new Rect();
        this.mLauncher.getDragLayer().getViewRectRelativeToSelf((View)dragView, rect);
        final int[] array = new int[2];
        final float[] array2 = new float[2];
        this.getFinalPositionForDropAnimation(array, array2, dragView, cellLayout, itemInfo, this.mTargetCell, itemInfo instanceof PendingAddShortcutInfo ^ true);
        final int n2 = this.mLauncher.getResources().getInteger(2131558416) - 200;
        final boolean b2 = itemInfo.itemType == 4 || itemInfo.itemType == 5;
        if ((n == 2 || b) && view != null) {
            dragView.setCrossFadeBitmap(this.createWidgetBitmap(itemInfo, view));
            dragView.crossFade((int)(n2 * 0.8f));
        }
        else if (b2 && b) {
            array2[0] = (array2[1] = Math.min(array2[0], array2[1]));
        }
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        if (n == 4) {
            this.mLauncher.getDragLayer().animateViewIntoPosition(dragView, array, 0.0f, 0.1f, 0.1f, 0, runnable, n2);
        }
        else {
            int n3;
            if (n == 1) {
                n3 = 2;
            }
            else {
                n3 = 0;
            }
            dragLayer.animateViewIntoPosition(dragView, rect.left, rect.top, array[0], array[1], 1.0f, 1.0f, 1.0f, array2[0], array2[1], new Workspace$11(this, view, runnable), n3, n2, (View)this);
        }
    }
    
    public void announceForAccessibility(final CharSequence charSequence) {
        if (!this.mLauncher.isAppsViewVisible()) {
            super.announceForAccessibility(charSequence);
        }
    }
    
    public DragView beginDragShared(final View view, final DragSource dragSource, final ItemInfo itemInfo, final DragPreviewProvider mOutlineProvider, final DragOptions dragOptions) {
        Rect rect = null;
        view.clearFocus();
        view.setPressed(false);
        this.mOutlineProvider = mOutlineProvider;
        final Bitmap dragBitmap = mOutlineProvider.createDragBitmap(this.mCanvas);
        final int n = mOutlineProvider.previewPadding / 2;
        final float scaleAndPosition = mOutlineProvider.getScaleAndPosition(dragBitmap, this.mTempXY);
        final int n2 = this.mTempXY[0];
        int n3 = this.mTempXY[1];
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        Point point;
        if (view instanceof BubbleTextView) {
            rect = new Rect();
            ((BubbleTextView)view).getIconBounds(rect);
            n3 += rect.top;
            point = new Point(-n, n);
        }
        else if (view instanceof FolderIcon) {
            final int folderIconSizePx = deviceProfile.folderIconSizePx;
            point = new Point(-n, n - view.getPaddingTop());
            rect = new Rect(0, view.getPaddingTop(), view.getWidth(), folderIconSizePx);
        }
        else if (mOutlineProvider instanceof ShortcutDragPreviewProvider) {
            point = new Point(-n, n);
        }
        else {
            point = null;
        }
        if (view instanceof BubbleTextView) {
            ((BubbleTextView)view).clearPressedBackground();
        }
        if (view.getParent() instanceof ShortcutAndWidgetContainer) {
            this.mDragSourceInternal = (ShortcutAndWidgetContainer)view.getParent();
        }
        if (view instanceof BubbleTextView && (dragOptions.isAccessibleDrag ^ true)) {
            final PopupContainerWithArrow showForIcon = PopupContainerWithArrow.showForIcon((BubbleTextView)view);
            if (showForIcon != null) {
                dragOptions.preDragCondition = showForIcon.createPreDragCondition();
                this.mLauncher.getUserEventDispatcher().resetElapsedContainerMillis();
            }
        }
        final DragView startDrag = this.mDragController.startDrag(dragBitmap, n2, n3, dragSource, itemInfo, point, rect, scaleAndPosition, dragOptions);
        startDrag.setIntrinsicIconScaleFactor(dragSource.getIntrinsicIconScaleFactor());
        dragBitmap.recycle();
        return startDrag;
    }
    
    public void beginDragShared(final View view, final DragSource dragSource, final DragOptions dragOptions) {
        final Object tag = view.getTag();
        if (!(tag instanceof ItemInfo)) {
            throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + view + "  tag: " + view.getTag());
        }
        this.beginDragShared(view, dragSource, (ItemInfo)tag, new DragPreviewProvider(view), dragOptions);
    }
    
    public void bindAndInitFirstWorkspaceScreen(final View view) {
        final boolean b = true;
        final CellLayout insertNewWorkspaceScreen = this.insertNewWorkspaceScreen(0L, 0);
        View inflate;
        if (view == null) {
            inflate = LayoutInflater.from(this.getContext()).inflate(2130968618, (ViewGroup)insertNewWorkspaceScreen, false);
        }
        else {
            inflate = view;
        }
        final CellLayout$LayoutParams cellLayout$LayoutParams = new CellLayout$LayoutParams(0, 0, insertNewWorkspaceScreen.getCountX(), b ? 1 : 0);
        cellLayout$LayoutParams.canReorder = false;
        if (!insertNewWorkspaceScreen.addViewToCellLayout(inflate, 0, 2131623953, cellLayout$LayoutParams, b)) {
            Log.e("Launcher.Workspace", "Failed to add to item at (0, 0) to CellLayout");
        }
    }
    
    public void buildPageHardwareLayers() {
        this.updateChildrenLayersEnabled(true);
        if (this.getWindowToken() != null) {
            for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
                ((CellLayout)this.getChildAt(i)).buildHardwareLayer();
            }
        }
        this.updateChildrenLayersEnabled(false);
    }
    
    void clearDropTargets() {
        this.mapOverItems(false, new Workspace$18(this));
    }
    
    public long commitExtraEmptyScreen() {
        final long n = -201L;
        if (this.mLauncher.isWorkspaceLoading()) {
            return -1;
        }
        final CellLayout cellLayout = (CellLayout)this.mWorkspaceScreens.get(n);
        this.mWorkspaceScreens.remove(n);
        this.mScreenOrder.remove(n);
        final long long1 = LauncherSettings$Settings.call(this.getContext().getContentResolver(), "generate_new_screen_id").getLong("value");
        this.mWorkspaceScreens.put(long1, (Object)cellLayout);
        this.mScreenOrder.add(long1);
        LauncherModel.updateWorkspaceScreenOrder((Context)this.mLauncher, this.mScreenOrder);
        return long1;
    }
    
    public void computeScroll() {
        super.computeScroll();
        this.mWallpaperOffset.syncWithScroll();
    }
    
    public void computeScrollWithoutInvalidation() {
        this.computeScrollHelper(false);
    }
    
    public void createCustomContentContainer() {
        final long n = -301L;
        final CellLayout cellLayout = (CellLayout)LayoutInflater.from(this.getContext()).inflate(2130968634, (ViewGroup)this, false);
        cellLayout.disableDragTarget();
        cellLayout.disableJailContent();
        this.mWorkspaceScreens.put(n, (Object)cellLayout);
        this.mScreenOrder.add(0, n);
        cellLayout.setPadding(0, 0, 0, 0);
        this.addFullScreenPage((View)cellLayout);
        this.setCurrentPage(this.getCurrentPage() + 1);
    }
    
    public ValueAnimator createHotseatAlphaAnimator(final float n) {
        final int n2 = 1;
        final int n3 = 2;
        if (Float.compare(n, this.mHotseatAlpha[n3]) == 0) {
            final float[] array = new float[n3];
            array[n2] = (array[0] = 0.0f);
            return ValueAnimator.ofFloat(array);
        }
        final float[] array2 = new float[n3];
        array2[0] = this.mHotseatAlpha[n3];
        array2[n2] = n;
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(array2);
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new Workspace$4(this));
        final boolean enabled = ((AccessibilityManager)this.mLauncher.getSystemService("accessibility")).isEnabled();
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new AlphaUpdateListener((View)this.mLauncher.getHotseat(), enabled));
        ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new AlphaUpdateListener((View)this.mPageIndicator, enabled));
        return ofFloat;
    }
    
    boolean createUserFolderIfNecessary(final View view, final long n, final CellLayout cellLayout, final int[] array, final float n2, final boolean b, final DragView dragView, final Runnable runnable) {
        if (n2 > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        final View child = cellLayout.getChildAt(array[0], array[1]);
        boolean b2 = false;
        if (this.mDragInfo != null) {
            final CellLayout parentCellLayoutForView = this.getParentCellLayoutForView(this.mDragInfo.cell);
            if (this.mDragInfo.cellX == array[0] && this.mDragInfo.cellY == array[1]) {
                if (parentCellLayoutForView == cellLayout) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
            }
            else {
                b2 = false;
            }
        }
        if (child == null || b2 || (this.mCreateUserFolderOnDrop ^ true)) {
            return false;
        }
        this.mCreateUserFolderOnDrop = false;
        final long idForScreen = this.getIdForScreen(cellLayout);
        final boolean b3 = child.getTag() instanceof ShortcutInfo;
        final boolean b4 = view.getTag() instanceof ShortcutInfo;
        if (b3 && b4) {
            final ShortcutInfo shortcutInfo = (ShortcutInfo)view.getTag();
            final ShortcutInfo shortcutInfo2 = (ShortcutInfo)child.getTag();
            if (!b) {
                this.getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
            }
            final Rect rect = new Rect();
            final float descendantRectRelativeToSelf = this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(child, rect);
            cellLayout.removeView(child);
            final FolderIcon addFolder = this.mLauncher.addFolder(cellLayout, n, idForScreen, array[0], array[1]);
            shortcutInfo2.cellX = -1;
            shortcutInfo2.cellY = -1;
            shortcutInfo.cellX = -1;
            shortcutInfo.cellY = -1;
            int n3;
            if (dragView != null) {
                n3 = 1;
            }
            else {
                n3 = 0;
            }
            if (n3 != 0) {
                addFolder.setFolderBackground(this.mFolderCreateBg);
                this.mFolderCreateBg = new PreviewBackground();
                addFolder.performCreateAnimation(shortcutInfo2, child, shortcutInfo, dragView, rect, descendantRectRelativeToSelf, runnable);
            }
            else {
                addFolder.prepareCreateAnimation(child);
                addFolder.addItem(shortcutInfo2);
                addFolder.addItem(shortcutInfo);
            }
            return true;
        }
        return false;
    }
    
    public Bitmap createWidgetBitmap(final ItemInfo itemInfo, final View view) {
        final int n = 1073741824;
        final int n2 = 1;
        final int[] estimateItemSize = this.mLauncher.getWorkspace().estimateItemSize(itemInfo, false, n2 != 0);
        final int visibility = view.getVisibility();
        view.setVisibility(0);
        final int measureSpec = View$MeasureSpec.makeMeasureSpec(estimateItemSize[0], n);
        final int measureSpec2 = View$MeasureSpec.makeMeasureSpec(estimateItemSize[n2], n);
        final Bitmap bitmap = Bitmap.createBitmap(estimateItemSize[0], estimateItemSize[n2], Bitmap$Config.ARGB_8888);
        this.mCanvas.setBitmap(bitmap);
        view.measure(measureSpec, measureSpec2);
        view.layout(0, 0, estimateItemSize[0], estimateItemSize[n2]);
        view.draw(this.mCanvas);
        this.mCanvas.setBitmap((Bitmap)null);
        view.setVisibility(visibility);
        return bitmap;
    }
    
    public void deferCompleteDropAfterUninstallActivity() {
        this.mDeferDropAfterUninstall = true;
    }
    
    public void deferRemoveExtraEmptyScreen() {
        this.mDeferRemoveExtraEmptyScreen = true;
    }
    
    protected void determineScrollingStart(final MotionEvent motionEvent) {
        final float n = 0.5235988f;
        int n2 = 1;
        if (!this.isFinishedSwitchingState()) {
            return;
        }
        final float n3 = motionEvent.getX() - this.mXDown;
        final float abs = Math.abs(n3);
        final float abs2 = Math.abs(motionEvent.getY() - this.mYDown);
        if (Float.compare(abs, 0.0f) == 0) {
            return;
        }
        final float n4 = (float)Math.atan(abs2 / abs);
        if (abs > this.mTouchSlop || abs2 > this.mTouchSlop) {
            this.cancelCurrentPageLongPress();
        }
        int n5;
        if (this.mTouchDownTime - this.mCustomContentShowTime > 200L) {
            n5 = n2;
        }
        else {
            n5 = 0;
        }
        int n6;
        if (this.mIsRtl ? (n3 < 0.0f) : (n3 > 0.0f)) {
            n6 = n2;
        }
        else {
            n6 = 0;
        }
        if (this.getScreenIdForPageIndex(this.getCurrentPage()) != -301L) {
            n2 = 0;
        }
        if (n6 != 0 && n2 != 0 && n5 != 0) {
            return;
        }
        if (n2 != 0 && this.mCustomContentCallbacks != null && (this.mCustomContentCallbacks.isScrollingAllowed() ^ true)) {
            return;
        }
        if (n4 > 1.0471976f) {
            return;
        }
        if (n4 > n) {
            super.determineScrollingStart(motionEvent, (float)Math.sqrt((n4 - n) / n) * 4.0f + 1.0f);
        }
        else {
            super.determineScrollingStart(motionEvent);
        }
    }
    
    protected void determineScrollingStart(final MotionEvent motionEvent, final float n) {
        if (!this.isSwitchingState()) {
            super.determineScrollingStart(motionEvent, n);
        }
    }
    
    void disableLayoutTransitions() {
        this.setLayoutTransition((LayoutTransition)null);
    }
    
    protected void dispatchRestoreInstanceState(final SparseArray mSavedStates) {
        this.mSavedStates = mSavedStates;
    }
    
    public boolean dispatchUnhandledMove(final View view, final int n) {
        return !this.workspaceInModalState() && !(this.isFinishedSwitchingState() ^ true) && super.dispatchUnhandledMove(view, n);
    }
    
    public boolean enableFreeScroll() {
        if (this.getState() == Workspace$State.OVERVIEW) {
            return super.enableFreeScroll();
        }
        Log.w("Launcher.Workspace", "enableFreeScroll called but not in overview: state=" + this.getState());
        return false;
    }
    
    void enableLayoutTransitions() {
        this.setLayoutTransition(this.mLayoutTransition);
    }
    
    public Rect estimateItemPosition(final CellLayout cellLayout, final int n, final int n2, final int n3, final int n4) {
        final Rect rect = new Rect();
        cellLayout.cellToRect(n, n2, n3, n4, rect);
        return rect;
    }
    
    public int[] estimateItemSize(final ItemInfo itemInfo, final boolean b, final boolean b2) {
        final int n = -1 >>> 1;
        final int n2 = 1;
        final float workspaceSpringLoadShrinkFactor = this.mLauncher.getDeviceProfile().workspaceSpringLoadShrinkFactor;
        final int[] array = new int[2];
        if (this.getChildCount() > 0) {
            final CellLayout cellLayout = (CellLayout)this.getChildAt(this.numCustomPages());
            int n3;
            if (itemInfo.itemType == 4) {
                n3 = n2;
            }
            else {
                n3 = 0;
            }
            final Rect estimateItemPosition = this.estimateItemPosition(cellLayout, 0, 0, itemInfo.spanX, itemInfo.spanY);
            float shrinkRect = 1.0f;
            if (n3 != 0) {
                final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
                shrinkRect = Utilities.shrinkRect(estimateItemPosition, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
            }
            array[0] = estimateItemPosition.width();
            array[n2] = estimateItemPosition.height();
            if (n3 != 0 && b2) {
                array[0] /= (int)shrinkRect;
                array[n2] /= (int)shrinkRect;
            }
            if (b) {
                array[0] *= (int)workspaceSpringLoadShrinkFactor;
                array[n2] *= (int)workspaceSpringLoadShrinkFactor;
            }
            return array;
        }
        array[n2] = (array[0] = n);
        return array;
    }
    
    public void exitWidgetResizeMode() {
        this.mLauncher.getDragLayer().clearResizeFrame();
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        launcherLogProto$Target.pageIndex = this.getCurrentPage();
        launcherLogProto$Target2.containerType = 1;
        if (itemInfo.container == -101) {
            launcherLogProto$Target.rank = itemInfo.rank;
            launcherLogProto$Target2.containerType = 2;
        }
        else if (itemInfo.container >= 0L) {
            launcherLogProto$Target2.containerType = 3;
        }
    }
    
    int[] findNearestArea(final int n, final int n2, final int n3, final int n4, final CellLayout cellLayout, final int[] array) {
        return cellLayout.findNearestArea(n, n2, n3, n4, array);
    }
    
    ArrayList getAllShortcutAndWidgetContainers() {
        final ArrayList<ShortcutAndWidgetContainer> list = new ArrayList<ShortcutAndWidgetContainer>();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            list.add(((CellLayout)this.getChildAt(i)).getShortcutsAndWidgets());
        }
        if (this.mLauncher.getHotseat() != null) {
            list.add(this.mLauncher.getHotseat().getLayout().getShortcutsAndWidgets());
        }
        return list;
    }
    
    public CellLayout getCurrentDragOverlappingLayout() {
        return this.mDragOverlappingLayout;
    }
    
    protected String getCurrentPageDescription() {
        if (this.hasCustomContent() && this.getNextPage() == 0) {
            return this.mCustomContentDescription;
        }
        int n;
        if (this.mNextPage != -1) {
            n = this.mNextPage;
        }
        else {
            n = this.mCurrentPage;
        }
        return this.getPageDescription(n);
    }
    
    public int getCurrentPageOffsetFromCustomContent() {
        return this.getNextPage() - this.numCustomPages();
    }
    
    protected Launcher$CustomContentCallbacks getCustomContentCallbacks() {
        return this.mCustomContentCallbacks;
    }
    
    public int getDescendantFocusability() {
        if (this.workspaceInModalState()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }
    
    public View getFirstMatch(final Workspace$ItemOperator workspace$ItemOperator) {
        final View[] array = { null };
        this.mapOverItems(false, new Workspace$17(this, workspace$ItemOperator, array));
        return array[0];
    }
    
    protected void getFreeScrollPageRange(final int[] array) {
        this.getOverviewModePages(array);
    }
    
    public void getHitRectRelativeToDragLayer(final Rect rect) {
        this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf((View)this, rect);
    }
    
    public View getHomescreenIconByItemId(final long n) {
        return this.getFirstMatch(new Workspace$14(this, n));
    }
    
    public long getIdForScreen(final CellLayout cellLayout) {
        final int indexOfValue = this.mWorkspaceScreens.indexOfValue((Object)cellLayout);
        if (indexOfValue != -1) {
            return this.mWorkspaceScreens.keyAt(indexOfValue);
        }
        return -1;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return 1.0f;
    }
    
    float getOverviewModeShrinkFactor() {
        return this.mOverviewModeShrinkFactor;
    }
    
    int getOverviewModeTranslationY() {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        final int overviewModeButtonBarHeight = deviceProfile.getOverviewModeButtonBarHeight();
        final int n = (int)(this.mOverviewModeShrinkFactor * this.getNormalChildHeight());
        final Rect workspacePadding = deviceProfile.getWorkspacePadding(Workspace.sTempRect);
        final int n2 = this.mInsets.top + workspacePadding.top;
        final int n3 = this.getViewportHeight() - this.mInsets.bottom - workspacePadding.bottom;
        final int top = this.mInsets.top;
        return -((n3 - n2 - n) / 2 + n2) + ((this.getViewportHeight() - this.mInsets.bottom - overviewModeButtonBarHeight - top - n) / 2 + top);
    }
    
    public void getPageAreaRelativeToDragLayer(final Rect rect) {
        final int n = 1;
        final CellLayout cellLayout = (CellLayout)this.getChildAt(this.getNextPage());
        if (cellLayout == null) {
            return;
        }
        final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        this.mTempXY[0] = this.getViewportOffsetX() + this.getPaddingLeft() + shortcutsAndWidgets.getLeft();
        this.mTempXY[n] = cellLayout.getTop() + shortcutsAndWidgets.getTop();
        final float descendantCoordRelativeToSelf = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf((View)this, this.mTempXY);
        rect.set(this.mTempXY[0], this.mTempXY[n], (int)(this.mTempXY[0] + shortcutsAndWidgets.getMeasuredWidth() * descendantCoordRelativeToSelf), (int)(descendantCoordRelativeToSelf * shortcutsAndWidgets.getMeasuredHeight() + this.mTempXY[n]));
    }
    
    public int getPageIndexForScreenId(final long n) {
        return this.indexOfChild((View)this.mWorkspaceScreens.get(n));
    }
    
    protected String getPageIndicatorDescription() {
        return this.getResources().getString(2131492917);
    }
    
    CellLayout getParentCellLayoutForView(final View view) {
        for (final CellLayout cellLayout : this.getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout.getShortcutsAndWidgets().indexOfChild(view) > -1) {
                return cellLayout;
            }
        }
        return null;
    }
    
    public long getScreenIdForPageIndex(final int n) {
        if (n >= 0 && n < this.mScreenOrder.size()) {
            return this.mScreenOrder.get(n);
        }
        return -1;
    }
    
    public ArrayList getScreenOrder() {
        return this.mScreenOrder;
    }
    
    public CellLayout getScreenWithId(final long n) {
        return (CellLayout)this.mWorkspaceScreens.get(n);
    }
    
    float getSpringLoadedTranslationY() {
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        if (deviceProfile.isVerticalBarLayout() || this.getChildCount() == 0) {
            return 0.0f;
        }
        final float n = deviceProfile.workspaceSpringLoadShrinkFactor * this.getNormalChildHeight();
        final float n2 = this.mInsets.top + deviceProfile.dropTargetBarSizePx;
        final float n3 = (this.getViewportHeight() - this.mInsets.bottom - deviceProfile.getWorkspacePadding(Workspace.sTempRect).bottom - deviceProfile.workspaceSpringLoadedBottomSpace - n2 - n) / 2.0f + n2;
        final float n4 = this.getHeight() / 2;
        return (n3 - (this.getTop() + n4 - (n4 - this.getChildAt(0).getTop()) * deviceProfile.workspaceSpringLoadShrinkFactor)) / deviceProfile.workspaceSpringLoadShrinkFactor;
    }
    
    public Workspace$State getState() {
        return this.mState;
    }
    
    public WorkspaceStateTransitionAnimation getStateTransitionAnimation() {
        return this.mStateTransitionAnimation;
    }
    
    public LauncherAppWidgetHostView getWidgetForAppWidgetId(final int n) {
        return (LauncherAppWidgetHostView)this.getFirstMatch(new Workspace$16(this, n));
    }
    
    ArrayList getWorkspaceAndHotseatCellLayouts() {
        final ArrayList<CellLayout> list = new ArrayList<CellLayout>();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            list.add((CellLayout)this.getChildAt(i));
        }
        if (this.mLauncher.getHotseat() != null) {
            list.add(this.mLauncher.getHotseat().getLayout());
        }
        return list;
    }
    
    public boolean hasCustomContent() {
        return this.mScreenOrder.size() > 0 && this.mScreenOrder.get(0) == -301L;
    }
    
    public boolean hasExtraEmptyScreen() {
        int n = 1;
        final int n2 = this.getChildCount() - this.numCustomPages();
        if (!this.mWorkspaceScreens.containsKey(-201L) || n2 <= n) {
            n = 0;
        }
        return n != 0;
    }
    
    void hideCustomContentIfNecessary() {
        boolean b;
        if (this.mState != Workspace$State.NORMAL) {
            b = true;
        }
        else {
            b = false;
        }
        if (b && this.hasCustomContent()) {
            this.disableLayoutTransitions();
            ((CellLayout)this.mWorkspaceScreens.get(-301L)).setVisibility(4);
            this.enableLayoutTransitions();
        }
    }
    
    public void initParentViews(final View view) {
        super.initParentViews(view);
        this.mPageIndicator.setAccessibilityDelegate((View$AccessibilityDelegate)new OverviewAccessibilityDelegate());
    }
    
    protected void initWorkspace() {
        this.mCurrentPage = this.getDefaultPage();
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.setWillNotDraw(false);
        this.setClipChildren(false);
        this.setClipToPadding(false);
        this.setMinScale(this.mOverviewModeShrinkFactor);
        this.setupLayoutTransition();
        this.mMaxDistanceForFolderCreation = deviceProfile.iconSizePx * 0.55f;
        this.setWallpaperDimension();
    }
    
    public CellLayout insertNewWorkspaceScreen(final long n, final int n2) {
        if (this.mWorkspaceScreens.containsKey(n)) {
            throw new RuntimeException("Screen id " + n + " already exists!");
        }
        final CellLayout cellLayout = (CellLayout)LayoutInflater.from(this.getContext()).inflate(2130968634, (ViewGroup)this, false);
        cellLayout.setOnLongClickListener(this.mLongClickListener);
        cellLayout.setOnClickListener((View$OnClickListener)this.mLauncher);
        cellLayout.setSoundEffectsEnabled(false);
        final int cellLayoutPaddingLeftRightPx = this.mLauncher.getDeviceProfile().cellLayoutPaddingLeftRightPx;
        cellLayout.setPadding(cellLayoutPaddingLeftRightPx, 0, cellLayoutPaddingLeftRightPx, 0);
        this.mWorkspaceScreens.put(n, (Object)cellLayout);
        this.mScreenOrder.add(n2, n);
        this.addView((View)cellLayout, n2);
        if (this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag()) {
            cellLayout.enableAccessibleDrag(true, 2);
        }
        return cellLayout;
    }
    
    public void insertNewWorkspaceScreen(final long n) {
        this.insertNewWorkspaceScreen(n, this.getChildCount());
    }
    
    public void insertNewWorkspaceScreenBeforeEmptyScreen(final long n) {
        int n2 = this.mScreenOrder.indexOf(-201L);
        if (n2 < 0) {
            n2 = this.mScreenOrder.size();
        }
        this.insertNewWorkspaceScreen(n, n2);
    }
    
    public boolean isDropEnabled() {
        return true;
    }
    
    public boolean isFinishedSwitchingState() {
        boolean b = true;
        if (this.mIsSwitchingState && this.mTransitionProgress <= 0.5f) {
            b = false;
        }
        return b;
    }
    
    public boolean isInOverviewMode() {
        return this.mState == Workspace$State.OVERVIEW;
    }
    
    public boolean isOnOrMovingToCustomContent() {
        boolean b = false;
        if (this.hasCustomContent() && this.getNextPage() == 0) {
            b = true;
        }
        return b;
    }
    
    boolean isPointInSelfOverHotseat(final int n, final int n2) {
        int n3 = 1;
        this.mTempXY[0] = n;
        this.mTempXY[n3] = n2;
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf((View)this, this.mTempXY, n3 != 0);
        final Hotseat hotseat = this.mLauncher.getHotseat();
        if (this.mTempXY[0] >= ((View)hotseat).getLeft() && this.mTempXY[0] <= ((View)hotseat).getRight() && this.mTempXY[n3] >= ((View)hotseat).getTop()) {
            if (this.mTempXY[n3] > ((View)hotseat).getBottom()) {
                n3 = 0;
            }
        }
        else {
            n3 = 0;
        }
        return n3 != 0;
    }
    
    public boolean isSwitchingState() {
        return this.mIsSwitchingState;
    }
    
    boolean isTouchActive() {
        boolean b = false;
        if (this.mTouchState != 0) {
            b = true;
        }
        return b;
    }
    
    public void lockWallpaperToDefaultPage() {
        this.mWallpaperOffset.setLockToDefaultPage(true);
    }
    
    void mapOverItems(final boolean b, final Workspace$ItemOperator workspace$ItemOperator) {
        final ArrayList allShortcutAndWidgetContainers = this.getAllShortcutAndWidgetContainers();
        for (int size = allShortcutAndWidgetContainers.size(), i = 0; i < size; ++i) {
            final ShortcutAndWidgetContainer shortcutAndWidgetContainer = allShortcutAndWidgetContainers.get(i);
            for (int childCount = shortcutAndWidgetContainer.getChildCount(), j = 0; j < childCount; ++j) {
                final View child = shortcutAndWidgetContainer.getChildAt(j);
                final ItemInfo itemInfo = (ItemInfo)child.getTag();
                if (b && itemInfo instanceof FolderInfo && child instanceof FolderIcon) {
                    final ArrayList itemsInReadingOrder = ((FolderIcon)child).getFolder().getItemsInReadingOrder();
                    for (int size2 = itemsInReadingOrder.size(), k = 0; k < size2; ++k) {
                        final View view = itemsInReadingOrder.get(k);
                        if (workspace$ItemOperator.evaluate((ItemInfo)view.getTag(), view)) {
                            return;
                        }
                    }
                }
                else if (workspace$ItemOperator.evaluate(itemInfo, child)) {
                    return;
                }
            }
        }
    }
    
    void mapPointFromSelfToChild(final View view, final float[] array) {
        final int n = 1;
        array[0] -= view.getLeft();
        array[n] -= view.getTop();
    }
    
    void mapPointFromSelfToHotseatLayout(final Hotseat hotseat, final float[] array) {
        final int n = 1;
        this.mTempXY[0] = (int)array[0];
        this.mTempXY[n] = (int)array[n];
        this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf((View)this, this.mTempXY, n != 0);
        this.mLauncher.getDragLayer().mapCoordInSelfToDescendant((View)hotseat.getLayout(), this.mTempXY);
        array[0] = this.mTempXY[0];
        array[n] = this.mTempXY[n];
    }
    
    void moveToDefaultScreen(final boolean b) {
        final int defaultPage = this.getDefaultPage();
        if (!this.workspaceInModalState() && this.getNextPage() != defaultPage) {
            if (b) {
                this.snapToPage(defaultPage);
            }
            else {
                this.setCurrentPage(defaultPage);
            }
        }
        final View child = this.getChildAt(defaultPage);
        if (child != null) {
            child.requestFocus();
        }
    }
    
    protected void notifyPageSwitchListener(final int n) {
        final int n2 = 3;
        final int mCustomContentShowing = 1;
        super.notifyPageSwitchListener(n);
        if (n != this.mCurrentPage) {
            int n3;
            if (n < this.mCurrentPage) {
                n3 = 4;
            }
            else {
                n3 = n2;
            }
            this.mLauncher.getUserEventDispatcher().logActionOnContainer(n2, n3, mCustomContentShowing, n);
        }
        if (this.hasCustomContent() && this.getNextPage() == 0 && (this.mCustomContentShowing ^ true)) {
            this.mCustomContentShowing = (mCustomContentShowing != 0);
            if (this.mCustomContentCallbacks != null) {
                this.mCustomContentCallbacks.onShow(false);
                this.mCustomContentShowTime = System.currentTimeMillis();
            }
        }
        else if (this.hasCustomContent() && this.getNextPage() != 0 && this.mCustomContentShowing) {
            this.mCustomContentShowing = false;
            if (this.mCustomContentCallbacks != null) {
                this.mCustomContentCallbacks.onHide();
            }
        }
    }
    
    public int numCustomPages() {
        int n;
        if (this.hasCustomContent()) {
            n = 1;
        }
        else {
            n = 0;
        }
        return n;
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        final IBinder windowToken = this.getWindowToken();
        this.mWallpaperOffset.setWindowToken(windowToken);
        this.computeScroll();
        this.mDragController.setWindowToken(windowToken);
    }
    
    public void onChildViewAdded(final View view, final View view2) {
        if (!(view2 instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        final CellLayout cellLayout = (CellLayout)view2;
        cellLayout.setOnInterceptTouchListener((View$OnTouchListener)this);
        cellLayout.setClickable(true);
        cellLayout.setImportantForAccessibility(2);
        super.onChildViewAdded(view, view2);
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWallpaperOffset.setWindowToken(null);
    }
    
    public void onDragEnd() {
        final boolean b = true;
        if (!this.mDeferRemoveExtraEmptyScreen) {
            this.removeExtraEmptyScreen(b, this.mDragSourceInternal != null && b);
        }
        this.updateChildrenLayersEnabled(false);
        this.mLauncher.unlockScreenOrientation(false);
        InstallShortcutReceiver.disableAndFlushInstallQueue(4, this.getContext());
        this.mOutlineProvider = null;
        this.mDragInfo = null;
        this.mDragSourceInternal = null;
        this.mLauncher.onInteractionEnd();
    }
    
    public void onDragEnter(final DropTarget$DragObject dropTarget$DragObject) {
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        this.mDragViewVisualCenter = dropTarget$DragObject.getVisualCenter(this.mDragViewVisualCenter);
        this.setDropLayoutForDragObject(dropTarget$DragObject, this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1]);
    }
    
    public void onDragExit(final DropTarget$DragObject dropTarget$DragObject) {
        final boolean b = true;
        this.mDropToLayout = this.mDragTargetLayout;
        if (this.mDragMode == (b ? 1 : 0)) {
            this.mCreateUserFolderOnDrop = b;
        }
        else if (this.mDragMode == 2) {
            this.mAddToExistingFolderOnDrop = b;
        }
        this.setCurrentDropLayout(null);
        this.setCurrentDragOverlappingLayout(null);
        this.mSpringLoadedDragController.cancel();
    }
    
    public void onDragObjectRemoved(final boolean mUninstallSuccessful) {
        this.mDeferDropAfterUninstall = false;
        this.mUninstallSuccessful = mUninstallSuccessful;
        if (this.mDeferredAction != null) {
            this.mDeferredAction.run();
        }
    }
    
    public void onDragOver(final DropTarget$DragObject dropTarget$DragObject) {
        if (!this.transitionStateShouldAllowDrop()) {
            return;
        }
        final ItemInfo dragInfo = dropTarget$DragObject.dragInfo;
        final ItemInfo itemInfo;
        if ((itemInfo = dragInfo) == null) {
            return;
        }
        if (dragInfo.spanX < 0 || dragInfo.spanY < 0) {
            throw new RuntimeException("Improper spans found");
        }
        this.mDragViewVisualCenter = dropTarget$DragObject.getVisualCenter(this.mDragViewVisualCenter);
        View cell;
        if (this.mDragInfo == null) {
            cell = null;
        }
        else {
            cell = this.mDragInfo.cell;
        }
        if (this.setDropLayoutForDragObject(dropTarget$DragObject, this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1])) {
            if (this.mLauncher.isHotseatLayout((View)this.mDragTargetLayout)) {
                this.mSpringLoadedDragController.cancel();
            }
            else {
                this.mSpringLoadedDragController.setAlarm(this.mDragTargetLayout);
            }
        }
        if (this.mDragTargetLayout != null) {
            if (this.mLauncher.isHotseatLayout((View)this.mDragTargetLayout)) {
                this.mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            }
            else {
                this.mapPointFromSelfToChild((View)this.mDragTargetLayout, this.mDragViewVisualCenter);
            }
            int n = itemInfo.spanX;
            int n2 = itemInfo.spanY;
            if (itemInfo.minSpanX > 0 && itemInfo.minSpanY > 0) {
                n = itemInfo.minSpanX;
                n2 = itemInfo.minSpanY;
            }
            this.mTargetCell = this.findNearestArea((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], n, n2, this.mDragTargetLayout, this.mTargetCell);
            final int n3 = this.mTargetCell[0];
            final int n4 = this.mTargetCell[1];
            this.setCurrentDropOverCell(this.mTargetCell[0], this.mTargetCell[1]);
            this.manageFolderFeedback(this.mDragTargetLayout, this.mTargetCell, this.mDragTargetLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell), dropTarget$DragObject);
            final boolean nearestDropLocationOccupied = this.mDragTargetLayout.isNearestDropLocationOccupied((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], itemInfo.spanX, itemInfo.spanY, cell, this.mTargetCell);
            if (!nearestDropLocationOccupied) {
                this.mDragTargetLayout.visualizeDropLocation(cell, this.mOutlineProvider, this.mTargetCell[0], this.mTargetCell[1], itemInfo.spanX, itemInfo.spanY, false, dropTarget$DragObject);
            }
            else if ((this.mDragMode == 0 || this.mDragMode == 3) && (this.mReorderAlarm.alarmPending() ^ true) && (this.mLastReorderX != n3 || this.mLastReorderY != n4)) {
                this.mDragTargetLayout.performReorder((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], n, n2, itemInfo.spanX, itemInfo.spanY, cell, this.mTargetCell, new int[2], 0);
                this.mReorderAlarm.setOnAlarmListener(new Workspace$ReorderAlarmListener(this, this.mDragViewVisualCenter, n, n2, itemInfo.spanX, itemInfo.spanY, dropTarget$DragObject, cell));
                this.mReorderAlarm.setAlarm(350L);
            }
            if ((this.mDragMode == 1 || this.mDragMode == 2 || (nearestDropLocationOccupied ^ true)) && this.mDragTargetLayout != null) {
                this.mDragTargetLayout.revertTempState();
            }
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        final int n = 4;
        if (this.mDragInfo != null && this.mDragInfo.cell != null) {
            ((CellLayout)this.mDragInfo.cell.getParent().getParent()).markCellsAsUnoccupiedForView(this.mDragInfo.cell);
        }
        if (this.mOutlineProvider != null) {
            this.mOutlineProvider.generateDragOutline(this.mCanvas);
        }
        this.updateChildrenLayersEnabled(false);
        this.mLauncher.onDragStarted();
        this.mLauncher.lockScreenOrientation();
        this.mLauncher.onInteractionBegin();
        InstallShortcutReceiver.enableInstallQueue(n);
        boolean b;
        if (dragOptions.isAccessibleDrag && dropTarget$DragObject.dragSource != this) {
            b = true;
        }
        else {
            b = false;
        }
        if (b ^ true) {
            this.mDeferRemoveExtraEmptyScreen = false;
            this.addExtraEmptyScreenOnDrag();
            if (dropTarget$DragObject.dragInfo.itemType == n && dropTarget$DragObject.dragSource != this) {
                for (int i = this.getPageNearestToCenterOfScreen(); i < this.getPageCount(); ++i) {
                    if (((CellLayout)this.getPageAt(i)).hasReorderSolution(dropTarget$DragObject.dragInfo)) {
                        this.setCurrentPage(i);
                        break;
                    }
                }
            }
        }
        this.mLauncher.enterSpringLoadedDragMode();
    }
    
    public void onDrop(final DropTarget$DragObject dropTarget$DragObject) {
        this.mDragViewVisualCenter = dropTarget$DragObject.getVisualCenter(this.mDragViewVisualCenter);
        final CellLayout mDropToLayout = this.mDropToLayout;
        if (mDropToLayout != null) {
            if (this.mLauncher.isHotseatLayout((View)mDropToLayout)) {
                this.mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            }
            else {
                this.mapPointFromSelfToChild((View)mDropToLayout, this.mDragViewVisualCenter);
            }
        }
        int n = 0;
        int n2 = -1;
        if (dropTarget$DragObject.dragSource != this) {
            this.onDropExternal(new int[] { (int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1] }, mDropToLayout, dropTarget$DragObject);
        }
        else if (this.mDragInfo != null) {
            final View cell = this.mDragInfo.cell;
            int n3 = 0;
            int n14;
            int n15;
            if (mDropToLayout != null) {
                if (dropTarget$DragObject.cancelled ^ true) {
                    final boolean b = this.getParentCellLayoutForView(cell) != mDropToLayout;
                    final boolean hotseatLayout = this.mLauncher.isHotseatLayout((View)mDropToLayout);
                    int n4;
                    if (hotseatLayout) {
                        n4 = -101;
                    }
                    else {
                        n4 = -100;
                    }
                    final long n5 = n4;
                    long n6;
                    if (this.mTargetCell[0] < 0) {
                        n6 = this.mDragInfo.screenId;
                    }
                    else {
                        n6 = this.getIdForScreen(mDropToLayout);
                    }
                    int spanX;
                    if (this.mDragInfo != null) {
                        spanX = this.mDragInfo.spanX;
                    }
                    else {
                        spanX = 1;
                    }
                    int spanY;
                    if (this.mDragInfo != null) {
                        spanY = this.mDragInfo.spanY;
                    }
                    else {
                        spanY = 1;
                    }
                    this.mTargetCell = this.findNearestArea((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], spanX, spanY, mDropToLayout, this.mTargetCell);
                    final float distanceFromCell = mDropToLayout.getDistanceFromCell(this.mDragViewVisualCenter[0], this.mDragViewVisualCenter[1], this.mTargetCell);
                    if (this.createUserFolderIfNecessary(cell, n5, mDropToLayout, this.mTargetCell, distanceFromCell, false, dropTarget$DragObject.dragView, null)) {
                        return;
                    }
                    if (this.addToExistingFolderIfNecessary(cell, mDropToLayout, this.mTargetCell, distanceFromCell, dropTarget$DragObject, false)) {
                        return;
                    }
                    final ItemInfo dragInfo;
                    final ItemInfo itemInfo = dragInfo = dropTarget$DragObject.dragInfo;
                    int n7 = itemInfo.spanX;
                    int n8 = itemInfo.spanY;
                    if (itemInfo.minSpanX > 0 && itemInfo.minSpanY > 0) {
                        n7 = itemInfo.minSpanX;
                        n8 = itemInfo.minSpanY;
                    }
                    int n10;
                    if (dragInfo.screenId == n6 && dragInfo.container == n5 && dragInfo.cellX == this.mTargetCell[0]) {
                        int n9;
                        if (dragInfo.cellY == this.mTargetCell[1]) {
                            n9 = 1;
                        }
                        else {
                            n9 = 0;
                        }
                        n10 = n9;
                    }
                    else {
                        n10 = 0;
                    }
                    n3 = ((n10 != 0 && this.mIsSwitchingState) ? 1 : 0);
                    final boolean b2 = !this.isFinishedSwitchingState() && (n3 ^ 0x1) != 0x0 && (mDropToLayout.isRegionVacant(this.mTargetCell[0], this.mTargetCell[1], spanX, spanY) ^ true);
                    final int[] array = new int[2];
                    if (b2) {
                        this.mTargetCell[0] = (this.mTargetCell[1] = -1);
                    }
                    else {
                        this.mTargetCell = mDropToLayout.performReorder((int)this.mDragViewVisualCenter[0], (int)this.mDragViewVisualCenter[1], n7, n8, spanX, spanY, cell, this.mTargetCell, array, 2);
                    }
                    final boolean b3 = this.mTargetCell[0] >= 0 && this.mTargetCell[1] >= 0 && true;
                    boolean b5;
                    if (b3 && cell instanceof AppWidgetHostView && (array[0] != dragInfo.spanX || array[1] != dragInfo.spanY)) {
                        final boolean b4 = true;
                        dragInfo.spanX = array[0];
                        dragInfo.spanY = array[1];
                        AppWidgetResizeFrame.updateWidgetSizeRanges((AppWidgetHostView)cell, this.mLauncher, array[0], array[1]);
                        b5 = b4;
                    }
                    else {
                        b5 = false;
                    }
                    if (b3) {
                        int n11;
                        if (this.getScreenIdForPageIndex(this.mCurrentPage) != n6) {
                            if (hotseatLayout ^ true) {
                                final int pageIndexForScreenId = this.getPageIndexForScreenId(n6);
                                this.snapToPage(pageIndexForScreenId);
                                n11 = pageIndexForScreenId;
                            }
                            else {
                                n11 = n2;
                            }
                        }
                        else {
                            n11 = n2;
                        }
                        final ItemInfo itemInfo2 = (ItemInfo)cell.getTag();
                        if (b) {
                            final CellLayout parentCellLayoutForView = this.getParentCellLayoutForView(cell);
                            if (parentCellLayoutForView != null) {
                                parentCellLayoutForView.removeView(cell);
                            }
                            this.addInScreen(cell, n5, n6, this.mTargetCell[0], this.mTargetCell[1], itemInfo2.spanX, itemInfo2.spanY);
                        }
                        final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)cell.getLayoutParams();
                        final int n12 = this.mTargetCell[0];
                        cellLayout$LayoutParams.tmpCellX = n12;
                        cellLayout$LayoutParams.cellX = n12;
                        final int n13 = this.mTargetCell[1];
                        cellLayout$LayoutParams.tmpCellY = n13;
                        cellLayout$LayoutParams.cellY = n13;
                        cellLayout$LayoutParams.cellHSpan = dragInfo.spanX;
                        cellLayout$LayoutParams.cellVSpan = dragInfo.spanY;
                        cellLayout$LayoutParams.isLockedToGrid = true;
                        if (n5 != -101 && cell instanceof LauncherAppWidgetHostView) {
                            final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView)cell;
                            final AppWidgetProviderInfo appWidgetInfo = launcherAppWidgetHostView.getAppWidgetInfo();
                            if (appWidgetInfo != null && appWidgetInfo.resizeMode != 0 && (dropTarget$DragObject.accessibleDrag ^ true)) {
                                this.mDelayedResizeRunnable = new Workspace$7(this, launcherAppWidgetHostView, mDropToLayout);
                            }
                        }
                        this.mLauncher.getModelWriter().modifyItemInDatabase(itemInfo2, n5, n6, cellLayout$LayoutParams.cellX, cellLayout$LayoutParams.cellY, dragInfo.spanX, dragInfo.spanY);
                        n14 = (b5 ? 1 : 0);
                        n2 = n11;
                        n15 = n10;
                    }
                    else {
                        if (!b2) {
                            this.onNoCellFound((View)mDropToLayout);
                        }
                        final CellLayout$LayoutParams cellLayout$LayoutParams2 = (CellLayout$LayoutParams)cell.getLayoutParams();
                        this.mTargetCell[0] = cellLayout$LayoutParams2.cellX;
                        this.mTargetCell[1] = cellLayout$LayoutParams2.cellY;
                        ((CellLayout)cell.getParent().getParent()).markCellsAsOccupiedForView(cell);
                        n14 = (b5 ? 1 : 0);
                        n15 = n10;
                    }
                }
                else {
                    n15 = 0;
                    n14 = 0;
                }
            }
            else {
                n15 = 0;
                n14 = 0;
            }
            final CellLayout cellLayout = (CellLayout)cell.getParent().getParent();
            final Workspace$8 workspace$8 = new Workspace$8(this);
            this.mAnimatingViewIntoPlace = true;
            if (dropTarget$DragObject.dragView.hasDrawn()) {
                if (n3 != 0) {
                    this.mLauncher.getDragController().animateDragViewToOriginalPosition(this.mDelayedResizeRunnable, cell, this.mStateTransitionAnimation.mSpringLoadedTransitionTime);
                    this.mLauncher.exitSpringLoadedDragMode();
                    this.mLauncher.getDropTargetBar().onDragEnd();
                    cellLayout.onDropChild(cell);
                    return;
                }
                final ItemInfo itemInfo3 = (ItemInfo)cell.getTag();
                int n16;
                if (itemInfo3.itemType != 4) {
                    if (itemInfo3.itemType == 5) {
                        n16 = 1;
                    }
                    else {
                        n16 = 0;
                    }
                }
                else {
                    n16 = 1;
                }
                if (n16 != 0) {
                    int n17;
                    if (n14 != 0) {
                        n17 = 2;
                    }
                    else {
                        n17 = 0;
                    }
                    this.animateWidgetDrop(itemInfo3, cellLayout, dropTarget$DragObject.dragView, workspace$8, n17, cell, false);
                }
                else {
                    int n18;
                    if (n2 < 0) {
                        n18 = -1;
                    }
                    else {
                        n18 = 300;
                    }
                    this.mLauncher.getDragLayer().animateViewIntoPosition(dropTarget$DragObject.dragView, cell, n18, workspace$8, (View)this);
                }
            }
            else {
                dropTarget$DragObject.deferDragViewCleanupPostAnimation = false;
                cell.setVisibility(0);
            }
            cellLayout.onDropChild(cell);
            n = n15;
        }
        if (dropTarget$DragObject.stateAnnouncer != null && (n ^ 0x1) != 0x0) {
            dropTarget$DragObject.stateAnnouncer.completeAction(2131492982);
        }
    }
    
    public void onDropCompleted(final View view, final DropTarget$DragObject dropTarget$DragObject, final boolean b, final boolean b2) {
        if (this.mDeferDropAfterUninstall) {
            this.mDeferredAction = new Workspace$12(this, this.mDragInfo, view, dropTarget$DragObject, b, b2);
            return;
        }
        boolean b3;
        if (this.mDeferredAction != null) {
            b3 = true;
        }
        else {
            b3 = false;
        }
        if (b2 && (!b3 || this.mUninstallSuccessful)) {
            if (view != this && this.mDragInfo != null) {
                this.removeWorkspaceItem(this.mDragInfo.cell);
            }
        }
        else if (this.mDragInfo != null) {
            final CellLayout cellLayout = this.mLauncher.getCellLayout(this.mDragInfo.container, this.mDragInfo.screenId);
            if (cellLayout != null) {
                cellLayout.onDropChild(this.mDragInfo.cell);
            }
        }
        if ((dropTarget$DragObject.cancelled || (b3 && (this.mUninstallSuccessful ^ true))) && this.mDragInfo != null && this.mDragInfo.cell != null) {
            this.mDragInfo.cell.setVisibility(0);
        }
        this.mDragInfo = null;
        if (!b) {
            this.mLauncher.exitSpringLoadedDragModeDelayed(b2, 500, this.mDelayedResizeRunnable);
            this.mDelayedResizeRunnable = null;
        }
    }
    
    public void onEndReordering() {
        super.onEndReordering();
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        final ArrayList list = (ArrayList)this.mScreenOrder.clone();
        this.mScreenOrder.clear();
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            this.mScreenOrder.add(this.getIdForScreen((CellLayout)this.getChildAt(i)));
        }
        for (int j = 0; j < list.size(); ++j) {
            if (this.mScreenOrder.get(j) != list.get(j)) {
                this.mLauncher.getUserEventDispatcher().logOverviewReorder();
                break;
            }
        }
        LauncherModel.updateWorkspaceScreenOrder((Context)this.mLauncher, this.mScreenOrder);
        this.enableLayoutTransitions();
    }
    
    public void onEndStateTransition() {
        this.updateChildrenLayersEnabled(this.mIsSwitchingState = false);
        this.showCustomContentIfNecessary();
        this.mForceDrawAdjacentPages = false;
        this.mTransitionProgress = 1.0f;
    }
    
    public boolean onGenericMotionEvent(final MotionEvent motionEvent) {
        return (this.getScreenIdForPageIndex(this.getCurrentPage()) != -301L || this.mCustomContentCallbacks == null || !(this.mCustomContentCallbacks.isScrollingAllowed() ^ true)) && super.onGenericMotionEvent(motionEvent);
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 0xFF) {
            case 0: {
                this.mXDown = motionEvent.getX();
                this.mYDown = motionEvent.getY();
                this.mTouchDownTime = System.currentTimeMillis();
                break;
            }
            case 1:
            case 6: {
                if (this.mTouchState == 0 && this.getChildAt(this.mCurrentPage) != null) {
                    this.onWallpaperTap(motionEvent);
                    break;
                }
                break;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        if (this.mUnlockWallpaperFromDefaultPageOnLayout) {
            this.mWallpaperOffset.setLockToDefaultPage(false);
            this.mUnlockWallpaperFromDefaultPageOnLayout = false;
        }
        if (this.mFirstLayout && this.mCurrentPage >= 0 && this.mCurrentPage < this.getChildCount()) {
            this.mWallpaperOffset.syncWithScroll();
            this.mWallpaperOffset.jumpToFinal();
        }
        super.onLayout(b, n, n2, n3, n4);
        this.updatePageAlphaValues();
    }
    
    public void onNoCellFound(final View view) {
        if (this.mLauncher.isHotseatLayout(view)) {
            this.mLauncher.getHotseat();
            this.showOutOfSpaceMessage(true);
        }
        else {
            this.showOutOfSpaceMessage(false);
        }
    }
    
    public void onOverlayScrollChanged(final float n) {
        final int n2 = 3;
        final int mOverlayShown = 1;
        final float n3 = 1.0f;
        if (Float.compare(n, n3) == 0) {
            if (!this.mOverlayShown) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(n2, n2, mOverlayShown, 0);
            }
            this.mOverlayShown = (mOverlayShown != 0);
        }
        else if (Float.compare(n, 0.0f) == 0) {
            if (this.mOverlayShown) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(n2, 4, mOverlayShown, -1);
            }
            this.mOverlayShown = false;
        }
        final float min = Math.min(n3, Math.max(n - 0.0f, 0.0f) / n3);
        final float n4 = n3 - this.mAlphaInterpolator.getInterpolation(min);
        float mOverlayTranslation = min * this.mLauncher.getDragLayer().getMeasuredWidth() * n3;
        if (this.mIsRtl) {
            mOverlayTranslation = -mOverlayTranslation;
        }
        this.mOverlayTranslation = mOverlayTranslation;
        this.setWorkspaceTranslationAndAlpha(Workspace$Direction.X, mOverlayTranslation, n4);
        this.setHotseatTranslationAndAlpha(Workspace$Direction.X, mOverlayTranslation, n4);
    }
    
    protected void onPageBeginTransition() {
        super.onPageBeginTransition();
        this.updateChildrenLayersEnabled(false);
    }
    
    protected void onPageEndTransition() {
        super.onPageEndTransition();
        this.updateChildrenLayersEnabled(false);
        if (this.mDragController.isDragging() && this.workspaceInModalState()) {
            this.mDragController.forceTouchMove();
        }
        if (this.mDelayedResizeRunnable != null && (this.mIsSwitchingState ^ true)) {
            this.mDelayedResizeRunnable.run();
            this.mDelayedResizeRunnable = null;
        }
        if (this.mDelayedSnapToPageRunnable != null) {
            this.mDelayedSnapToPageRunnable.run();
            this.mDelayedSnapToPageRunnable = null;
        }
        if (this.mStripScreensOnPageStopMoving) {
            this.stripEmptyScreens();
            this.mStripScreensOnPageStopMoving = false;
        }
    }
    
    public void onPrepareStateTransition(final boolean b) {
        final boolean b2 = true;
        this.mIsSwitchingState = b2;
        this.mTransitionProgress = 0.0f;
        if (b) {
            this.mForceDrawAdjacentPages = b2;
        }
        this.invalidate();
        this.updateChildrenLayersEnabled(false);
        this.hideCustomContentIfNecessary();
    }
    
    protected void onResume() {
        this.mWallpaperOffset.onResume();
    }
    
    protected void onScrollChanged(final int n, final int n2, final int n3, final int n4) {
        super.onScrollChanged(n, n2, n3, n4);
        if (!this.mIsSwitchingState && (this.getLayoutTransition() == null || !this.getLayoutTransition().isRunning())) {
            this.showPageIndicatorAtCurrentScroll();
        }
        this.updatePageAlphaValues();
        this.updateStateForCustomContent();
        this.enableHwLayersOnVisiblePages();
    }
    
    protected void onScrollInteractionBegin() {
        super.onScrollInteractionEnd();
        this.mScrollInteractionBegan = true;
    }
    
    protected void onScrollInteractionEnd() {
        super.onScrollInteractionEnd();
        this.mScrollInteractionBegan = false;
        if (this.mStartedSendingScrollEvents) {
            this.mStartedSendingScrollEvents = false;
            this.mLauncherOverlay.onScrollInteractionEnd();
        }
    }
    
    public void onStartReordering() {
        super.onStartReordering();
        this.disableLayoutTransitions();
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        return this.shouldConsumeTouch(view);
    }
    
    protected void onWallpaperTap(final MotionEvent motionEvent) {
        final int n = 1;
        final int[] mTempXY = this.mTempXY;
        this.getLocationOnScreen(mTempXY);
        final int actionIndex = motionEvent.getActionIndex();
        mTempXY[0] += (int)motionEvent.getX(actionIndex);
        mTempXY[n] += (int)motionEvent.getY(actionIndex);
        final WallpaperManager mWallpaperManager = this.mWallpaperManager;
        final IBinder windowToken = this.getWindowToken();
        String s;
        if (motionEvent.getAction() == n) {
            s = "android.wallpaper.tap";
        }
        else {
            s = "android.wallpaper.secondaryTap";
        }
        mWallpaperManager.sendWallpaperCommand(windowToken, s, mTempXY[0], mTempXY[n], 0, (Bundle)null);
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        this.mLauncher.onWindowVisibilityChanged(n);
    }
    
    protected void overScroll(final float n) {
        final boolean mStartedSendingScrollEvents = true;
        boolean mIsRtl = false;
        boolean b;
        if (n > 0.0f || (this.hasCustomContent() && !this.mIsRtl)) {
            if (n >= 0.0f) {
                if (this.hasCustomContent()) {
                    b = (this.mIsRtl ^ true);
                }
                else {
                    b = mStartedSendingScrollEvents;
                }
            }
            else {
                b = false;
            }
        }
        else {
            b = mStartedSendingScrollEvents;
        }
        int n2;
        if (this.mLauncherOverlay != null) {
            if (n > 0.0f || !(this.mIsRtl ^ true)) {
                n2 = ((n >= 0.0f && this.mIsRtl) ? 1 : 0);
            }
            else {
                n2 = (mStartedSendingScrollEvents ? 1 : 0);
            }
        }
        else {
            n2 = 0;
        }
        if (this.mLauncherOverlay != null && this.mLastOverlayScroll != 0.0f) {
            if (n < 0.0f || !(this.mIsRtl ^ true)) {
                if (n <= 0.0f) {
                    mIsRtl = this.mIsRtl;
                }
            }
            else {
                mIsRtl = mStartedSendingScrollEvents;
            }
        }
        if (n2 != 0) {
            if (!this.mStartedSendingScrollEvents && this.mScrollInteractionBegan) {
                this.mStartedSendingScrollEvents = mStartedSendingScrollEvents;
                this.mLauncherOverlay.onScrollInteractionBegin();
            }
            this.mLastOverlayScroll = Math.abs(n / this.getViewportWidth());
            this.mLauncherOverlay.onScrollChange(this.mLastOverlayScroll, this.mIsRtl);
        }
        else if (b) {
            this.dampedOverScroll(n);
        }
        if (mIsRtl) {
            this.mLauncherOverlay.onScrollChange(0.0f, this.mIsRtl);
        }
    }
    
    public void prepareAccessibilityDrop() {
    }
    
    public void prepareDragWithProvider(final DragPreviewProvider mOutlineProvider) {
        this.mOutlineProvider = mOutlineProvider;
    }
    
    protected void reinflateWidgetsIfNecessary() {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            final ShortcutAndWidgetContainer shortcutsAndWidgets = ((CellLayout)this.getChildAt(i)).getShortcutsAndWidgets();
            for (int childCount2 = shortcutsAndWidgets.getChildCount(), j = 0; j < childCount2; ++j) {
                final View child = shortcutsAndWidgets.getChildAt(j);
                if (child instanceof LauncherAppWidgetHostView && child.getTag() instanceof LauncherAppWidgetInfo) {
                    final LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)child.getTag();
                    final LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView)child;
                    if (launcherAppWidgetHostView.isReinflateRequired()) {
                        this.mLauncher.removeItem((View)launcherAppWidgetHostView, launcherAppWidgetInfo, false);
                        this.mLauncher.bindAppWidget(launcherAppWidgetInfo);
                    }
                }
            }
        }
    }
    
    public void removeAbandonedPromise(final String s, final UserHandle userHandle) {
        final HashSet<String> set = new HashSet<String>(1);
        set.add(s);
        final ItemInfoMatcher ofPackages = ItemInfoMatcher.ofPackages(set, userHandle);
        this.mLauncher.getModelWriter().deleteItemsFromDatabase(ofPackages);
        this.removeItemsByMatcher(ofPackages);
    }
    
    public void removeAllWorkspaceScreens() {
        this.disableLayoutTransitions();
        if (this.hasCustomContent()) {
            this.removeCustomContentPage();
        }
        final View viewById = this.findViewById(2131623953);
        if (viewById != null) {
            ((ViewGroup)viewById.getParent()).removeView(viewById);
        }
        this.removeAllViews();
        this.mScreenOrder.clear();
        this.mWorkspaceScreens.clear();
        this.bindAndInitFirstWorkspaceScreen(viewById);
        this.enableLayoutTransitions();
    }
    
    public void removeCustomContentPage() {
        final long n = -301L;
        final CellLayout screenWithId = this.getScreenWithId(n);
        if (screenWithId == null) {
            throw new RuntimeException("Expected custom content screen to exist");
        }
        this.mWorkspaceScreens.remove(n);
        this.mScreenOrder.remove(n);
        this.removeView((View)screenWithId);
        if (this.mCustomContentCallbacks != null) {
            this.mCustomContentCallbacks.onScrollProgressChanged(0.0f);
            this.mCustomContentCallbacks.onHide();
        }
        this.mCustomContentCallbacks = null;
        this.setCurrentPage(this.getCurrentPage() - 1);
    }
    
    public void removeExtraEmptyScreen(final boolean b, final boolean b2) {
        this.removeExtraEmptyScreenDelayed(b, null, 0, b2);
    }
    
    public void removeExtraEmptyScreenDelayed(final boolean b, final Runnable runnable, final int n, final boolean b2) {
        final int n2 = 400;
        final int n3 = 150;
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (n > 0) {
            this.postDelayed((Runnable)new Workspace$1(this, b, runnable, b2), (long)n);
            return;
        }
        this.convertFinalScreenToEmptyScreenIfNecessary();
        if (this.hasExtraEmptyScreen()) {
            if (this.getNextPage() == this.mScreenOrder.indexOf(-201L)) {
                this.snapToPage(this.getNextPage() - 1, n2);
                this.fadeAndRemoveEmptyScreen(n2, n3, runnable, b2);
            }
            else {
                this.snapToPage(this.getNextPage(), 0);
                this.fadeAndRemoveEmptyScreen(0, n3, runnable, b2);
            }
            return;
        }
        if (b2) {
            this.stripEmptyScreens();
        }
        if (runnable != null) {
            runnable.run();
        }
    }
    
    public void removeFolderListeners() {
        this.mapOverItems(false, new Workspace$13(this));
    }
    
    public void removeItemsByMatcher(final ItemInfoMatcher itemInfoMatcher) {
        for (final CellLayout cellLayout : this.getWorkspaceAndHotseatCellLayouts()) {
            final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
            final LongArrayMap longArrayMap = new LongArrayMap();
            final ArrayList<ItemInfo> list = new ArrayList<ItemInfo>();
            for (int i = 0; i < shortcutsAndWidgets.getChildCount(); ++i) {
                final View child = shortcutsAndWidgets.getChildAt(i);
                if (child.getTag() instanceof ItemInfo) {
                    final ItemInfo itemInfo = (ItemInfo)child.getTag();
                    list.add(itemInfo);
                    longArrayMap.put(itemInfo.id, (Object)child);
                }
            }
            for (final ItemInfo itemInfo2 : itemInfoMatcher.filterItemInfos(list)) {
                final View view = (View)longArrayMap.get(itemInfo2.id);
                if (view != null) {
                    cellLayout.removeViewInLayout(view);
                    if (!(view instanceof DropTarget)) {
                        continue;
                    }
                    this.mDragController.removeDropTarget((DropTarget)view);
                }
                else {
                    if (itemInfo2.container < 0L) {
                        continue;
                    }
                    final View view2 = (View)longArrayMap.get(itemInfo2.container);
                    if (view2 == null) {
                        continue;
                    }
                    final FolderInfo folderInfo = (FolderInfo)view2.getTag();
                    folderInfo.prepareAutoUpdate();
                    folderInfo.remove((ShortcutInfo)itemInfo2, false);
                }
            }
        }
        this.stripEmptyScreens();
    }
    
    public void removeWorkspaceItem(final View view) {
        final CellLayout parentCellLayoutForView = this.getParentCellLayoutForView(view);
        if (parentCellLayoutForView != null) {
            parentCellLayoutForView.removeView(view);
        }
        if (view instanceof DropTarget) {
            this.mDragController.removeDropTarget((DropTarget)view);
        }
    }
    
    public void resetTransitionTransform(final CellLayout cellLayout) {
        if (this.isSwitchingState()) {
            this.setScaleX(this.mCurrentScale);
            this.setScaleY(this.mCurrentScale);
        }
    }
    
    public void restoreInstanceStateForChild(final int n) {
        if (this.mSavedStates != null) {
            this.mRestoredPages.add(n);
            final CellLayout cellLayout = (CellLayout)this.getChildAt(n);
            if (cellLayout != null) {
                cellLayout.restoreInstanceState(this.mSavedStates);
            }
        }
    }
    
    public void restoreInstanceStateForRemainingPages() {
        for (int childCount = this.getChildCount(), i = 0; i < childCount; ++i) {
            if (!this.mRestoredPages.contains(i)) {
                this.restoreInstanceStateForChild(i);
            }
        }
        this.mRestoredPages.clear();
        this.mSavedStates = null;
    }
    
    public void scrollLeft() {
        if (!this.workspaceInModalState() && (this.mIsSwitchingState ^ true)) {
            super.scrollLeft();
        }
        final Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
    }
    
    public void scrollRight() {
        if (!this.workspaceInModalState() && (this.mIsSwitchingState ^ true)) {
            super.scrollRight();
        }
        final Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
    }
    
    void setCurrentDragOverlappingLayout(final CellLayout mDragOverlappingLayout) {
        if (this.mDragOverlappingLayout != null) {
            this.mDragOverlappingLayout.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = mDragOverlappingLayout;
        if (this.mDragOverlappingLayout != null) {
            this.mDragOverlappingLayout.setIsDragOverlapping(true);
        }
        this.mLauncher.getDragLayer().invalidateScrim();
    }
    
    void setCurrentDropLayout(final CellLayout mDragTargetLayout) {
        final int n = -1;
        if (this.mDragTargetLayout != null) {
            this.mDragTargetLayout.revertTempState();
            this.mDragTargetLayout.onDragExit();
        }
        this.mDragTargetLayout = mDragTargetLayout;
        if (this.mDragTargetLayout != null) {
            this.mDragTargetLayout.onDragEnter();
        }
        this.cleanupReorder(true);
        this.cleanupFolderCreation();
        this.setCurrentDropOverCell(n, n);
    }
    
    void setCurrentDropOverCell(final int mDragOverX, final int mDragOverY) {
        if (mDragOverX != this.mDragOverX || mDragOverY != this.mDragOverY) {
            this.mDragOverX = mDragOverX;
            this.mDragOverY = mDragOverY;
            this.setDragMode(0);
        }
    }
    
    void setCustomContentVisibility(final int visibility) {
        if (this.hasCustomContent()) {
            ((CellLayout)this.mWorkspaceScreens.get(-301L)).setVisibility(visibility);
        }
    }
    
    void setDragMode(final int mDragMode) {
        final boolean b = true;
        if (mDragMode != this.mDragMode) {
            if (mDragMode == 0) {
                this.cleanupAddToFolder();
                this.cleanupReorder(false);
                this.cleanupFolderCreation();
            }
            else if (mDragMode == 2) {
                this.cleanupReorder(b);
                this.cleanupFolderCreation();
            }
            else if (mDragMode == (b ? 1 : 0)) {
                this.cleanupAddToFolder();
                this.cleanupReorder(b);
            }
            else if (mDragMode == 3) {
                this.cleanupAddToFolder();
                this.cleanupFolderCreation();
            }
            this.mDragMode = mDragMode;
        }
    }
    
    public void setFinalTransitionTransform(final CellLayout cellLayout) {
        if (this.isSwitchingState()) {
            this.mCurrentScale = this.getScaleX();
            this.setScaleX(this.mStateTransitionAnimation.getFinalScale());
            this.setScaleY(this.mStateTransitionAnimation.getFinalScale());
        }
    }
    
    public void setHotseatTranslationAndAlpha(final Workspace$Direction workspace$Direction, final float n, final float n2) {
        final Property -get0 = workspace$Direction.viewProperty;
        if (workspace$Direction != Workspace$Direction.Y || (this.mLauncher.getDeviceProfile().isVerticalBarLayout() ^ true)) {
            -get0.set((Object)this.mPageIndicator, (Object)n);
        }
        -get0.set((Object)this.mLauncher.getHotseat(), (Object)n);
        this.setHotseatAlphaAtIndex(n2, workspace$Direction.ordinal());
    }
    
    public void setInsets(final Rect rect) {
        this.mInsets.set(rect);
        final CellLayout screenWithId = this.getScreenWithId(-301L);
        if (screenWithId != null) {
            final View child = screenWithId.getShortcutsAndWidgets().getChildAt(0);
            if (child instanceof Insettable) {
                ((Insettable)child).setInsets(this.mInsets);
            }
        }
    }
    
    public void setLauncherOverlay(final Launcher$LauncherOverlay mLauncherOverlay) {
        this.mLauncherOverlay = mLauncherOverlay;
        this.mStartedSendingScrollEvents = false;
        this.onOverlayScrollChanged(0.0f);
    }
    
    public Animator setStateWithAnimation(final Workspace$State mState, final boolean b, final AnimationLayerSet set) {
        final Workspace$State mState2 = this.mState;
        this.mState = mState;
        final AnimatorSet animationToState = this.mStateTransitionAnimation.getAnimationToState(mState2, mState, b, set);
        final boolean b2 = !mState2.shouldUpdateWidget && mState.shouldUpdateWidget;
        this.updateAccessibilityFlags();
        if (b2) {
            this.mLauncher.notifyWidgetProvidersChanged();
        }
        this.onPrepareStateTransition(this.mState.hasMultipleVisiblePages);
        final Workspace$StateTransitionListener workspace$StateTransitionListener = new Workspace$StateTransitionListener(this, null);
        if (b) {
            final ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[] { 0.0f, 1.0f });
            ofFloat.addUpdateListener((ValueAnimator$AnimatorUpdateListener)workspace$StateTransitionListener);
            animationToState.play((Animator)ofFloat);
            animationToState.addListener((Animator$AnimatorListener)workspace$StateTransitionListener);
        }
        else {
            workspace$StateTransitionListener.onAnimationStart(null);
            workspace$StateTransitionListener.onAnimationEnd(null);
        }
        return (Animator)animationToState;
    }
    
    protected void setWallpaperDimension() {
        Utilities.THREAD_POOL_EXECUTOR.execute(new Workspace$5(this));
    }
    
    public void setWorkspaceYTranslationAndAlpha(final float n, final float n2) {
        this.setWorkspaceTranslationAndAlpha(Workspace$Direction.Y, n, n2);
    }
    
    void setup(final DragController mDragController) {
        this.mSpringLoadedDragController = new SpringLoadedDragController(this.mLauncher);
        this.mDragController = mDragController;
        this.updateChildrenLayersEnabled(false);
    }
    
    protected boolean shouldFlingForVelocity(final int n) {
        boolean shouldFlingForVelocity = false;
        if (Float.compare(Math.abs(this.mOverlayTranslation), 0.0f) == 0) {
            shouldFlingForVelocity = super.shouldFlingForVelocity(n);
        }
        return shouldFlingForVelocity;
    }
    
    void showCustomContentIfNecessary() {
        boolean b;
        if (this.mState == Workspace$State.NORMAL) {
            b = true;
        }
        else {
            b = false;
        }
        if (b && this.hasCustomContent()) {
            ((CellLayout)this.mWorkspaceScreens.get(-301L)).setVisibility(0);
        }
    }
    
    public void showOutlinesTemporarily() {
        if (!this.mIsPageInTransition && (this.isTouchActive() ^ true)) {
            this.snapToPage(this.mCurrentPage);
        }
    }
    
    protected void snapToDestination() {
        if (this.isScrollingOverlay()) {
            this.mWasInOverscroll = false;
            this.snapToPageImmediately(0);
        }
        else {
            super.snapToDestination();
        }
    }
    
    protected void snapToPage(final int n, final int n2, final Runnable mDelayedSnapToPageRunnable) {
        if (this.mDelayedSnapToPageRunnable != null) {
            this.mDelayedSnapToPageRunnable.run();
        }
        this.mDelayedSnapToPageRunnable = mDelayedSnapToPageRunnable;
        this.snapToPage(n, n2);
    }
    
    protected void snapToPage(final int n, final Runnable runnable) {
        this.snapToPage(n, 950, runnable);
    }
    
    public void snapToPageFromOverView(final int n) {
        this.mStateTransitionAnimation.snapToPageFromOverView(n);
    }
    
    protected void snapToScreenId(final long n, final Runnable runnable) {
        this.snapToPage(this.getPageIndexForScreenId(n), runnable);
    }
    
    public void startDrag(final CellLayout$CellInfo mDragInfo, final DragOptions dragOptions) {
        final View cell = mDragInfo.cell;
        this.mDragInfo = mDragInfo;
        cell.setVisibility(4);
        if (dragOptions.isAccessibleDrag) {
            this.mDragController.addDragListener(new Workspace$6(this, this, 2));
        }
        this.beginDragShared(cell, this, dragOptions);
    }
    
    public void stripEmptyScreens() {
        final long n = -201L;
        final boolean mStripScreensOnPageStopMoving = true;
        if (this.mLauncher.isWorkspaceLoading()) {
            return;
        }
        if (this.isPageInTransition()) {
            this.mStripScreensOnPageStopMoving = mStripScreensOnPageStopMoving;
            return;
        }
        final int nextPage = this.getNextPage();
        final ArrayList<Long> list = new ArrayList<Long>();
        for (int size = this.mWorkspaceScreens.size(), i = 0; i < size; ++i) {
            final long key = this.mWorkspaceScreens.keyAt(i);
            final CellLayout cellLayout = (CellLayout)this.mWorkspaceScreens.valueAt(i);
            if (key > 0L && cellLayout.getShortcutsAndWidgets().getChildCount() == 0) {
                list.add(key);
            }
        }
        final boolean inAccessibleDrag = this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag();
        final int n2 = this.numCustomPages() + 1;
        final Iterator<Object> iterator = list.iterator();
        int n3 = 0;
        while (iterator.hasNext()) {
            final Long n4 = iterator.next();
            final CellLayout cellLayout2 = (CellLayout)this.mWorkspaceScreens.get((long)n4);
            this.mWorkspaceScreens.remove((long)n4);
            this.mScreenOrder.remove(n4);
            int n5;
            if (this.getChildCount() > n2) {
                if (this.indexOfChild((View)cellLayout2) < nextPage) {
                    n5 = n3 + 1;
                }
                else {
                    n5 = n3;
                }
                if (inAccessibleDrag) {
                    cellLayout2.enableAccessibleDrag(false, 2);
                }
                this.removeView((View)cellLayout2);
            }
            else {
                this.mRemoveEmptyScreenRunnable = null;
                this.mWorkspaceScreens.put(n, (Object)cellLayout2);
                this.mScreenOrder.add(n);
                n5 = n3;
            }
            n3 = n5;
        }
        if (!list.isEmpty()) {
            LauncherModel.updateWorkspaceScreenOrder((Context)this.mLauncher, this.mScreenOrder);
        }
        if (n3 >= 0) {
            this.setCurrentPage(nextPage - n3);
        }
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return true;
    }
    
    public void unlockWallpaperFromDefaultPageOnNextLayout() {
        if (this.mWallpaperOffset.isLockedToDefaultPage()) {
            this.mUnlockWallpaperFromDefaultPageOnLayout = true;
            this.requestLayout();
        }
    }
    
    public void updateAccessibilityFlags() {
        if (!this.mLauncher.getAccessibilityDelegate().isInAccessibleDrag()) {
            for (int pageCount = this.getPageCount(), i = this.numCustomPages(); i < pageCount; ++i) {
                this.updateAccessibilityFlags((CellLayout)this.getPageAt(i), i);
            }
            int importantForAccessibility;
            if (this.mState == Workspace$State.NORMAL || this.mState == Workspace$State.OVERVIEW) {
                importantForAccessibility = 0;
            }
            else {
                importantForAccessibility = 4;
            }
            this.setImportantForAccessibility(importantForAccessibility);
        }
    }
    
    void updateChildrenLayersEnabled(final boolean b) {
        boolean pageInTransition = true;
        boolean mIsSwitchingState;
        if (this.mState != Workspace$State.OVERVIEW) {
            mIsSwitchingState = this.mIsSwitchingState;
        }
        else {
            mIsSwitchingState = pageInTransition;
        }
        if (!b && !mIsSwitchingState && !this.mAnimatingViewIntoPlace) {
            pageInTransition = this.isPageInTransition();
        }
        if (pageInTransition != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = pageInTransition;
            if (this.mChildrenLayersEnabled) {
                this.enableHwLayersOnVisiblePages();
            }
            else {
                for (int i = 0; i < this.getPageCount(); ++i) {
                    ((CellLayout)this.getChildAt(i)).enableHardwareLayer(false);
                }
            }
        }
    }
    
    void updateCustomContentVisibility() {
        int customContentVisibility;
        if (this.mState == Workspace$State.NORMAL) {
            customContentVisibility = 0;
        }
        else {
            customContentVisibility = 4;
        }
        this.setCustomContentVisibility(customContentVisibility);
    }
    
    public void updateIconBadges(final Set set) {
        final PackageUserKey packageUserKey = new PackageUserKey(null, null);
        final HashSet set2 = new HashSet();
        this.mapOverItems(true, new Workspace$21(this, packageUserKey, set, set2));
        this.mapOverItems(false, new Workspace$22(this, set2));
    }
    
    public void updateRestoreItems(final HashSet set) {
        this.mapOverItems(true, new Workspace$23(this, set));
    }
    
    void updateShortcuts(final ArrayList list) {
        final int size = list.size();
        final HashSet set = new HashSet<ShortcutInfo>(size);
        final HashSet<Long> set2 = new HashSet<Long>();
        for (int i = 0; i < size; ++i) {
            final ShortcutInfo shortcutInfo = list.get(i);
            set.add(shortcutInfo);
            set2.add(shortcutInfo.container);
        }
        this.mapOverItems(true, new Workspace$19(this, set));
        this.mapOverItems(false, new Workspace$20(this, set2));
    }
    
    public void widgetsRestored(final ArrayList list) {
        if (!list.isEmpty()) {
            final Workspace$DeferredWidgetRefresh workspace$DeferredWidgetRefresh = new Workspace$DeferredWidgetRefresh(this, list, this.mLauncher.getAppWidgetHost());
            final LauncherAppWidgetInfo launcherAppWidgetInfo = list.get(0);
            AppWidgetProviderInfo appWidgetProviderInfo;
            if (launcherAppWidgetInfo.hasRestoreFlag(1)) {
                appWidgetProviderInfo = AppWidgetManagerCompat.getInstance((Context)this.mLauncher).findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
            }
            else {
                appWidgetProviderInfo = AppWidgetManagerCompat.getInstance((Context)this.mLauncher).getAppWidgetInfo(launcherAppWidgetInfo.appWidgetId);
            }
            if (appWidgetProviderInfo != null) {
                workspace$DeferredWidgetRefresh.run();
            }
            else {
                this.mapOverItems(false, new Workspace$24(this, list));
            }
        }
    }
    
    boolean willAddToExistingUserFolder(final ItemInfo itemInfo, final View view) {
        if (view != null) {
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
            if (cellLayout$LayoutParams.useTmpCoords && (cellLayout$LayoutParams.tmpCellX != cellLayout$LayoutParams.cellX || cellLayout$LayoutParams.tmpCellY != cellLayout$LayoutParams.cellY)) {
                return false;
            }
        }
        return view instanceof FolderIcon && ((FolderIcon)view).acceptDrop(itemInfo);
    }
    
    boolean willAddToExistingUserFolder(final ItemInfo itemInfo, final CellLayout cellLayout, final int[] array, final float n) {
        return n <= this.mMaxDistanceForFolderCreation && this.willAddToExistingUserFolder(itemInfo, cellLayout.getChildAt(array[0], array[1]));
    }
    
    boolean willCreateUserFolder(final ItemInfo itemInfo, final View view, final boolean b) {
        final boolean b2 = true;
        if (view != null) {
            final CellLayout$LayoutParams cellLayout$LayoutParams = (CellLayout$LayoutParams)view.getLayoutParams();
            if (cellLayout$LayoutParams.useTmpCoords && (cellLayout$LayoutParams.tmpCellX != cellLayout$LayoutParams.cellX || cellLayout$LayoutParams.tmpCellY != cellLayout$LayoutParams.cellY)) {
                return false;
            }
        }
        final boolean b3 = this.mDragInfo != null && view == this.mDragInfo.cell && b2;
        if (view == null || b3 || (b && (this.mCreateUserFolderOnDrop ^ true))) {
            return false;
        }
        final boolean b4 = view.getTag() instanceof ShortcutInfo;
        boolean b5;
        if (itemInfo.itemType == 0 || itemInfo.itemType == (b2 ? 1 : 0)) {
            b5 = b2;
        }
        else {
            b5 = (itemInfo.itemType == 6 && b2);
        }
        if (!b4) {
            b5 = false;
        }
        return b5;
    }
    
    boolean willCreateUserFolder(final ItemInfo itemInfo, final CellLayout cellLayout, final int[] array, final float n, final boolean b) {
        return n <= this.mMaxDistanceForFolderCreation && this.willCreateUserFolder(itemInfo, cellLayout.getChildAt(array[0], array[1]), b);
    }
    
    public boolean workspaceIconsCanBeDragged() {
        boolean b = true;
        if (this.mState != Workspace$State.NORMAL && this.mState != Workspace$State.SPRING_LOADED) {
            b = false;
        }
        return b;
    }
    
    public boolean workspaceInModalState() {
        return this.mState != Workspace$State.NORMAL;
    }
}
