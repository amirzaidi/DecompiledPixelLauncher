.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/UninstallDropTarget$DropTargetSource;


# static fields
.field private static ENFORCE_DRAG_EVENT_ORDER:Z

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field private final mAlphaInterpolator:Landroid/view/animation/Interpolator;

.field mAnimatingViewIntoPlace:Z

.field private final mCanvas:Landroid/graphics/Canvas;

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

.field private mCustomContentDescription:Ljava/lang/String;

.field private mCustomContentShowTime:J

.field mCustomContentShowing:Z

.field private mDeferDropAfterUninstall:Z

.field mDeferRemoveExtraEmptyScreen:Z

.field mDeferredAction:Ljava/lang/Runnable;

.field mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFirstPageScrollX:I

.field private mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

.field private final mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

.field private mForceDrawAdjacentPages:Z

.field private mHotseatAlpha:[F

.field private mIgnoreQsbScroll:Z

.field private mIsSwitchingState:Z

.field private mLastCustomContentScrollProgress:F

.field mLastOverlayScroll:F

.field mLastReorderX:I

.field mLastReorderY:I

.field mLauncher:Lcom/android/launcher3/Launcher;

.field mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMaxDistanceForFolderCreation:F

.field private mOnStateChangeListener:Lcom/android/launcher3/Workspace$OnStateChangeListener;

.field private mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field private mOverlayTranslation:F

.field private mOverviewModeShrinkFactor:F

.field private mPageAlpha:[F

.field private mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mQsbAlphaController:Lcom/android/launcher3/util/MultiStateAlphaController;

.field mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;

.field private mSavedStates:Landroid/util/SparseArray;

.field mScreenOrder:Ljava/util/ArrayList;

.field mScrollInteractionBegan:Z

.field private mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field mStartedSendingScrollEvents:Z

.field private mState:Lcom/android/launcher3/Workspace$State;

.field private mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private mTempTouchCoordinates:[F

.field private final mTempXY:[I

.field private mTouchDownTime:J

.field private mTransitionProgress:F

.field private mUnboundedScrollX:I

.field private mUninstallSuccessful:Z

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

.field private mXDown:F

.field private mYDown:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/graphics/DragPreviewProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/Workspace$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout$CellInfo;)Lcom/android/launcher3/CellLayout$CellInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/Workspace;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mFirstPageScrollX:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/launcher3/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIgnoreQsbScroll:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/launcher3/Workspace;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onWorkspaceOverallScrollChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/Workspace;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->setHotseatAlphaAtIndex(FI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    .line 140
    new-instance v0, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 144
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 154
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 155
    iput v5, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 156
    iput v5, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 160
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 161
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    .line 166
    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 170
    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 175
    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 184
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 185
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 186
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    .line 229
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mPageAlpha:[F

    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    .line 246
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    .line 247
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 250
    iput-boolean v6, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 254
    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 266
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    .line 267
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 269
    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 270
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 271
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 274
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    .line 295
    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 296
    iput v5, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 297
    iput v5, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 316
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1468
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 348
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 349
    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 353
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 355
    new-instance v1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 357
    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 356
    iput v0, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    .line 359
    invoke-virtual {p0, p0}, Lcom/android/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 360
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    .line 365
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 366
    return-void

    .line 229
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 235
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addInScreen(Landroid/view/View;JJIIII)V
    .locals 6

    .prologue
    .line 1105
    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 1106
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1107
    const-string/jumbo v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping child, screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1110
    return-void

    .line 1113
    :cond_0
    const-wide/16 v0, -0xc9

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 1115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_1
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_7

    .line 1120
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 1121
    new-instance v0, Lcom/android/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1124
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 1125
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    move-object v0, v1

    .line 1136
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1138
    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9

    .line 1139
    :cond_2
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, p6, p7, p8, p9}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1148
    :goto_1
    if-gez p8, :cond_3

    if-gez p9, :cond_3

    .line 1149
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1153
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 1154
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/ItemInfo;)I

    move-result v3

    .line 1156
    instance-of v1, p1, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v5, v1, 0x1

    .line 1157
    const/4 v2, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1161
    const-string/jumbo v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to add to item at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_4
    instance-of v0, p1, Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_5

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 1166
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1168
    :cond_5
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_6

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 1171
    :cond_6
    return-void

    .line 1129
    :cond_7
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 1130
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 1132
    :cond_8
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1133
    new-instance v1, Lcom/android/launcher3/IconKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher3/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_0

    .line 1141
    :cond_9
    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1142
    iput p6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1143
    iput p7, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1144
    iput p8, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1145
    iput p9, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v4, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2888
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 2889
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    .line 2890
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2892
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2880
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;->animateToRest()V

    .line 2883
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 2884
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 2885
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2896
    if-eqz p1, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 2899
    :cond_0
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2900
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2901
    return-void
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 6

    .prologue
    const-wide/16 v4, -0xc9

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    return-void

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 843
    const-wide/16 v0, -0x12d

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    return-void

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 847
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 848
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 847
    if-eqz v1, :cond_4

    .line 849
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 850
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 853
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 854
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 859
    :cond_4
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 1867
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_6

    .line 1868
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v7

    .line 1870
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportOffsetX()I

    move-result v0

    int-to-float v1, v0

    .line 1871
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 1872
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v2

    .line 1873
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 1874
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 1875
    sub-float v1, v3, v1

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    .line 1876
    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    .line 1881
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v3

    move v4, v6

    move v2, v6

    :goto_0
    if-ge v3, v7, :cond_3

    .line 1882
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1884
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 1885
    cmpg-float v10, v9, v0

    if-gtz v10, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    cmpl-float v8, v8, v1

    if-ltz v8, :cond_2

    .line 1886
    if-ne v2, v6, :cond_1

    move v2, v3

    :cond_1
    move v4, v2

    move v2, v3

    .line 1881
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v11, v2

    move v2, v4

    move v4, v11

    goto :goto_0

    :cond_2
    move v11, v4

    move v4, v2

    move v2, v11

    .line 1885
    goto :goto_1

    .line 1892
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v0, :cond_8

    .line 1894
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1895
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    .line 1894
    invoke-static {v0, v1, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    .line 1896
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1897
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1896
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    .line 1900
    :goto_2
    if-ne v1, v0, :cond_7

    .line 1902
    add-int/lit8 v2, v7, -0x1

    if-ge v0, v2, :cond_4

    .line 1903
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    .line 1909
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v4, v0

    :goto_4
    if-ge v4, v7, :cond_6

    .line 1910
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1912
    if-gt v2, v4, :cond_5

    if-gt v4, v1, :cond_5

    const/4 v3, 0x1

    .line 1913
    :goto_5
    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1909
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 1904
    :cond_4
    if-lez v1, :cond_7

    .line 1905
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_5
    move v3, v5

    .line 1912
    goto :goto_5

    .line 1916
    :cond_6
    return-void

    :cond_7
    move v2, v1

    move v1, v0

    goto :goto_3

    :cond_8
    move v0, v4

    move v1, v2

    goto :goto_2
.end method

.method private enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4

    .prologue
    const v2, 0x7f0e0001

    .line 2808
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2809
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2810
    :goto_0
    add-int/2addr v0, p3

    .line 2811
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2813
    if-eq v0, p4, :cond_0

    .line 2814
    const-string/jumbo v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Drag contract violated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_0
    return-void

    .line 2809
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private enforceDragParity(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 2801
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2802
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2803
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2802
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2805
    :cond_0
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 909
    const-string/jumbo v0, "alpha"

    new-array v1, v7, [F

    aput v3, v1, v6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 910
    const-string/jumbo v0, "backgroundAlpha"

    new-array v2, v7, [F

    aput v3, v2, v6

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 912
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 914
    new-instance v3, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v3, p0, v0, p4}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Z)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 930
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 931
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 932
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 933
    new-instance v1, Lcom/android/launcher3/Workspace$3;

    invoke-direct {v1, p0, p3}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 944
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 945
    return-void
.end method

.method private getDefaultPage()I
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    return v0
.end method

.method private getEmbeddedQsbId()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    const v0, 0x7f0e0046

    .line 581
    :goto_0
    return v0

    .line 582
    :cond_0
    const v0, 0x7f0e0003

    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;[IZ)V
    .locals 14

    .prologue
    .line 3435
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3436
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3438
    const/4 v2, 0x0

    aget v4, p6, v2

    const/4 v2, 0x1

    aget v5, p6, v2

    move-object v2, p0

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 3439
    move-object/from16 v0, p5

    iget v3, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3440
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 3441
    iget-object v4, v3, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v3, v3, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v4, v3}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    .line 3443
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, p1, v4

    .line 3444
    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x1

    aput v3, p1, v4

    .line 3446
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3448
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, p1, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v3

    .line 3449
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3451
    if-eqz p7, :cond_2

    .line 3452
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 3453
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3457
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-double v8, v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    sub-float/2addr v7, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    float-to-double v10, v7

    .line 3458
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    .line 3457
    sub-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v7, v8

    aput v7, p1, v6

    .line 3459
    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-float v7, v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, v8, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    sub-float v2, v7, v2

    float-to-int v2, v2

    aput v2, p1, v6

    .line 3460
    mul-float v2, v4, v3

    const/4 v4, 0x0

    aput v2, p2, v4

    .line 3461
    mul-float v2, v5, v3

    const/4 v3, 0x1

    aput v2, p2, v3

    .line 3477
    :cond_1
    :goto_0
    return-void

    .line 3465
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v2

    mul-float/2addr v2, v3

    .line 3466
    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v2, v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v4

    .line 3467
    const/4 v4, 0x1

    aget v5, p1, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v2, v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v4

    .line 3468
    const/4 v4, 0x1

    aput v2, p2, v4

    const/4 v4, 0x0

    aput v2, p2, v4

    .line 3471
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    .line 3472
    if-eqz v2, :cond_1

    .line 3473
    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, p1, v4

    .line 3474
    const/4 v4, 0x1

    aget v5, p1, v4

    int-to-float v5, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, p1, v4

    goto :goto_0
.end method

.method private getOverviewModePages([I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1960
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    .line 1961
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1963
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v3

    .line 1964
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1965
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4140
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    .line 4141
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4142
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4143
    if-ltz v2, :cond_1

    if-le v0, v7, :cond_1

    .line 4144
    if-ne p1, v2, :cond_0

    .line 4145
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4147
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 4149
    :cond_1
    if-nez v0, :cond_2

    .line 4151
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4153
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4154
    add-int/lit8 v4, p1, 0x1

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    .line 4153
    const v0, 0x7f0c0045

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2182
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2183
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2184
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 2185
    aget-object v0, v1, v0

    return-object v0

    .line 2183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2188
    :cond_1
    return-object v3
.end method

.method private isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 2947
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 2946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isQsbContainerPage(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4241
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScrollingOverlay()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1384
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v2, :cond_3

    .line 1385
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    iget v3, p0, Lcom/android/launcher3/Workspace;->mMaxScrollX:I

    if-le v2, v3, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v0

    .line 1385
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1384
    goto :goto_0
.end method

.method private manageFolderFeedback(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3102
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    return-void

    .line 3104
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 3105
    iget-object v2, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 3106
    invoke-virtual {p0, v2, v1, v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result v0

    .line 3107
    iget v3, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 3108
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 3107
    if-eqz v3, :cond_3

    .line 3110
    new-instance v0, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;

    .line 3111
    aget v2, p2, v5

    aget v3, p2, v6

    .line 3110
    invoke-direct {v0, p0, p1, v2, v3}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V

    .line 3113
    iget-boolean v2, p4, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v2, :cond_2

    .line 3114
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3115
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 3120
    :goto_0
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_1

    .line 3121
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 3122
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3121
    invoke-static {v1, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 3124
    :cond_1
    return-void

    .line 3117
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    goto :goto_0

    .line 3127
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v3

    .line 3128
    if-eqz v3, :cond_6

    iget v4, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v4, :cond_6

    move-object v0, v1

    .line 3129
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 3130
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/ItemInfo;)V

    .line 3131
    if-eqz p1, :cond_4

    .line 3132
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 3134
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3136
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_5

    .line 3137
    iget-object v0, p4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 3138
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3137
    invoke-static {v1, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 3140
    :cond_5
    return-void

    .line 3143
    :cond_6
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v1, v7, :cond_7

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_7

    .line 3144
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3146
    :cond_7
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v1, v6, :cond_8

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 3147
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 3149
    :cond_8
    return-void
.end method

.method private moveToScreen(IZ)V
    .locals 1

    .prologue
    .line 4092
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4093
    if-eqz p2, :cond_2

    .line 4094
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 4099
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4100
    if-eqz v0, :cond_1

    .line 4101
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4103
    :cond_1
    return-void

    .line 4096
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 23

    .prologue
    .line 3238
    new-instance v17, Lcom/android/launcher3/Workspace$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;)V

    .line 3246
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v4, v4, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v4, :cond_0

    .line 3247
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v4, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v4, v4, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    .line 3249
    if-eqz v4, :cond_0

    .line 3250
    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 3254
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v16, v0

    .line 3255
    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3256
    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_1

    .line 3258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v7, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 3259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v8, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 3262
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3263
    const/16 v4, -0x65

    .line 3262
    :goto_0
    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 3265
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v20

    .line 3266
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3267
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v4, v20, v4

    if-eqz v4, :cond_2

    .line 3268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v5, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq v4, v5, :cond_2

    .line 3269
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/launcher3/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    .line 3272
    :cond_2
    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v4, :cond_f

    move-object/from16 v15, v16

    .line 3273
    check-cast v15, Lcom/android/launcher3/PendingAddItemInfo;

    .line 3275
    const/4 v11, 0x1

    .line 3276
    iget v4, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 3277
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    .line 3278
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 3277
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 3280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3279
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v8

    .line 3281
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3283
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3282
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v4

    .line 3281
    if-eqz v4, :cond_15

    .line 3284
    :cond_3
    const/4 v4, 0x0

    .line 3288
    :goto_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v22, v0

    .line 3289
    const/16 v17, 0x0

    .line 3290
    if-eqz v4, :cond_6

    .line 3291
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3292
    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3293
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v4, :cond_4

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v4, :cond_4

    .line 3294
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 3295
    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 3297
    :cond_4
    const/4 v4, 0x2

    new-array v13, v4, [I

    .line 3298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v5, v4

    .line 3299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v6, v4

    move-object/from16 v0, v16

    iget v9, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3300
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v11, 0x0

    const/4 v14, 0x3

    move-object/from16 v4, p2

    .line 3298
    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3302
    const/4 v4, 0x0

    aget v4, v13, v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    aget v4, v13, v4

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v4, v5, :cond_b

    .line 3303
    :cond_5
    const/4 v4, 0x1

    .line 3305
    :goto_2
    const/4 v5, 0x0

    aget v5, v13, v5

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3306
    const/4 v5, 0x1

    aget v5, v13, v5

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v17, v4

    .line 3309
    :cond_6
    new-instance v5, Lcom/android/launcher3/Workspace$11;

    move-object/from16 v6, p0

    move-object v7, v15

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    move-object/from16 v12, v22

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/Workspace$11;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V

    .line 3323
    iget v4, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_c

    .line 3324
    iget v4, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_d

    const/4 v4, 0x1

    move v6, v4

    .line 3326
    :goto_3
    if-eqz v6, :cond_e

    move-object v4, v15

    .line 3327
    check-cast v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v12, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 3329
    :goto_4
    if-eqz v12, :cond_7

    if-eqz v17, :cond_7

    .line 3330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3331
    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 3330
    invoke-static {v12, v4, v7, v8}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 3334
    :cond_7
    const/4 v11, 0x0

    .line 3335
    if-eqz v6, :cond_8

    move-object v4, v15

    check-cast v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v4, :cond_8

    .line 3336
    check-cast v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v15}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v4

    .line 3335
    if-eqz v4, :cond_8

    .line 3337
    const/4 v11, 0x1

    .line 3339
    :cond_8
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 3340
    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move-object v10, v5

    .line 3339
    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3410
    :cond_9
    :goto_5
    return-void

    .line 3264
    :cond_a
    const/16 v4, -0x64

    goto/16 :goto_0

    :cond_b
    move/from16 v4, v17

    .line 3302
    goto :goto_2

    .line 3323
    :cond_c
    const/4 v4, 0x1

    move v6, v4

    goto :goto_3

    .line 3324
    :cond_d
    const/4 v4, 0x0

    move v6, v4

    goto :goto_3

    .line 3327
    :cond_e
    const/4 v12, 0x0

    goto :goto_4

    .line 3345
    :cond_f
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 3361
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3349
    :pswitch_1
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_10

    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v4, :cond_14

    .line 3351
    check-cast v16, Lcom/android/launcher3/AppInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v16

    .line 3352
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v5, v16

    .line 3354
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v4, v5

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v4}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    move-object/from16 v16, v5

    .line 3366
    :goto_7
    if-eqz p1, :cond_12

    .line 3367
    const/4 v4, 0x0

    aget v5, p1, v4

    const/4 v4, 0x1

    aget v6, p1, v4

    .line 3368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 3367
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 3370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3369
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 3371
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3372
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3373
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    const/4 v11, 0x1

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, v18

    move-object/from16 v8, p2

    .line 3372
    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3374
    return-void

    :cond_10
    move-object/from16 v5, v16

    .line 3349
    goto :goto_6

    .line 3357
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v4, v16

    .line 3358
    check-cast v4, Lcom/android/launcher3/FolderInfo;

    .line 3357
    const v6, 0x7f040013

    move-object/from16 v0, p2

    invoke-static {v6, v5, v0, v4}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v4

    move-object v15, v4

    .line 3359
    goto :goto_7

    .line 3376
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3377
    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    .line 3376
    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3378
    return-void

    .line 3382
    :cond_12
    if-eqz p1, :cond_13

    .line 3384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v5, v4

    .line 3385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v6, v4

    .line 3386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3385
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 3386
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object/from16 v4, p2

    .line 3384
    invoke-virtual/range {v4 .. v14}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3392
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    .line 3393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v10, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v11, v5, v6

    move-object/from16 v5, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    .line 3392
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 3395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v11, v4, v5

    .line 3396
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    .line 3395
    invoke-direct/range {v4 .. v13}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 3397
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3398
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3400
    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v4, :cond_9

    .line 3404
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 3405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v4, v5, v15, v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 3407
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_5

    .line 3388
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    goto :goto_8

    :cond_14
    move-object/from16 v5, v16

    goto/16 :goto_6

    :cond_15
    move v4, v11

    goto/16 :goto_1

    .line 3345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onWorkspaceOverallScrollChanged()V
    .locals 3

    .prologue
    .line 1411
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIgnoreQsbScroll:Z

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQsbContainer()Landroid/view/View;

    move-result-object v0

    .line 1413
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    iget v2, p0, Lcom/android/launcher3/Workspace;->mFirstPageScrollX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 1412
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1415
    :cond_0
    return-void
.end method

.method private setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3051
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3052
    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/Workspace;->isPointInSelfOverHotseat(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3057
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 3058
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 3060
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v0, v5

    .line 3061
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, v0, v1

    .line 3062
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3065
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 3067
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v0, v5

    .line 3068
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    aput v4, v0, v1

    .line 3069
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_5

    :goto_1
    add-int v0, v3, v2

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3073
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v2

    if-lt v3, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 3074
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3076
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, v2, :cond_6

    .line 3077
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3078
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 3079
    return v1

    :cond_4
    move v0, v2

    .line 3062
    goto :goto_0

    :cond_5
    move v2, v1

    .line 3069
    goto :goto_1

    .line 3081
    :cond_6
    return v5
.end method

.method private setHotseatAlphaAtIndex(FI)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1555
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aput p1, v0, p2

    .line 1556
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    .line 1557
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    .line 1559
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    .line 1560
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setAlpha(F)V

    .line 1561
    return-void
.end method

.method private setWorkspaceTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1518
    invoke-static {p1}, Lcom/android/launcher3/Workspace$Direction;->-get0(Lcom/android/launcher3/Workspace$Direction;)Landroid/util/Property;

    move-result-object v1

    .line 1519
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageAlpha:[F

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace$Direction;->ordinal()I

    move-result v2

    aput p3, v0, v2

    .line 1520
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageAlpha:[F

    aget v0, v0, v3

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mPageAlpha:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v2, v0

    .line 1522
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1523
    if-eqz v0, :cond_0

    .line 1524
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1525
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1529
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1531
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1532
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1533
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1530
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1536
    :cond_1
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 555
    return-void
.end method

.method private shouldConsumeTouch(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1185
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1186
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq v2, v3, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1186
    goto :goto_0
.end method

.method private showOutOfSpaceMessage(Z)V
    .locals 3

    .prologue
    .line 2738
    if-eqz p1, :cond_0

    const v0, 0x7f0c0032

    .line 2739
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2740
    return-void

    .line 2738
    :cond_0
    const v0, 0x7f0c0031

    goto :goto_0
.end method

.method private showPageIndicatorAtCurrentScroll()V
    .locals 3

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeMaxScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    .line 1438
    :cond_0
    return-void
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2293
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2294
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    .line 2293
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 2294
    goto :goto_0
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/CellLayout;I)V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 2106
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_2

    .line 2107
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 2108
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2110
    invoke-direct {p0, p2}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2113
    if-lez p2, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v0, :cond_0

    .line 2115
    new-instance v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2128
    :cond_1
    :goto_0
    return-void

    .line 2120
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v2, v3, :cond_3

    .line 2123
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 2124
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 2125
    invoke-virtual {p1, v4}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2126
    invoke-virtual {p1, v4}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2122
    goto :goto_1
.end method

.method private updatePageAlphaValues()V
    .locals 5

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v0, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1694
    if-eqz v0, :cond_1

    .line 1696
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1694
    if-eqz v0, :cond_1

    .line 1697
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 1698
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1699
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1700
    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1702
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 1703
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1705
    invoke-static {v1}, Lcom/android/launcher3/Workspace;->isQsbContainerPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsbAlphaController:Lcom/android/launcher3/util/MultiStateAlphaController;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/util/MultiStateAlphaController;->setAlphaAtIndex(FI)V

    .line 1698
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1711
    :cond_1
    return-void
.end method

.method private updateStateForCustomContent()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x12d

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1728
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1729
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1731
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1732
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v3

    .line 1731
    sub-int/2addr v1, v3

    .line 1733
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    sub-int v0, v3, v0

    int-to-float v0, v0

    .line 1734
    int-to-float v3, v1

    sub-float v3, v0, v3

    .line 1735
    int-to-float v1, v1

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    .line 1737
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1738
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1742
    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v3, v0

    .line 1745
    :goto_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1740
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1748
    cmpl-float v4, v1, v2

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1749
    invoke-virtual {v0, v5}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 1752
    :cond_2
    iput v1, p0, Lcom/android/launcher3/Workspace;->mLastCustomContentScrollProgress:F

    .line 1756
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v4, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v4, :cond_3

    .line 1757
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_7

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setBackgroundAlpha(F)V

    .line 1760
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1761
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->setTranslationX(F)V

    .line 1764
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_5

    .line 1765
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pageindicators/PageIndicator;->setTranslationX(F)V

    .line 1768
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_6

    .line 1769
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    .line 1771
    :cond_6
    return-void

    .line 1757
    :cond_7
    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v1

    goto :goto_2

    :cond_8
    move v1, v2

    move v3, v2

    goto :goto_1
.end method

.method private verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3088
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3089
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3090
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 3091
    aget v1, p2, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    aget v1, p2, v2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 3092
    aget v1, p2, v4

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    aget v1, p2, v4

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 3094
    return-object v0

    .line 3097
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 20

    .prologue
    .line 2302
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2303
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_7

    .line 2305
    if-nez v7, :cond_0

    .line 2306
    const/4 v2, 0x0

    return v2

    .line 2308
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 2310
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 2321
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_3

    .line 2322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2323
    iget v3, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2324
    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v2

    move/from16 v19, v3

    .line 2332
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_9

    .line 2333
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v5, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2334
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v6, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 2337
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    .line 2338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    .line 2339
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 2337
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 2341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2340
    invoke-virtual {v7, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v12

    .line 2342
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 2343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v10, v7

    .line 2342
    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2344
    const/4 v2, 0x1

    return v2

    .line 2316
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    goto/16 :goto_0

    .line 2326
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2327
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_1

    .line 2347
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 2348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2347
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v3, v12}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2349
    const/4 v2, 0x1

    return v2

    .line 2352
    :cond_5
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v8, v2

    .line 2354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v9, v2

    .line 2355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v14, 0x0

    const/16 v17, 0x4

    move v10, v5

    move v11, v6

    move/from16 v12, v19

    move/from16 v13, v18

    .line 2353
    invoke-virtual/range {v7 .. v17}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    .line 2359
    :goto_3
    if-nez v2, :cond_7

    .line 2360
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 2361
    const/4 v2, 0x0

    return v2

    .line 2356
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 2365
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v2

    .line 2366
    const-wide/16 v4, -0xc9

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 2367
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    .line 2370
    :cond_8
    const/4 v2, 0x1

    return v2

    :cond_9
    move/from16 v6, v18

    move/from16 v5, v19

    goto/16 :goto_2
.end method

.method public addExtraEmptyScreen()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 827
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 829
    const/4 v0, 0x1

    return v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addExtraEmptyScreenOnDrag()V
    .locals 8

    .prologue
    const-wide/16 v6, -0xc9

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 805
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_4

    .line 808
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 812
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    move v3, v2

    .line 818
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 819
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 822
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 824
    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .prologue
    .line 1088
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1089
    iget v8, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    .line 1088
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1090
    return-void
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .prologue
    .line 1073
    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 1074
    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 1075
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1076
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v0

    .line 1077
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v6

    .line 1078
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v7

    .line 1080
    :cond_0
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v8, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1081
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2490
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    return v2

    .line 2492
    :cond_0
    aget v0, p3, v2

    aget v1, p3, v3

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2493
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez v1, :cond_1

    return v2

    .line 2494
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2496
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_3

    .line 2497
    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    .line 2498
    iget-object v1, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2499
    invoke-virtual {v0, p5}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 2502
    if-nez p6, :cond_2

    .line 2503
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2505
    :cond_2
    return v3

    .line 2508
    :cond_3
    return v2
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 30

    .prologue
    .line 3482
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 3483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v12}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3485
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3486
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3487
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    xor-int/lit8 v11, v4, 0x1

    .line 3488
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/ItemInfo;[IZ)V

    .line 3491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 3492
    const v7, 0x7f0d0010

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v14, v4, -0xc8

    .line 3494
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2

    .line 3495
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_3

    const/4 v4, 0x1

    .line 3496
    :goto_0
    const/4 v7, 0x2

    move/from16 v0, p5

    if-eq v0, v7, :cond_0

    if-eqz p7, :cond_4

    :cond_0
    if-eqz p6, :cond_4

    .line 3497
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->createWidgetBitmap(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3498
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dragndrop/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 3499
    int-to-float v4, v14

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dragndrop/DragView;->crossFade(I)V

    .line 3504
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v15

    .line 3505
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 3506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v6

    const/4 v9, 0x0

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3dcccccd    # 0.1f

    .line 3507
    const/4 v12, 0x0

    move-object/from16 v7, p3

    move-object v8, v5

    move-object/from16 v13, p4

    .line 3506
    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 3531
    :goto_2
    return-void

    .line 3494
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 3495
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3500
    :cond_4
    if-eqz v4, :cond_1

    if-eqz p7, :cond_1

    .line 3501
    const/4 v4, 0x0

    aget v4, v6, v4

    const/4 v7, 0x1

    aget v7, v6, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x0

    aput v4, v6, v7

    goto :goto_1

    .line 3510
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 3511
    const/16 v27, 0x2

    .line 3516
    :goto_3
    new-instance v26, Lcom/android/launcher3/Workspace$12;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace$12;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3527
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/4 v4, 0x0

    aget v19, v5, v4

    .line 3528
    const/4 v4, 0x1

    aget v20, v5, v4

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v24, v6, v4

    const/4 v4, 0x1

    aget v25, v6, v4

    move-object/from16 v16, p3

    move/from16 v28, v14

    move-object/from16 v29, p0

    .line 3527
    invoke-virtual/range {v15 .. v29}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_2

    .line 3513
    :cond_6
    const/16 v27, 0x0

    goto :goto_3
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1683
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1685
    :cond_0
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 2235
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2236
    invoke-virtual {p1, v9}, Landroid/view/View;->setPressed(Z)V

    .line 2237
    iput-object p4, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 2240
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p4, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDragBitmap(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2241
    iget v0, p4, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v4, v0, 0x2

    .line 2243
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p4, v1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/Bitmap;[I)F

    move-result v8

    .line 2244
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v2, v0, v9

    .line 2245
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v3, 0x1

    aget v3, v0, v3

    .line 2247
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2250
    instance-of v5, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_3

    .line 2251
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    .line 2252
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 2253
    iget v0, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    .line 2256
    new-instance v6, Landroid/graphics/Point;

    neg-int v0, v4

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2266
    :goto_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 2267
    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 2268
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 2271
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_1

    .line 2272
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2275
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p5, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2277
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 2276
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 2278
    if-eqz v0, :cond_2

    .line 2279
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    iput-object v0, p5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 2281
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 2285
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v4, p2

    move-object v5, p3

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 2287
    invoke-interface {p2}, Lcom/android/launcher3/DragSource;->getIntrinsicIconScaleFactor()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->setIntrinsicIconScaleFactor(F)V

    .line 2288
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2289
    return-object v0

    .line 2257
    :cond_3
    instance-of v5, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v5, :cond_4

    .line 2258
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 2259
    new-instance v6, Landroid/graphics/Point;

    neg-int v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-direct {v6, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 2260
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {v7, v9, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 2261
    :cond_4
    instance-of v0, p4, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    if-eqz v0, :cond_5

    .line 2262
    new-instance v6, Landroid/graphics/Point;

    neg-int v0, v4

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_5
    move-object v6, v7

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 6

    .prologue
    .line 2221
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2222
    instance-of v0, v3, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_0

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    const-string/jumbo v1, "  tag: "

    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2225
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2226
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2228
    :cond_0
    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 2229
    new-instance v4, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v4, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 2228
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 2230
    return-void
.end method

.method public bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 594
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 623
    if-nez p1, :cond_2

    .line 626
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 627
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    const v1, 0x7f040023

    .line 626
    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 632
    :goto_1
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    invoke-direct {v4, v2, v2, v3, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 633
    iput-boolean v2, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 634
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getEmbeddedQsbId()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    const-string/jumbo v0, "Launcher.Workspace"

    const-string/jumbo v1, "Failed to add to item at (0, 0) to CellLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    return-void

    .line 628
    :cond_1
    const v1, 0x7f040021

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1920
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1922
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1923
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1924
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1925
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->buildHardwareLayer()V

    .line 1923
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1928
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1929
    return-void
.end method

.method clearDropTargets()V
    .locals 2

    .prologue
    .line 3843
    new-instance v0, Lcom/android/launcher3/Workspace$19;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$19;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3853
    return-void
.end method

.method public commitExtraEmptyScreen()J
    .locals 4

    .prologue
    const-wide/16 v2, -0xc9

    .line 954
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-wide/16 v0, -0x1

    return-wide v0

    .line 959
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    .line 960
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 961
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 962
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 964
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 965
    const-string/jumbo v2, "generate_new_screen_id"

    .line 964
    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 966
    const-string/jumbo v2, "value"

    .line 964
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 967
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 973
    return-wide v2
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1664
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1665
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1666
    return-void
.end method

.method public computeScrollWithoutInvalidation()V
    .locals 1

    .prologue
    .line 1669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->computeScrollHelper(Z)Z

    .line 1670
    return-void
.end method

.method public createCustomContentContainer()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x12d

    const/4 v3, 0x0

    .line 730
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040038

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 729
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 731
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->disableDragTarget()V

    .line 732
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->disableJailContent()V

    .line 734
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 735
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 738
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->addFullScreenPage(Landroid/view/View;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 744
    return-void
.end method

.method public createHotseatAlphaAnimator(F)Landroid/animation/ValueAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1564
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v0, v0, v2

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    new-array v0, v2, [F

    aput v1, v0, v3

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0

    .line 1568
    :cond_0
    new-array v0, v2, [F

    .line 1569
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mHotseatAlpha:[F

    aget v1, v1, v2

    aput v1, v0, v3

    aput p1, v0, v4

    .line 1568
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1570
    new-instance v0, Lcom/android/launcher3/Workspace$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1579
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1578
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1580
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 1582
    new-instance v2, Lcom/android/launcher3/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 1581
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1584
    new-instance v2, Lcom/android/launcher3/AlphaUpdateListener;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    .line 1583
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1585
    return-object v1
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z
    .locals 16

    .prologue
    .line 2433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 2434
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v12

    .line 2436
    const/4 v2, 0x0

    .line 2437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_1

    .line 2438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 2439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    const/4 v4, 0x0

    aget v4, p5, v4

    if-ne v3, v4, :cond_4

    .line 2440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    const/4 v4, 0x1

    aget v4, p5, v4

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p4

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    .line 2443
    :cond_1
    :goto_0
    if-eqz v12, :cond_2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x0

    return v2

    .line 2440
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 2439
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 2444
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2445
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v6

    .line 2447
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutInfo;

    .line 2448
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutInfo;

    .line 2450
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 2451
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/launcher3/ShortcutInfo;

    .line 2452
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/launcher3/ShortcutInfo;

    .line 2454
    if-nez p7, :cond_6

    .line 2455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2458
    :cond_6
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v14

    .line 2460
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    aget v8, p5, v3

    const/4 v3, 0x1

    aget v9, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v2

    .line 2464
    const/4 v3, -0x1

    iput v3, v11, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 2465
    const/4 v3, -0x1

    iput v3, v11, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 2466
    const/4 v3, -0x1

    iput v3, v10, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 2467
    const/4 v3, -0x1

    iput v3, v10, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 2470
    if-eqz p8, :cond_7

    const/4 v3, 0x1

    .line 2471
    :goto_1
    if-eqz v3, :cond_8

    .line 2474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;)V

    .line 2475
    new-instance v3, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    invoke-direct {v3}, Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/FolderIcon$PreviewBackground;

    move-object v3, v11

    move-object v4, v12

    move-object v5, v10

    move-object/from16 v6, p8

    move-object v7, v13

    move v8, v14

    move-object/from16 v9, p9

    .line 2476
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/folder/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2483
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 2470
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 2479
    :cond_8
    invoke-virtual {v2, v12}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreate(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 2480
    invoke-virtual {v2, v11}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 2481
    invoke-virtual {v2, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_2

    .line 2485
    :cond_9
    const/4 v2, 0x0

    return v2
.end method

.method public createWidgetBitmap(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3413
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, v7, v8}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I

    move-result-object v0

    .line 3414
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 3415
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3417
    aget v2, v0, v7

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3418
    aget v3, v0, v8

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3419
    aget v4, v0, v7

    aget v5, v0, v8

    .line 3420
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3419
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3421
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3423
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->measure(II)V

    .line 3424
    aget v2, v0, v7

    aget v0, v0, v8

    invoke-virtual {p2, v7, v7, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 3425
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3426
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3427
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3428
    return-object v4
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 3668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    .line 3669
    return-void
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 491
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 12

    .prologue
    const v11, 0x3f060a92

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1270
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1272
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float v3, v0, v3

    .line 1273
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1276
    invoke-static {v0, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 1278
    :cond_1
    div-float v5, v4, v0

    .line 1279
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 1281
    iget v6, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    .line 1282
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1286
    :cond_3
    iget-wide v6, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    iget-wide v8, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc8

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 1288
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_6

    cmpg-float v3, v3, v10

    if-gez v3, :cond_5

    :goto_1
    move v3, v1

    .line 1290
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    .line 1291
    :goto_3
    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 1293
    return-void

    :cond_4
    move v0, v2

    .line 1286
    goto :goto_0

    :cond_5
    move v3, v2

    .line 1288
    goto :goto_2

    :cond_6
    cmpl-float v3, v3, v10

    if-lez v3, :cond_5

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1290
    goto :goto_3

    .line 1296
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_9

    .line 1297
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1296
    if-eqz v0, :cond_9

    .line 1300
    return-void

    .line 1303
    :cond_9
    const v0, 0x3f860a92

    cmpl-float v0, v5, v0

    if-lez v0, :cond_a

    .line 1305
    return-void

    .line 1306
    :cond_a
    cmpl-float v0, v5, v11

    if-lez v0, :cond_b

    .line 1311
    sub-float v0, v5, v11

    .line 1313
    div-float/2addr v0, v11

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1312
    double-to-float v0, v0

    .line 1314
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-super {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1319
    :goto_4
    return-void

    .line 1317
    :cond_b
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_4
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1677
    :cond_0
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 562
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 3705
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3706
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1208
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1210
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public enableFreeScroll()Z
    .locals 3

    .prologue
    .line 4173
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    .line 4174
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->enableFreeScroll()Z

    move-result v0

    return v0

    .line 4176
    :cond_0
    const-string/jumbo v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableFreeScroll called but not in overview: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    const/4 v0, 0x0

    return v0
.end method

.method enableLayoutTransitions()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 559
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 428
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 429
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 430
    return-object v5
.end method

.method public estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I
    .locals 10

    .prologue
    const v1, 0x7fffffff

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v8, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    .line 394
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 395
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 397
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 398
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    move v6, v7

    .line 400
    :goto_0
    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 402
    const/high16 v0, 0x3f800000    # 1.0f

    .line 403
    if-eqz v6, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 405
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v0}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v0

    .line 407
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v9, v2

    .line 408
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    aput v1, v9, v7

    .line 410
    if-eqz v6, :cond_1

    if-eqz p3, :cond_1

    .line 411
    aget v1, v9, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    aput v1, v9, v2

    .line 412
    aget v1, v9, v7

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    aput v0, v9, v7

    .line 415
    :cond_1
    if-eqz p2, :cond_2

    .line 416
    aget v0, v9, v2

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    aput v0, v9, v2

    .line 417
    aget v0, v9, v7

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    aput v0, v9, v7

    .line 419
    :cond_2
    return-object v9

    :cond_3
    move v6, v2

    .line 398
    goto :goto_0

    .line 421
    :cond_4
    aput v1, v9, v2

    .line 422
    aput v1, v9, v7

    .line 423
    return-object v9
.end method

.method public exitWidgetResizeMode()V
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 1951
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 1952
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    .prologue
    .line 4159
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 4160
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 4161
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 4162
    const/4 v0, 0x1

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 4163
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4164
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 4165
    const/4 v0, 0x2

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 4169
    :cond_0
    :goto_0
    return-void

    .line 4166
    :cond_1
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 4167
    const/4 v0, 0x3

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_0
.end method

.method findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    .prologue
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 3572
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 3785
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3786
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 3787
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 3788
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3790
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3791
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3793
    :cond_1
    return-object v2
.end method

.method public getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4132
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_0

    .line 4133
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentDescription:Ljava/lang/String;

    return-object v0

    .line 4135
    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    .line 4136
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4135
    :cond_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    goto :goto_0
.end method

.method public getCurrentPageOffsetFromCustomContent()I
    .locals 2

    .prologue
    .line 3562
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCustomContentCallbacks()Lcom/android/launcher3/Launcher$CustomContentCallbacks;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    const/high16 v0, 0x60000

    return v0

    .line 1837
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method protected getEdgeVerticalPosition([I)V
    .locals 3

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1593
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 1594
    return-void
.end method

.method public getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3828
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 3829
    new-instance v1, Lcom/android/launcher3/Workspace$18;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$18;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3839
    aget-object v0, v0, v2

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 0

    .prologue
    .line 1956
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->getOverviewModePages([I)V

    .line 1957
    return-void
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 3227
    return-void
.end method

.method public getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1

    .prologue
    .line 3797
    new-instance v0, Lcom/android/launcher3/Workspace$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace$15;-><init>(Lcom/android/launcher3/Workspace;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIdForScreen(Lcom/android/launcher3/CellLayout;)J
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 982
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 985
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 3683
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getOverviewModeShrinkFactor()F
    .locals 1

    .prologue
    .line 2040
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    return v0
.end method

.method getOverviewModeTranslationY()I
    .locals 7

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2004
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getOverviewModeButtonBarHeight()I

    move-result v1

    .line 2006
    iget v2, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNormalChildHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2007
    sget-object v3, Lcom/android/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2008
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    .line 2009
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    .line 2010
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 2011
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    sub-int v1, v5, v1

    .line 2012
    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    .line 2013
    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    .line 2014
    neg-int v0, v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageAreaRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2746
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2747
    if-nez v0, :cond_0

    .line 2748
    return-void

    .line 2750
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 2755
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportOffsetX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 2756
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getTop()I

    move-result v0

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    aput v0, v2, v6

    .line 2758
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 2759
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v6

    .line 2760
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 2761
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 2759
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2762
    return-void
.end method

.method public getPageIndexForScreenId(J)I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4127
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 4

    .prologue
    .line 3755
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3756
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3757
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 3758
    return-object v0

    .line 3761
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenIdForPageIndex(I)J
    .locals 2

    .prologue
    .line 993
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 996
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getScreenOrder()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScreenWithId(J)Lcom/android/launcher3/CellLayout;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method getSpringLoadedTranslationY()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2018
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 2019
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2020
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2023
    :cond_1
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNormalChildHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 2024
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 2025
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2026
    sget-object v4, Lcom/android/launcher3/Workspace;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DeviceProfile;->getWorkspacePadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 2025
    sub-int/2addr v3, v4

    .line 2027
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadedBottomSpace:I

    .line 2025
    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 2028
    sub-float/2addr v3, v2

    .line 2030
    sub-float v1, v3, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 2032
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 2033
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 2034
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 2035
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    mul-float/2addr v2, v4

    sub-float v2, v3, v2

    .line 2036
    sub-float/2addr v1, v2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    div-float v0, v1, v0

    return v0
.end method

.method public getState()Lcom/android/launcher3/Workspace$State;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method public getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object v0
.end method

.method protected getUnboundedScrollX()I
    .locals 1

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isScrollingOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget v0, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    return v0

    .line 1380
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    return v0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/LauncherAppWidgetHostView;
    .locals 1

    .prologue
    .line 3817
    new-instance v0, Lcom/android/launcher3/Workspace$17;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$17;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    return-object v0
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 3768
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3769
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    .line 3770
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 3771
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3770
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3773
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3774
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3776
    :cond_1
    return-object v2
.end method

.method public hasCustomContent()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1714
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasExtraEmptyScreen()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 948
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    .line 949
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v3

    sub-int/2addr v2, v3

    .line 950
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v3

    if-eqz v3, :cond_0

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method hideCustomContentIfNecessary()V
    .locals 4

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2171
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 2173
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 2176
    :cond_0
    return-void

    .line 2170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    new-instance v1, Lcom/android/launcher3/accessibility/OverviewAccessibilityDelegate;

    invoke-direct {v1}, Lcom/android/launcher3/accessibility/OverviewAccessibilityDelegate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 540
    new-instance v0, Lcom/android/launcher3/util/MultiStateAlphaController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQsbContainer()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/MultiStateAlphaController;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mQsbAlphaController:Lcom/android/launcher3/util/MultiStateAlphaController;

    .line 541
    return-void
.end method

.method protected initWorkspace()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getDefaultPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 520
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setWillNotDraw(Z)V

    .line 522
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 525
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverviewModeShrinkFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setMinScale(F)V

    .line 526
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    .line 528
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    .line 531
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setEdgeGlowColor(I)V

    .line 534
    return-void
.end method

.method public insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Screen id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 713
    const v1, 0x7f040038

    .line 712
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 714
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 715
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 717
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 718
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 719
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 721
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 725
    :cond_1
    return-object v0
.end method

.method public insertNewWorkspaceScreen(J)V
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 703
    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(J)V
    .locals 5

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 695
    if-gez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 698
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 699
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3697
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1196
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v1, :cond_0

    .line 1197
    iget v1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return v0

    .line 1197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOverviewMode()Z
    .locals 2

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnOrMovingToCustomContent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1722
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isPointInSelfOverHotseat(II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2914
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput p1, v2, v1

    .line 2915
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput p2, v2, v0

    .line 2916
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, p0, v3, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 2917
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    .line 2918
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 2919
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 2920
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 2921
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt v3, v2, :cond_0

    .line 2918
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2921
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2918
    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 577
    iget v1, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lockWallpaperToDefaultPage()V
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1633
    return-void
.end method

.method mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 3920
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v7

    .line 3921
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v4

    .line 3922
    :goto_0
    if-ge v6, v8, :cond_4

    .line 3923
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 3925
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    move v5, v4

    .line 3926
    :goto_1
    if-ge v5, v9, :cond_3

    .line 3927
    invoke-virtual {v0, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3928
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 3929
    if-eqz p1, :cond_1

    instance-of v3, v1, Lcom/android/launcher3/FolderInfo;

    if-eqz v3, :cond_1

    instance-of v3, v2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 3930
    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    .line 3931
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 3933
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v3, v4

    .line 3934
    :goto_2
    if-ge v3, v11, :cond_2

    .line 3935
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3936
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 3937
    invoke-interface {p2, v2, v1}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3938
    return-void

    .line 3934
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 3942
    :cond_1
    invoke-interface {p2, v1, v2}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3943
    return-void

    .line 3926
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 3922
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 3948
    :cond_4
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2909
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2910
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2911
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2925
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v1, p2, v4

    float-to-int v1, v1

    aput v1, v0, v4

    .line 2926
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v1, p2, v3

    float-to-int v1, v1

    aput v1, v0, v3

    .line 2927
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 2928
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 2930
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p2, v4

    .line 2931
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p2, v3

    .line 2932
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1

    .prologue
    .line 4106
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getDefaultPage()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Workspace;->moveToScreen(IZ)V

    .line 4107
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1598
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 1600
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1602
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onShow(Z)V

    .line 1604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowTime:J

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    if-eqz v0, :cond_0

    .line 1607
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mCustomContentShowing:Z

    .line 1608
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    goto :goto_0
.end method

.method public numCustomPages()I
    .locals 1

    .prologue
    .line 1718
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1774
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1775
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1776
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1777
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1778
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1779
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 566
    instance-of v0, p2, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    .line 569
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 570
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClickable(Z)V

    .line 572
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 573
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 574
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1782
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1783
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1784
    return-void
.end method

.method public onDragEnd()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 496
    const-string/jumbo v0, "onDragEnd"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 503
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 509
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 510
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 511
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 512
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onInteractionEnd()V

    .line 513
    return-void

    :cond_2
    move v0, v2

    .line 500
    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2766
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 2767
    const-string/jumbo v0, "onDragEnter"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 2770
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2771
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2774
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2775
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    .line 2776
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2780
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 2781
    const-string/jumbo v0, "onDragExit"

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2787
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v0, v3, :cond_2

    .line 2788
    iput-boolean v3, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2794
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2795
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2797
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2798
    return-void

    .line 2789
    :cond_2
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2790
    iput-boolean v3, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_0
.end method

.method public onDragObjectRemoved(Z)V
    .locals 1

    .prologue
    .line 3674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    .line 3675
    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    .line 3676
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3677
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3679
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 26

    .prologue
    .line 2952
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2954
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v24, v0

    .line 2955
    if-nez v24, :cond_1

    .line 2959
    return-void

    .line 2963
    :cond_1
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ltz v2, :cond_2

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-gez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2964
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v2, :cond_9

    const/4 v12, 0x0

    .line 2967
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2976
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_8

    .line 2978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 2984
    :goto_2
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2985
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2986
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_5

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_5

    .line 2987
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2988
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 2991
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    .line 2993
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 2991
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 2995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 2997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3000
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2999
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    .line 3002
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v8, v4, v1}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;)V

    .line 3004
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v4, v4, v8

    .line 3004
    float-to-int v8, v4

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v4, v4, v9

    float-to-int v9, v4

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 3006
    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 3004
    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v25

    .line 3008
    if-nez v25, :cond_c

    .line 3009
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 3010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v19, p1

    .line 3009
    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V

    .line 3028
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 3030
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_8

    .line 3031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 3035
    :cond_8
    return-void

    .line 2966
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v12, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_0

    .line 2971
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto/16 :goto_1

    .line 2981
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    goto/16 :goto_2

    .line 3011
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    .line 3012
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 3011
    if-eqz v4, :cond_6

    .line 3012
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v4, v2, :cond_e

    .line 3013
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v2, v3, :cond_6

    .line 3015
    :cond_e
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 3016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v14, v2

    .line 3017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v15, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v19, v0

    .line 3018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v20, v12

    .line 3016
    invoke-virtual/range {v13 .. v23}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 3022
    new-instance v2, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 3023
    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move-object/from16 v0, v24

    iget v8, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move-object v10, v12

    .line 3022
    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    .line 3024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 3025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto/16 :goto_3

    .line 3029
    :cond_f
    xor-int/lit8 v2, v25, 0x1

    .line 3028
    if-eqz v2, :cond_8

    goto/16 :goto_4
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 435
    sget-boolean v0, Lcom/android/launcher3/Workspace;->ENFORCE_DRAG_EVENT_ORDER:Z

    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v0, "onDragStart"

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher3/Workspace;->enforceDragParity(Ljava/lang/String;II)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 441
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/graphics/DragPreviewProvider;->generateDragOutline(Landroid/graphics/Canvas;)V

    .line 449
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onDragStarted()V

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->lockScreenOrientation()V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onInteractionBegin()V

    .line 454
    invoke-static {}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue()V

    .line 461
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_4

    const/4 v0, 0x1

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 463
    if-eqz v0, :cond_3

    .line 464
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag()V

    .line 467
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 468
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_3

    .line 474
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    move v1, v0

    .line 475
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 476
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 477
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 478
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    .line 487
    return-void

    :cond_4
    move v0, v1

    .line 461
    goto :goto_0

    .line 475
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 34

    .prologue
    .line 2515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2516
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2519
    if-eqz v9, :cond_0

    .line 2520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2521
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    .line 2527
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 2529
    const/16 v29, -0x1

    .line 2530
    const/16 v30, 0x0

    .line 2531
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_4

    .line 2532
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v6, v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 2533
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 2534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v9, v1}, Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 2717
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v5, :cond_2

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 2718
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    const v5, 0x7f0c006d

    invoke-virtual {v4, v5}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 2720
    :cond_2
    return-void

    .line 2523
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v4}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    goto :goto_0

    .line 2535
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v5, :cond_1

    .line 2536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v11, v5, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2537
    const/16 v28, 0x0

    .line 2539
    if-eqz v9, :cond_5

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_24

    .line 2541
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    if-eq v4, v9, :cond_6

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 2542
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v32

    .line 2543
    if-eqz v32, :cond_7

    .line 2544
    const/16 v4, -0x65

    .line 2543
    :goto_3
    int-to-long v12, v4

    .line 2546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_8

    .line 2547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v26, v4

    .line 2548
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v7, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2549
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v8, v4, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 2553
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    float-to-int v5, v4

    .line 2554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    .line 2553
    float-to-int v6, v4

    .line 2554
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    .line 2553
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 2556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2555
    invoke-virtual {v9, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 2561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move-object v14, v9

    .line 2560
    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2562
    return-void

    :cond_5
    move/from16 v18, v4

    move/from16 v4, v30

    .line 2675
    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 2678
    new-instance v9, Lcom/android/launcher3/Workspace$9;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;)V

    .line 2685
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2686
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2687
    if-eqz v28, :cond_1c

    .line 2690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v4

    .line 2691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 2692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget v6, v6, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedTransitionTime:I

    .line 2690
    invoke-virtual {v4, v5, v11, v6}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    .line 2694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 2695
    invoke-virtual {v7, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2696
    return-void

    .line 2541
    :cond_6
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_2

    .line 2545
    :cond_7
    const/16 v4, -0x64

    goto/16 :goto_3

    .line 2547
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    move-wide/from16 v26, v4

    goto/16 :goto_4

    .line 2548
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 2549
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 2565
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    .line 2566
    const/16 v23, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move/from16 v21, v16

    move-object/from16 v22, p1

    .line 2565
    invoke-virtual/range {v17 .. v23}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2567
    return-void

    .line 2572
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    move-object/from16 v33, v0

    .line 2573
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 2574
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 2575
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v4, :cond_d

    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v4, :cond_d

    .line 2576
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    move/from16 v17, v0

    .line 2577
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    .line 2580
    :cond_d
    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v4, v4, v26

    if-nez v4, :cond_13

    move-object/from16 v0, v33

    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_13

    .line 2581
    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ne v4, v5, :cond_13

    move-object/from16 v0, v33

    iget v4, v0, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    :goto_8
    move/from16 v31, v4

    .line 2582
    :goto_9
    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    move/from16 v28, v4

    .line 2586
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v4

    if-nez v4, :cond_15

    .line 2587
    xor-int/lit8 v4, v28, 0x1

    .line 2586
    if-eqz v4, :cond_15

    .line 2588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 2587
    invoke-virtual {v9, v4, v5, v7, v8}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 2589
    :goto_b
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 2590
    if-eqz v5, :cond_16

    .line 2591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, -0x1

    const/4 v8, 0x1

    aput v7, v6, v8

    const/4 v6, -0x1

    const/4 v7, 0x0

    aput v6, v4, v7

    .line 2598
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    if-ltz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    if-ltz v4, :cond_17

    const/4 v4, 0x1

    move v6, v4

    .line 2601
    :goto_d
    if-eqz v6, :cond_18

    instance-of v4, v11, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_18

    .line 2602
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v4, v7, :cond_e

    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v4, v7, :cond_18

    .line 2603
    :cond_e
    const/16 v30, 0x1

    .line 2604
    const/4 v4, 0x0

    aget v4, v23, v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2605
    const/4 v4, 0x1

    aget v4, v23, v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v4, v11

    .line 2606
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    .line 2607
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x0

    aget v8, v23, v8

    .line 2608
    const/4 v10, 0x1

    aget v10, v23, v10

    .line 2607
    invoke-static {v4, v7, v8, v10}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    move/from16 v8, v30

    .line 2611
    :goto_e
    if-eqz v6, :cond_1a

    .line 2612
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v4, v4, v26

    if-eqz v4, :cond_19

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_23

    .line 2613
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    .line 2614
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    move v7, v4

    .line 2617
    :goto_f
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 2618
    if-eqz v25, :cond_10

    .line 2620
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 2621
    if-eqz v5, :cond_f

    .line 2622
    invoke-virtual {v5, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2626
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    aget v16, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v17, v5, v6

    .line 2627
    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v18, v0

    iget v0, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v19, v0

    move-object/from16 v10, p0

    move-wide/from16 v14, v26

    .line 2626
    invoke-direct/range {v10 .. v19}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 2631
    :cond_10
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2632
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v10, 0x0

    aget v6, v6, v10

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2633
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v10, 0x1

    aget v6, v6, v10

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2634
    move-object/from16 v0, v33

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2635
    move-object/from16 v0, v33

    iget v6, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2636
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2638
    const-wide/16 v14, -0x65

    cmp-long v6, v12, v14

    if-eqz v6, :cond_11

    .line 2639
    instance-of v6, v11, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 2638
    if-eqz v6, :cond_11

    move-object v6, v11

    .line 2644
    check-cast v6, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 2645
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    .line 2646
    if-eqz v10, :cond_11

    iget v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v10, :cond_11

    .line 2647
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    xor-int/lit8 v10, v10, 0x1

    .line 2646
    if-eqz v10, :cond_11

    .line 2648
    new-instance v10, Lcom/android/launcher3/Workspace$8;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v6, v9}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 2659
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v14

    .line 2660
    iget v0, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    iget v0, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    move/from16 v21, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    move/from16 v22, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    move/from16 v23, v0

    move-object v15, v4

    move-wide/from16 v16, v12

    move-wide/from16 v18, v26

    .line 2659
    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    move v4, v8

    move/from16 v29, v7

    move/from16 v18, v31

    goto/16 :goto_7

    .line 2581
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 2580
    :cond_13
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 2582
    :cond_14
    const/4 v4, 0x0

    move/from16 v28, v4

    goto/16 :goto_a

    .line 2586
    :cond_15
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_b

    .line 2593
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v4, v4, v6

    float-to-int v15, v4

    .line 2594
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    float-to-int v0, v4

    move/from16 v16, v0

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v22, v0

    const/16 v24, 0x2

    move-object v14, v9

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v11

    .line 2593
    invoke-virtual/range {v14 .. v24}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    goto/16 :goto_c

    .line 2598
    :cond_17
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_d

    :cond_18
    move/from16 v8, v30

    .line 2602
    goto/16 :goto_e

    :cond_19
    move/from16 v7, v29

    .line 2612
    goto/16 :goto_f

    .line 2662
    :cond_1a
    if-nez v5, :cond_1b

    .line 2663
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 2667
    :cond_1b
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2668
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 2669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 2670
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 2671
    invoke-virtual {v4, v11}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    move v4, v8

    move/from16 v18, v31

    goto/16 :goto_7

    .line 2698
    :cond_1c
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ItemInfo;

    .line 2699
    iget v5, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v8, 0x4

    if-eq v5, v8, :cond_1d

    .line 2700
    iget v5, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1e

    const/4 v5, 0x1

    .line 2701
    :goto_10
    if-eqz v5, :cond_20

    .line 2702
    if-eqz v4, :cond_1f

    const/4 v10, 0x2

    .line 2704
    :goto_11
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 2705
    const/4 v12, 0x0

    move-object/from16 v5, p0

    .line 2704
    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2715
    :goto_12
    invoke-virtual {v7, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    move/from16 v4, v18

    goto/16 :goto_1

    .line 2699
    :cond_1d
    const/4 v5, 0x1

    goto :goto_10

    .line 2700
    :cond_1e
    const/4 v5, 0x0

    goto :goto_10

    .line 2703
    :cond_1f
    const/4 v10, 0x0

    goto :goto_11

    .line 2707
    :cond_20
    if-gez v29, :cond_21

    const/4 v15, -0x1

    .line 2708
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v14, v11

    move-object/from16 v16, v9

    move-object/from16 v17, p0

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_12

    .line 2707
    :cond_21
    const/16 v15, 0x12c

    goto :goto_13

    .line 2712
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2713
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    :cond_23
    move/from16 v7, v29

    goto/16 :goto_f

    :cond_24
    move/from16 v18, v4

    move/from16 v4, v30

    goto/16 :goto_7
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 3590
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferDropAfterUninstall:Z

    if-eqz v0, :cond_0

    .line 3591
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 3592
    new-instance v0, Lcom/android/launcher3/Workspace$13;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/Workspace$13;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout$CellInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 3599
    return-void

    .line 3602
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 3604
    :goto_0
    if-eqz p4, :cond_7

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    if-eqz v2, :cond_7

    .line 3605
    :cond_1
    if-eq p1, p0, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_2

    .line 3606
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 3618
    :cond_2
    :goto_1
    iget-boolean v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUninstallSuccessful:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3619
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3620
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3622
    :cond_4
    iput-object v8, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 3624
    if-nez p3, :cond_5

    .line 3626
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3627
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x1f4

    .line 3626
    invoke-virtual {v0, p4, v2, v1}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 3628
    iput-object v8, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 3630
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 3602
    goto :goto_0

    .line 3608
    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_2

    .line 3609
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3610
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v4, v3, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v6, v3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 3609
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 3611
    if-eqz v2, :cond_2

    .line 3612
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onEndReordering()V
    .locals 6

    .prologue
    .line 1974
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 1976
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    return-void

    .line 1981
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1982
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    .line 1983
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1984
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1985
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1987
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logOverviewReorder()V

    .line 1988
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1991
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 1992
    return-void
.end method

.method public onEndStateTransition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2144
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2145
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2146
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showCustomContentIfNecessary()V

    .line 2147
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 2148
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 2149
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->isScrollingAllowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1236
    if-eqz v0, :cond_0

    .line 1239
    const/4 v0, 0x0

    return v0

    .line 1241
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    .line 1230
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1217
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 1218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/Workspace;->mTouchDownTime:J

    goto :goto_0

    .line 1223
    :sswitch_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-nez v0, :cond_0

    .line 1224
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1225
    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1215
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1792
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1794
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1796
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1798
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1800
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1801
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mFirstPageScrollX:I

    .line 1802
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onWorkspaceOverallScrollChanged()V

    .line 1804
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 1807
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1808
    new-instance v1, Lcom/android/launcher3/Workspace$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1829
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1830
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 641
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onMeasure(II)V

    .line 648
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 650
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v0

    .line 652
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQsbContainer()Landroid/view/View;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 654
    if-lez v0, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_0

    .line 655
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 656
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    :cond_0
    return-void
.end method

.method public onNoCellFound(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2723
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    .line 2730
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    .line 2735
    :goto_0
    return-void

    .line 2733
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    goto :goto_0
.end method

.method public onOverlayScrollChanged(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1477
    sub-float v0, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1478
    div-float/2addr v0, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1480
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v3, v1

    .line 1481
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 1482
    mul-float/2addr v0, v3

    .line 1484
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 1485
    neg-float v0, v0

    .line 1487
    :cond_0
    iput v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    .line 1492
    sget-object v2, Lcom/android/launcher3/Workspace$Direction;->X:Lcom/android/launcher3/Workspace$Direction;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/launcher3/Workspace;->setWorkspaceTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    .line 1493
    sget-object v2, Lcom/android/launcher3/Workspace$Direction;->X:Lcom/android/launcher3/Workspace$Direction;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher3/Workspace;->setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    .line 1494
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onWorkspaceOverallScrollChanged()V

    .line 1496
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsbAlphaController:Lcom/android/launcher3/util/MultiStateAlphaController;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/MultiStateAlphaController;->setAlphaAtIndex(FI)V

    .line 1497
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 1

    .prologue
    .line 1322
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1324
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1327
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1328
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1340
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1345
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1347
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_3

    .line 1348
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1349
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1351
    :cond_3
    return-void
.end method

.method public onPrepareStateTransition(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2131
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 2132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 2134
    if-eqz p1, :cond_0

    .line 2135
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 2137
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 2139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 2140
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hideCustomContentIfNecessary()V

    .line 2141
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->onResume()V

    .line 1788
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 1419
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 1420
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onWorkspaceOverallScrollChanged()V

    .line 1423
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_1

    .line 1424
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    .line 1425
    :goto_0
    if-nez v0, :cond_0

    .line 1426
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1429
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1430
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateStateForCustomContent()V

    .line 1431
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1432
    return-void

    .line 1423
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1424
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollInteractionBegin()V
    .locals 1

    .prologue
    .line 1354
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1356
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1359
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1360
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1361
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-eqz v0, :cond_0

    .line 1362
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1363
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionEnd()V

    .line 1365
    :cond_0
    return-void
.end method

.method public onStartReordering()V
    .locals 0

    .prologue
    .line 1968
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 1970
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 1971
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1181
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldConsumeTouch(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1932
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 1933
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    .line 1935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1936
    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 1937
    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    .line 1939
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1941
    const-string/jumbo v2, "android.wallpaper.tap"

    .line 1942
    :goto_0
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    .line 1939
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1943
    return-void

    .line 1941
    :cond_0
    const-string/jumbo v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    .line 1202
    return-void
.end method

.method protected overScroll(F)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1442
    cmpg-float v0, p1, v5

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v0, :cond_7

    .line 1443
    :cond_0
    cmpl-float v0, p1, v5

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1445
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v3, :cond_c

    .line 1446
    cmpg-float v3, p1, v5

    if-gtz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_a

    :cond_1
    cmpl-float v3, p1, v5

    if-ltz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    .line 1448
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 1449
    cmpl-float v4, p1, v5

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_d

    :cond_2
    cmpg-float v4, p1, v5

    if-gtz v4, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    .line 1451
    :cond_3
    :goto_2
    if-eqz v3, :cond_e

    .line 1452
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    if-eqz v0, :cond_4

    .line 1453
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1454
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionBegin()V

    .line 1457
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewportWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 1458
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget v1, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-interface {v0, v1, v3}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange(FZ)V

    .line 1463
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 1464
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    invoke-interface {v0, v5, v1}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange(FZ)V

    .line 1466
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 1442
    goto :goto_0

    :cond_8
    move v0, v1

    .line 1443
    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    move v3, v1

    .line 1446
    goto :goto_1

    :cond_b
    move v3, v2

    goto :goto_1

    :cond_c
    move v3, v2

    .line 1445
    goto :goto_1

    :cond_d
    move v2, v1

    .line 1449
    goto :goto_2

    .line 1459
    :cond_e
    if-eqz v0, :cond_5

    .line 1460
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dampedOverScroll(F)V

    goto :goto_3
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .prologue
    .line 2512
    return-void
.end method

.method public prepareDragWithProvider(Lcom/android/launcher3/graphics/DragPreviewProvider;)V
    .locals 0

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 1947
    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1245
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v5

    move v4, v3

    .line 1246
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1247
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1248
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    .line 1249
    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    move v2, v3

    .line 1250
    :goto_1
    if-ge v2, v7, :cond_1

    .line 1251
    invoke-virtual {v6, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1253
    instance-of v0, v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1253
    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1256
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 1257
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->isReinflateRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1260
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v1, v0, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 1261
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1250
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1246
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1266
    :cond_2
    return-void
.end method

.method public removeAbandonedPromise(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 4029
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 4030
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4031
    invoke-static {v0, p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v0

    .line 4032
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 4033
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 4034
    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeCustomContentPage()V

    .line 674
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->getEmbeddedQsbId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_1

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    .line 681
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    .line 685
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 689
    return-void
.end method

.method public removeCustomContentPage()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x12d

    const/4 v3, 0x0

    .line 747
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 748
    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Expected custom content screen to exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 756
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onScrollProgressChanged(F)V

    .line 758
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$CustomContentCallbacks;->onHide()V

    .line 761
    :cond_1
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mCustomContentCallbacks:Lcom/android/launcher3/Launcher$CustomContentCallbacks;

    .line 764
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 765
    return-void
.end method

.method public removeExtraEmptyScreen(ZZ)V
    .locals 2

    .prologue
    .line 862
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 863
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 7

    .prologue
    const/16 v6, 0x190

    const/16 v5, 0x96

    const/4 v4, 0x0

    .line 867
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    if-lez p3, :cond_1

    .line 873
    new-instance v0, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    .line 878
    int-to-long v2, p3

    .line 873
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 879
    return-void

    .line 882
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 883
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 886
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 887
    invoke-direct {p0, v6, v5, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    .line 894
    :goto_0
    return-void

    .line 890
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 891
    invoke-direct {p0, v4, v5, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 895
    :cond_3
    if-eqz p4, :cond_4

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 901
    :cond_4
    if-eqz p2, :cond_5

    .line 902
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 904
    :cond_5
    return-void
.end method

.method public removeFolderListeners()V
    .locals 2

    .prologue
    .line 3655
    new-instance v0, Lcom/android/launcher3/Workspace$14;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$14;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3664
    return-void
.end method

.method public removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 3861
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3862
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3863
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 3865
    new-instance v6, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v6}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 3866
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 3867
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 3868
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3869
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_1

    .line 3870
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 3871
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3872
    iget-wide v10, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v6, v10, v11, v8}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3867
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3876
    :cond_2
    invoke-virtual {p1, v7}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 3877
    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3879
    if-eqz v2, :cond_4

    .line 3882
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3883
    instance-of v1, v2, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_3

    .line 3884
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v2, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_1

    .line 3886
    :cond_4
    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_3

    .line 3888
    iget-wide v8, v1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v6, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3889
    if-eqz v2, :cond_3

    .line 3890
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/FolderInfo;

    .line 3891
    invoke-virtual {v2}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 3892
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_1

    .line 3899
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3900
    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3636
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3637
    if-eqz v0, :cond_0

    .line 3638
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 3646
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    .line 3647
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3649
    :cond_1
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    .prologue
    .line 3541
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3542
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3543
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3545
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 2

    .prologue
    .line 3709
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3710
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3711
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3712
    if-eqz v0, :cond_0

    .line 3713
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3716
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 3719
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 3720
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3721
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3722
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 3720
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3725
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3727
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 3731
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3732
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 3734
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 3735
    if-eqz v0, :cond_1

    .line 3736
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3738
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .prologue
    .line 3742
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3743
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 3745
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 3746
    if-eqz v0, :cond_1

    .line 3747
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3749
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .prologue
    .line 1406
    iput p1, p0, Lcom/android/launcher3/Workspace;->mUnboundedScrollX:I

    .line 1407
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 1408
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2834
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2836
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 2837
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 2838
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2842
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidateScrim()V

    .line 2843
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2819
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2821
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    .line 2823
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2824
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_1

    .line 2825
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    .line 2827
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2828
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2829
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2830
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1

    .prologue
    .line 2850
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2851
    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 2852
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 2853
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2855
    :cond_1
    return-void
.end method

.method setCustomContentVisibility(I)V
    .locals 4

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2160
    :cond_0
    return-void
.end method

.method setDragMode(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2858
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 2859
    if-nez p1, :cond_2

    .line 2860
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2863
    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2864
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2875
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 2877
    :cond_1
    return-void

    .line 2865
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2866
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2867
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2868
    :cond_3
    if-ne p1, v1, :cond_4

    .line 2869
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2870
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2871
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2872
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2873
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    .prologue
    .line 3534
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3535
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 3536
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3537
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3539
    :cond_0
    return-void
.end method

.method public setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V
    .locals 3

    .prologue
    .line 1545
    invoke-static {p1}, Lcom/android/launcher3/Workspace$Direction;->-get0(Lcom/android/launcher3/Workspace$Direction;)Landroid/util/Property;

    move-result-object v0

    .line 1547
    sget-object v1, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1548
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1550
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1551
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace$Direction;->ordinal()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/launcher3/Workspace;->setHotseatAlphaAtIndex(FI)V

    .line 1552
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    instance-of v1, v0, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_0

    .line 376
    check-cast v0, Lcom/android/launcher3/Insettable;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 379
    :cond_0
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V
    .locals 1

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    .line 1370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1372
    return-void
.end method

.method public setOnStateChangeListener(Lcom/android/launcher3/Workspace$OnStateChangeListener;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mOnStateChangeListener:Lcom/android/launcher3/Workspace$OnStateChangeListener;

    .line 383
    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2049
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    .line 2052
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    .line 2055
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationToState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 2058
    iget-boolean v0, v0, Lcom/android/launcher3/Workspace$State;->shouldUpdateWidget:Z

    if-nez v0, :cond_2

    .line 2059
    iget-boolean v0, p1, Lcom/android/launcher3/Workspace$State;->shouldUpdateWidget:Z

    .line 2061
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 2063
    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->notifyWidgetProvidersChanged()V

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnStateChangeListener:Lcom/android/launcher3/Workspace$OnStateChangeListener;

    if-eqz v0, :cond_1

    .line 2068
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mOnStateChangeListener:Lcom/android/launcher3/Workspace$OnStateChangeListener;

    if-eqz p2, :cond_3

    move-object v0, v2

    :goto_1
    invoke-interface {v4, p1, v0}, Lcom/android/launcher3/Workspace$OnStateChangeListener;->prepareStateChange(Lcom/android/launcher3/Workspace$State;Landroid/animation/AnimatorSet;)V

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace$State;->hasMultipleVisiblePages:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->onPrepareStateTransition(Z)V

    .line 2073
    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    invoke-direct {v0, p0, v3}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$StateTransitionListener;)V

    .line 2074
    if-eqz p2, :cond_4

    .line 2075
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2076
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2078
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2079
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2085
    :goto_2
    return-object v2

    :cond_2
    move v0, v1

    .line 2058
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 2068
    goto :goto_1

    .line 2081
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace$StateTransitionListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2082
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace$StateTransitionListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2
.end method

.method protected setWallpaperDimension()V
    .locals 2

    .prologue
    .line 1619
    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/Workspace$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1629
    return-void
.end method

.method public setWorkspaceYTranslationAndAlpha(FF)V
    .locals 2

    .prologue
    .line 1505
    sget-object v0, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->setWorkspaceTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    .line 1507
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQsbContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1508
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsbAlphaController:Lcom/android/launcher3/util/MultiStateAlphaController;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/MultiStateAlphaController;->setAlphaAtIndex(FI)V

    .line 1509
    return-void
.end method

.method setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2

    .prologue
    .line 3577
    new-instance v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    .line 3578
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 3582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3583
    return-void
.end method

.method showCustomContentIfNecessary()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2163
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 2164
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v2, -0x12d

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setVisibility(I)V

    .line 2167
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2163
    goto :goto_0
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1689
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 1691
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1394
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isScrollingOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1397
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWasInOverscroll:Z

    .line 1398
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)V

    .line 1402
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_0
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1650
    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1651
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 1652
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1643
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    .line 1644
    return-void
.end method

.method public snapToPageFromOverView(I)V
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->snapToPageFromOverView(I)V

    .line 2000
    return-void
.end method

.method protected snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1659
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    .line 1660
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .prologue
    .line 2192
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2195
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2196
    return-void

    .line 2199
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2200
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2202
    iget-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v1, :cond_1

    .line 2203
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/Workspace$7;

    .line 2204
    const/4 v3, 0x2

    .line 2203
    invoke-direct {v2, p0, p0, v3}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 2217
    :cond_1
    invoke-virtual {p0, v0, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 2218
    return-void
.end method

.method public stripEmptyScreens()V
    .locals 14

    .prologue
    const-wide/16 v12, -0xc9

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1004
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    return-void

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1012
    return-void

    .line 1015
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v4

    .line 1016
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v2

    move v1, v3

    .line 1018
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1019
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    .line 1020
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1022
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 1023
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1024
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1028
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v6

    .line 1032
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 1035
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1036
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 1037
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1038
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 1041
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_9

    .line 1042
    add-int/lit8 v0, v2, 0x1

    .line 1045
    :goto_2
    if-eqz v6, :cond_4

    .line 1046
    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 1049
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    :goto_3
    move v2, v0

    goto :goto_1

    .line 1052
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 1053
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 1054
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_3

    .line 1058
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1060
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1063
    :cond_7
    if-ltz v2, :cond_8

    .line 1064
    sub-int v0, v4, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 1066
    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 3688
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 3693
    const/4 v0, 0x1

    return v0
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1638
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1640
    :cond_0
    return-void
.end method

.method public updateAccessibilityFlags()V
    .locals 3

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2095
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v2

    .line 2096
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2097
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(Lcom/android/launcher3/CellLayout;I)V

    .line 2096
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_3

    .line 2100
    :cond_1
    const/4 v0, 0x0

    .line 2099
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 2103
    :cond_2
    return-void

    .line 2101
    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method

.method updateChildrenLayersEnabled(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1850
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v3, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1851
    :goto_0
    if-nez p1, :cond_0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    .line 1853
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v1, :cond_1

    .line 1854
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1855
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_3

    .line 1856
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1864
    :cond_1
    return-void

    :cond_2
    move v1, v0

    .line 1850
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1858
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1859
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 1860
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1858
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method updateCustomContentVisibility()V
    .locals 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2153
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCustomContentVisibility(I)V

    .line 2154
    return-void

    .line 2152
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateIconBadges(Ljava/util/Set;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3992
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3993
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3994
    new-instance v2, Lcom/android/launcher3/Workspace$22;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/launcher3/Workspace$22;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/Set;Ljava/util/HashSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4010
    new-instance v0, Lcom/android/launcher3/Workspace$23;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$23;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4026
    return-void
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 2

    .prologue
    .line 4037
    new-instance v0, Lcom/android/launcher3/Workspace$24;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$24;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 4052
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3951
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3952
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 3953
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    .line 3955
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3956
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3957
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3958
    iget-wide v6, v0, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3955
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3961
    :cond_0
    new-instance v0, Lcom/android/launcher3/Workspace$20;

    invoke-direct {v0, p0, v4}, Lcom/android/launcher3/Workspace$20;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3979
    new-instance v0, Lcom/android/launcher3/Workspace$21;

    invoke-direct {v0, p0, v5}, Lcom/android/launcher3/Workspace$21;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3989
    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4055
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4056
    new-instance v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    .line 4057
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    .line 4056
    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V

    .line 4059
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 4061
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4063
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 4062
    invoke-static {v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    .line 4063
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 4062
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 4069
    :goto_0
    if-eqz v0, :cond_2

    .line 4071
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    .line 4089
    :cond_0
    :goto_1
    return-void

    .line 4065
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v2

    .line 4066
    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 4065
    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    .line 4075
    :cond_2
    new-instance v0, Lcom/android/launcher3/Workspace$25;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$25;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    goto :goto_1
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2414
    if-eqz p2, :cond_1

    .line 2415
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2416
    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v1, v0, :cond_1

    .line 2417
    :cond_0
    return v3

    .line 2421
    :cond_1
    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 2422
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    .line 2423
    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2424
    const/4 v0, 0x1

    return v0

    .line 2427
    :cond_2
    return v3
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2408
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    return v1

    .line 2409
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2410
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2381
    if-eqz p2, :cond_1

    .line 2382
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2383
    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v3, v0, :cond_1

    .line 2384
    :cond_0
    return v1

    .line 2389
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_9

    .line 2390
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v0, :cond_3

    move v0, v2

    .line 2393
    :goto_0
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    if-eqz p3, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 2394
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 2390
    goto :goto_0

    .line 2397
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/ShortcutInfo;

    .line 2399
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v0, :cond_5

    .line 2400
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v0, v2, :cond_6

    :cond_5
    move v0, v2

    .line 2403
    :goto_1
    if-eqz v3, :cond_8

    :goto_2
    return v0

    .line 2401
    :cond_6
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v1

    .line 2403
    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2375
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    return v1

    .line 2376
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2377
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public workspaceIconsCanBeDragged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1846
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v2, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public workspaceInModalState()Z
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mState:Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
