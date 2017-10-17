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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 125
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

    .line 112
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mIsRtl:Z

    .line 132
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 133
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 182
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 184
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getActiveTextView()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v2

    .line 185
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->dispatchBackKey()V

    .line 188
    return v0

    .line 190
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    return v0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 198
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getLogContainerType()I

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionTapOutside(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    .line 203
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    return v0

    .line 208
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 173
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
    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private isInAccessibleDrag()Z
    .locals 1

    .prologue
    .line 312
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
    .line 306
    if-eqz p1, :cond_0

    const v0, 0x7f0c0049

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 307
    invoke-static {p0, v1, v0}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 309
    return-void

    .line 306
    :cond_0
    const v0, 0x7f0c0048

    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 3

    .prologue
    .line 822
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 823
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v1

    .line 824
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    .line 826
    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 824
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 829
    :cond_1
    iput v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 830
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 911
    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 916
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addResizeFrame(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 553
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 554
    const v1, 0x7f04000b

    .line 553
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppWidgetResizeFrame;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setupForWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 556
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 558
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 559
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 560
    return-void
.end method

.method public animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 756
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->cancelAnimation()V

    .line 758
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->requestLayout()V

    .line 761
    if-eqz p7, :cond_1

    .line 762
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 764
    :cond_1
    iput-object p7, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 767
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 768
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 769
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 770
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragLayer$3;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/dragndrop/DragLayer$3;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 787
    return-void

    .line 770
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
    .line 686
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

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 688
    const v2, 0x7f0d0014

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v5, v2

    .line 691
    if-gez p9, :cond_1

    .line 692
    const v2, 0x7f0d0010

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 693
    cmpg-float v6, v3, v5

    if-gez v6, :cond_0

    .line 694
    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v3, v5

    invoke-interface {v6, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 696
    :cond_0
    const v3, 0x7f0d000f

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 700
    :cond_1
    const/4 v2, 0x0

    .line 701
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 702
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v16, v2

    .line 706
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getAlpha()F

    move-result v13

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v8

    .line 708
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

    .line 745
    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 747
    return-void

    :cond_3
    move-object/from16 v16, v2

    .line 701
    goto :goto_0
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17

    .prologue
    .line 650
    new-instance v4, Landroid/graphics/Rect;

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    .line 650
    add-int v2, v2, p2

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    .line 650
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 652
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

    .line 654
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

    .line 653
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 655
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 583
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 585
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 588
    const/4 v3, 0x2

    new-array v5, v3, [I

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 590
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

    .line 591
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

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v3

    .line 598
    mul-float v4, v3, v7

    .line 599
    const/4 v3, 0x0

    aget v7, v5, v3

    .line 600
    const/4 v3, 0x1

    aget v5, v5, v3

    .line 602
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object/from16 v3, p2

    .line 603
    check-cast v3, Landroid/widget/TextView;

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getIntrinsicIconScaleFactor()F

    move-result v8

    div-float v12, v4, v8

    .line 611
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    .line 612
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

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    .line 617
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

    .line 631
    :goto_0
    iget v5, v6, Landroid/graphics/Rect;->left:I

    .line 632
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 633
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 634
    new-instance v14, Lcom/android/launcher3/dragndrop/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer$1;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 642
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 643
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    .line 642
    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 644
    return-void

    .line 618
    :cond_1
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_2

    .line 620
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

    .line 621
    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 622
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

    .line 624
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

    .line 626
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

    .line 627
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 627
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
    .line 576
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 577
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 17

    .prologue
    .line 565
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 567
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 568
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 570
    const/4 v2, 0x0

    aget v6, p2, v2

    const/4 v2, 0x1

    aget v7, p2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 571
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p7

    move/from16 v14, p6

    move/from16 v15, p8

    .line 570
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 572
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 817
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 818
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 819
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 470
    instance-of v0, p1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAnimatedView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 796
    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 797
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 798
    return-void
.end method

.method public clearResizeFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->commitResize()V

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 546
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 548
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 867
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->computeScrollWithoutInvalidation()V

    .line 871
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 872
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 873
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 874
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHighlightRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 877
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHighlightRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 879
    :cond_0
    shl-int/lit8 v0, v0, 0x18

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 884
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 885
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 152
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

    .line 447
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 448
    :goto_0
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    :cond_0
    return v0

    .line 447
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 464
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 1

    .prologue
    .line 475
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 834
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 843
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 845
    return p2

    .line 846
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    .line 848
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    return v0

    .line 849
    :cond_2
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    if-ge p2, v0, :cond_3

    .line 850
    return p2

    .line 854
    :cond_3
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1

    .prologue
    .line 418
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aput v4, v0, v4

    .line 385
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aput v4, v0, v5

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    .line 389
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 390
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 388
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 391
    return v0
.end method

.method public getFocusIndicatorHelper()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    return-object v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    aput v1, p2, v1

    .line 396
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 430
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInWindow([I)V

    .line 432
    aget v1, v0, v3

    .line 433
    aget v2, v0, v4

    .line 435
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 436
    aget v3, v0, v3

    .line 437
    aget v0, v0, v4

    .line 439
    sub-int v1, v3, v1

    .line 440
    sub-int/2addr v0, v2

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 442
    return-void
.end method

.method public invalidateScrim()V
    .locals 2

    .prologue
    .line 859
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 862
    :cond_0
    return-void
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 178
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
    .line 426
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 427
    return-void
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 2

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DISABLE_PINCH_TO_OVERVIEW:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    .line 158
    return-void

    .line 157
    :cond_1
    new-instance v0, Lcom/android/launcher3/PinchToOverviewListener;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/PinchToOverviewListener;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 807
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 808
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 813
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    return v2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    .line 269
    if-nez v3, :cond_2

    .line 270
    return v2

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 272
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 274
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 277
    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_3
    :goto_0
    :pswitch_0
    return v2

    .line 279
    :pswitch_1
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/android/launcher3/folder/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 281
    :goto_1
    if-nez v0, :cond_6

    .line 282
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 283
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 284
    return v1

    :cond_4
    move v0, v1

    .line 279
    goto :goto_1

    :cond_5
    move v0, v2

    .line 280
    goto :goto_1

    .line 286
    :cond_6
    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverFolder(Lcom/android/launcher3/folder/Folder;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 290
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 291
    :goto_2
    if-nez v0, :cond_9

    iget-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 292
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 293
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 294
    return v1

    :cond_7
    move v0, v1

    .line 289
    goto :goto_2

    :cond_8
    move v0, v2

    .line 290
    goto :goto_2

    .line 295
    :cond_9
    if-nez v0, :cond_a

    .line 296
    return v1

    .line 298
    :cond_a
    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    goto :goto_0

    .line 277
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

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 215
    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    return v2

    .line 223
    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 227
    :cond_2
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 229
    :cond_3
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCurrentResizeFrame:Lcom/android/launcher3/AppWidgetResizeFrame;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 234
    return v2

    .line 236
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 241
    return v2

    .line 244
    :cond_5
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 246
    return v2

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/WidgetsBottomSheet;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 252
    return v2

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PinchToOverviewListener;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPinchListener:Lcom/android/launcher3/PinchToOverviewListener;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 258
    return v2

    .line 260
    :cond_8
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    .line 528
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 529
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v2

    .line 530
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 531
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 532
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 533
    instance-of v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    if-eqz v4, :cond_0

    .line 534
    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 535
    iget-boolean v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v4, :cond_0

    .line 536
    iget v4, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v5, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v6, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v7, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v0, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    add-int/2addr v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 530
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 540
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 904
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_2

    .line 320
    if-ne p1, v0, :cond_0

    .line 321
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/DropTargetBar;

    if-eqz v0, :cond_1

    .line 324
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 328
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 330
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

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    return v1

    .line 363
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 367
    :cond_2
    iput-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 370
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 373
    :cond_4
    return v2
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 889
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mBackgroundAlpha:F

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 892
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 454
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setBackgroundResource(I)V

    .line 455
    return-void

    .line 454
    :cond_0
    const v0, 0x7f020053

    goto :goto_0
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;)V
    .locals 0

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 920
    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 138
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 139
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 142
    const-string/jumbo v1, "accessibility"

    .line 141
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->onAccessibilityStateChanged(Z)V

    .line 144
    return-void
.end method
