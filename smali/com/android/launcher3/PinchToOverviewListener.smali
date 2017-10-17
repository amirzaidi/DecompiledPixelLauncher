.class public Lcom/android/launcher3/PinchToOverviewListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPinchCanceled:Z

.field private mPinchDetector:Landroid/view/ScaleGestureDetector;

.field private mPinchStarted:Z

.field private mPreviousProgress:F

.field private mPreviousTimeMillis:J

.field private mProgressDelta:F

.field private mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

.field private mTimeDelta:J

.field private mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 48
    iput-boolean v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchCanceled:Z

    .line 60
    iput-object p1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 61
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    return-void
.end method

.method private cancelPinch(FI)V
    .locals 3

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchCanceled:Z

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 169
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/android/launcher3/PinchAnimationManager;->animateToProgress(FFILcom/android/launcher3/PinchThresholdManager;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    .line 172
    return-void

    .line 168
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private computeDuration(FF)I
    .locals 2

    .prologue
    .line 156
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 157
    div-float v0, p1, v0

    float-to-int v0, v0

    .line 158
    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    invoke-virtual {v1}, Lcom/android/launcher3/PinchAnimationManager;->getNormalOverviewTransitionDuration()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 66
    iget-boolean v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 73
    iget v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/PinchToOverviewListener;->cancelPinch(FI)V

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3f733333    # 0.95f

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    invoke-virtual {v0}, Lcom/android/launcher3/PinchThresholdManager;->getPassedThreshold()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    .line 178
    return v7

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float v3, v0, v1

    .line 185
    cmpg-float v0, v3, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    :cond_2
    cmpl-float v0, v3, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 185
    if-eqz v0, :cond_4

    .line 188
    :cond_3
    return v6

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getWidth()I

    move-result v4

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOverviewModeShrinkFactor()F

    move-result v1

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 194
    :goto_0
    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 196
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 199
    sub-float/2addr v0, v1

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PinchAnimationManager;->setAnimationProgress(F)V

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 204
    iget-object v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    .line 203
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/PinchThresholdManager;->updateAndAnimatePassedThreshold(FLcom/android/launcher3/PinchAnimationManager;)F

    move-result v1

    .line 205
    cmpl-float v1, v1, v5

    if-nez v1, :cond_6

    .line 206
    return v7

    :cond_5
    move v0, v2

    .line 193
    goto :goto_0

    .line 209
    :cond_6
    iget v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mProgressDelta:F

    .line 210
    iput v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousTimeMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mTimeDelta:J

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousTimeMillis:J

    .line 213
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isOnCustomContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    return v2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    invoke-virtual {v0}, Lcom/android/launcher3/PinchAnimationManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    return v2

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    return v2

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 97
    new-instance v0, Lcom/android/launcher3/PinchThresholdManager;

    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-direct {v0, v1}, Lcom/android/launcher3/PinchThresholdManager;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 98
    new-instance v0, Lcom/android/launcher3/PinchAnimationManager;

    iget-object v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/PinchAnimationManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    if-eqz v0, :cond_6

    .line 103
    :cond_5
    return v2

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 107
    return v2

    .line 110
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousTimeMillis:J

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/launcher3/LogDecelerateInterpolator;

    invoke-direct {v0, v4, v2}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    :goto_1
    iput-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 114
    iput-boolean v3, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->onPrepareStateTransition(Z)V

    .line 116
    return v3

    .line 110
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 113
    :cond_9
    new-instance v0, Lcom/android/launcher3/LogAccelerateInterpolator;

    invoke-direct {v0, v4, v2}, Lcom/android/launcher3/LogAccelerateInterpolator;-><init>(II)V

    goto :goto_1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 123
    iget v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mProgressDelta:F

    iget-wide v4, p0, Lcom/android/launcher3/PinchToOverviewListener;->mTimeDelta:J

    long-to-float v4, v4

    div-float v4, v2, v4

    .line 124
    iget-object v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    invoke-virtual {v2}, Lcom/android/launcher3/PinchThresholdManager;->getPassedThreshold()F

    move-result v5

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x3b449ba6    # 0.003f

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_2

    move v2, v0

    .line 127
    :goto_0
    if-nez v2, :cond_4

    const v2, 0x3ecccccd    # 0.4f

    cmpg-float v2, v5, v2

    if-gez v2, :cond_4

    .line 131
    :goto_1
    iget v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    .line 132
    iget-object v6, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    sub-float v2, v3, v2

    .line 135
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/PinchToOverviewListener;->computeDuration(FF)I

    move-result v2

    .line 136
    if-eqz v0, :cond_5

    .line 137
    iget v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/PinchToOverviewListener;->cancelPinch(FI)V

    .line 147
    :goto_2
    iput-boolean v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchStarted:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPinchCanceled:Z

    .line 149
    return-void

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v2

    if-nez v2, :cond_3

    const v2, -0x44bb645a    # -0.003f

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 127
    goto :goto_1

    .line 138
    :cond_5
    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_7

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isInOverviewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 141
    :goto_3
    iget-object v3, p0, Lcom/android/launcher3/PinchToOverviewListener;->mAnimationManager:Lcom/android/launcher3/PinchAnimationManager;

    iget v4, p0, Lcom/android/launcher3/PinchToOverviewListener;->mPreviousProgress:F

    .line 142
    iget-object v5, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 141
    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/android/launcher3/PinchAnimationManager;->animateToProgress(FFILcom/android/launcher3/PinchThresholdManager;)V

    goto :goto_2

    .line 140
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mThresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    invoke-virtual {v0}, Lcom/android/launcher3/PinchThresholdManager;->reset()V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    goto :goto_2
.end method
