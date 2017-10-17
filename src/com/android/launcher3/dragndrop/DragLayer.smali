.class public Lcom/android/launcher3/dragndrop/DragLayer;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# instance fields
.field private mActiveController:Lcom/android/launcher3/util/TouchController;

.field private mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field mAnchorView:Landroid/view/View;

.field mAnchorViewInitialScrollX:I

.field private mBackgroundAlpha:F

.field private mChildCountOnLastUpdate:I

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field mDropView:Lcom/android/launcher3/dragndrop/DragView;

.field private final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mHighlightRect:Landroid/graphics/Rect;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field private final mIsRtl:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

.field private final mScrollChildPosition:Landroid/graphics/Rect;

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

.field private final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    .line 89
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 90
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 91
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 92
    iput v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 93
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 95
    iput-boolean v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHighlightRect:Landroid/graphics/Rect;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mScrollChildPosition:Landroid/graphics/Rect;

    .line 113
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mIsRtl:Z

    .line 133
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 135
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 186
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 190
    return v0

    .line 192
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    return v0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 200
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getLogContainerType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionTapOutside(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 205
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    return v0

    .line 210
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private isEventOverFolder(Lcom/android/launcher3/folder/Folder;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private isInAccessibleDrag()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    return v0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 2

    .prologue
    .line 308
    if-eqz p1, :cond_0

    const v0, 0x7f0c004b

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 309
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 311
    return-void

    .line 308
    :cond_0
    const v0, 0x7f0c004a

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 3

    .prologue
    .line 825
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 826
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v1

    .line 827
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 828
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    .line 829
    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 827
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_1
    iput v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 833
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addResizeFrame(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 557
    const v1, 0x7f04000c

    .line 556
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setupForWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 561
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 563
    return-void
.end method

.method public animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 759
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->cancelAnimation()V

    .line 761
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->requestLayout()V

    .line 764
    if-eqz p7, :cond_1

    .line 765
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 767
    :cond_1
    iput-object p7, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 770
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 773
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 774
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/dragndrop/DragLayer$3;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 790
    return-void

    .line 773
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 17

    .prologue
    .line 689
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v3, v2

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 691
    const v2, 0x7f0d0015

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v5, v2

    .line 694
    if-gez p9, :cond_1

    .line 695
    const v2, 0x7f0d0010

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 696
    cmpg-float v6, v3, v5

    if-gez v6, :cond_0

    .line 697
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v3, v5

    invoke-interface {v6, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 699
    :cond_0
    const v3, 0x7f0d000f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 703
    :cond_1
    const/4 v2, 0x0

    .line 704
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 705
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v2

    .line 709
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getAlpha()F

    move-result v13

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v8

    .line 711
    new-instance v2, Lcom/android/launcher3/dragndrop/DragLayer$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p11

    move-object/from16 v6, p10

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/launcher3/dragndrop/DragLayer$2;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move/from16 v6, p9

    move-object/from16 v7, v16

    move-object/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p14

    .line 748
    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 750
    return-void

    :cond_3
    move-object/from16 v16, v2

    .line 704
    goto :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17

    .prologue
    .line 653
    new-instance v4, Landroid/graphics/Rect;

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    .line 653
    add-int v2, v2, p2

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    .line 653
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 655
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 657
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    .line 656
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 658
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 586
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 588
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 589
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 591
    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 593
    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v3, v8

    const/4 v8, 0x0

    aput v3, v5, v8

    .line 594
    iget v3, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v7

    mul-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    float-to-int v4, v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v5, v4

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v3

    .line 601
    mul-float v4, v3, v7

    .line 602
    const/4 v3, 0x0

    aget v7, v5, v3

    .line 603
    const/4 v3, 0x1

    aget v5, v5, v3

    .line 605
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object/from16 v3, p2

    .line 606
    check-cast v3, Landroid/widget/TextView;

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getIntrinsicIconScaleFactor()F

    move-result v8

    div-float v12, v4, v8

    .line 614
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    .line 615
    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v12

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 617
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    .line 620
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v7, v4

    move v8, v3

    .line 634
    :goto_0
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 635
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 636
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 637
    new-instance v14, Lcom/android/launcher3/dragndrop/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer$1;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 645
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 646
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    .line 645
    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 647
    return-void

    .line 621
    :cond_1
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_2

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionTop()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    .line 624
    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 625
    int-to-float v3, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v8, v3

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v5, v3

    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 630
    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    move v12, v4

    goto/16 :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 579
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 580
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 17

    .prologue
    .line 568
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 570
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 571
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 573
    const/4 v2, 0x0

    aget v6, p2, v2

    const/4 v2, 0x1

    aget v7, p2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 574
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p6

    move/from16 v15, p8

    .line 573
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 575
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 820
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 821
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 822
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 473
    instance-of v0, p1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAnimatedView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 799
    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 800
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 801
    return-void
.end method

.method public clearResizeFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->commitResize()V

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 549
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 551
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 870
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->computeScrollWithoutInvalidation()V

    .line 874
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 875
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 876
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 877
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 879
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHighlightRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 880
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHighlightRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getMainColor()I

    move-result v1

    const/high16 v2, 0x66000000

    invoke-static {v2, v1}, Landroid/support/v4/b/a;->asf(II)I

    move-result v1

    .line 885
    invoke-static {v1, v0}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 890
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 891
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 450
    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :cond_0
    return v0

    .line 449
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 467
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 837
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 846
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 848
    return p2

    .line 849
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 851
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    return v0

    .line 852
    :cond_2
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    if-ge p2, v0, :cond_3

    .line 853
    return p2

    .line 857
    :cond_3
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1

    .prologue
    .line 420
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aput v4, v0, v4

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aput v4, v0, v5

    .line 388
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    .line 391
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 392
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 390
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 393
    return v0
.end method

.method public getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    aput v1, p2, v1

    .line 398
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInWindow([I)V

    .line 434
    aget v1, v0, v3

    .line 435
    aget v2, v0, v4

    .line 437
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 438
    aget v3, v0, v3

    .line 439
    aget v0, v0, v4

    .line 441
    sub-int v1, v3, v1

    .line 442
    sub-int/2addr v0, v2

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    return-void
.end method

.method public invalidateScrim()V
    .locals 2

    .prologue
    .line 862
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 865
    :cond_0
    return-void
.end method

.method public isEventOverHotseat(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public mapCoordInSelfToDescendant(Landroid/view/View;[I)V
    .locals 0

    .prologue
    .line 428
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 429
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 2

    .prologue
    .line 158
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    .line 160
    return-void

    .line 159
    :cond_1
    new-instance v0, Lcom/android/launcher3/PinchToOverviewListener;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/PinchToOverviewListener;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 809
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 810
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 811
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 816
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    return v2

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    .line 271
    if-nez v3, :cond_2

    .line 272
    return v2

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 276
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 279
    packed-switch v0, :pswitch_data_0

    .line 304
    :cond_3
    :goto_0
    :pswitch_0
    return v2

    .line 281
    :pswitch_1
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/android/launcher3/folder/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 283
    :goto_1
    if-nez v0, :cond_6

    .line 284
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 285
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 286
    return v1

    :cond_4
    move v0, v1

    .line 281
    goto :goto_1

    :cond_5
    move v0, v2

    .line 282
    goto :goto_1

    .line 288
    :cond_6
    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/android/launcher3/folder/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 292
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 293
    :goto_2
    if-nez v0, :cond_9

    iget-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 294
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 295
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 296
    return v1

    :cond_7
    move v0, v1

    .line 291
    goto :goto_2

    :cond_8
    move v0, v2

    .line 292
    goto :goto_2

    .line 297
    :cond_9
    if-nez v0, :cond_a

    .line 298
    return v1

    .line 300
    :cond_a
    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 222
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    return v2

    .line 225
    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 229
    :cond_2
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 231
    :cond_3
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 233
    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 236
    return v2

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 243
    return v2

    .line 246
    :cond_5
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 248
    return v2

    .line 251
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsBottomSheet;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 253
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 254
    return v2

    .line 257
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PinchToOverviewListener;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 260
    return v2

    .line 262
    :cond_8
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 531
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v2

    .line 533
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 534
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 535
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 536
    instance-of v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    if-eqz v4, :cond_0

    .line 537
    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 538
    iget-boolean v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v4, :cond_0

    .line 539
    iget v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v5, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v6, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v7, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v0, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 533
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 907
    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 910
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_2

    .line 322
    if-ne p1, v0, :cond_0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/DropTargetBar;

    if-eqz v0, :cond_1

    .line 326
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 330
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 361
    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 363
    return v1

    .line 365
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 369
    :cond_2
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 375
    :cond_4
    return v2
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 895
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    .line 896
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 898
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 456
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010030

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 926
    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 140
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 141
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 144
    const-string/jumbo v1, "accessibility"

    .line 143
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->onAccessibilityStateChanged(Z)V

    .line 146
    return-void
.end method
