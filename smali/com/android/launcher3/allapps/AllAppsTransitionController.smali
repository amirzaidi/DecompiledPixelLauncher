.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAccelInterpolator:Landroid/view/animation/Interpolator;

.field private mAllAppsBackgroundColor:I

.field private mAnimationDuration:J

.field private mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

.field private mContainerVelocity:F

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private final mDecelInterpolator:Landroid/view/animation/Interpolator;

.field private final mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

.field private mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHotseat:Lcom/android/launcher3/Hotseat;

.field private mHotseatBackgroundColor:I

.field private mIsTranslateWithoutWorkspace:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field private mProgress:F

.field private final mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

.field private mShiftRange:F

.field private mShiftStart:F

.field private mStatusBarHeight:F

.field private mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/VerticalPullDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/allapps/AllAppsTransitionController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/allapps/AllAppsTransitionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTranslateWithoutWorkspace:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cleanUpAnimation()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAccelInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDecelInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTranslateWithoutWorkspace:Z

    .line 96
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 97
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V

    .line 99
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 102
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 103
    const v0, 0x1010433

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    .line 104
    return-void
.end method

.method private calculateDuration(FF)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 317
    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 468
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 471
    return-void
.end method

.method private cleanUpAnimation()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 483
    return-void
.end method

.method private isInDisallowRecatchBottomZone()Z
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const v1, 0x3f69999a    # 0.9125f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInDisallowRecatchTopZone()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const v1, 0x3db33333    # 0.0875f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLightStatusBar(F)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    return-void

    .line 262
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mStatusBarHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v1

    .line 263
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0, v1, v1}, Lcom/android/launcher3/Launcher;->activateLightSystemBars(ZZZ)V

    .line 264
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateToAllApps(Landroid/animation/AnimatorSet;J)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 321
    if-nez p1, :cond_0

    .line 322
    return v2

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 327
    iput-wide p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move v1, v2

    .line 340
    :goto_0
    const-string/jumbo v4, "progress"

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 341
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v6, v5, v3

    aput v7, v5, v2

    .line 340
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 342
    iget-wide v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 343
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 346
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 366
    return v1

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 333
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 334
    cmpl-float v4, v1, v7

    if-ltz v4, :cond_2

    .line 335
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    :cond_2
    move v1, v3

    .line 337
    goto :goto_0
.end method

.method public animateToWorkspace(Landroid/animation/AnimatorSet;J)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 404
    if-nez p1, :cond_0

    .line 405
    return v2

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 410
    iput-wide p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move v1, v2

    .line 423
    :goto_0
    const-string/jumbo v4, "progress"

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 424
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v6, v5, v3

    aput v7, v5, v2

    .line 423
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 425
    iget-wide v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 426
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 427
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 429
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 449
    return v1

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 416
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 417
    cmpg-float v4, v1, v7

    if-gtz v4, :cond_2

    .line 418
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    :cond_2
    move v1, v3

    .line 420
    goto :goto_0
.end method

.method public cancelDiscoveryAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 478
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    .line 479
    return-void
.end method

.method public finishPullDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setBackgroundTransparent(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 462
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 463
    return-void
.end method

.method public finishPullUp()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 455
    return-void
.end method

.method public isTransitioning()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 109
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    .line 110
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    .line 144
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    if-eqz v0, :cond_8

    .line 145
    return v1

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 112
    if-eqz v3, :cond_2

    .line 114
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 116
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 139
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    goto :goto_0

    :cond_4
    move v2, v0

    move v0, v1

    .line 127
    goto :goto_1

    .line 130
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchBottomZone()Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v0

    move v0, v1

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchTopZone()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 133
    goto :goto_1

    .line 135
    :cond_7
    const/4 v2, 0x3

    .line 136
    goto :goto_1

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isSettlingState()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchBottomZone()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchTopZone()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    :cond_9
    return v1

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(FF)Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    .line 184
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 185
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd(FZ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    if-eqz p2, :cond_3

    .line 197
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 202
    const/4 v1, 0x4

    .line 201
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    .line 231
    :goto_0
    return-void

    .line 210
    :cond_2
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 216
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 222
    const/4 v1, 0x3

    .line 221
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/launcher3/Launcher;->showAppsView(ZZZ)V

    goto :goto_0
.end method

.method public onDragStart(Z)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->onDragStart()V

    .line 170
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelAnimation()V

    .line 171
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 174
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 503
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 504
    return-void

    .line 501
    :cond_0
    int-to-float v0, p5

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    goto :goto_0
.end method

.method public preparePull(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mStatusBarHeight:F

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getBackgroundDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setBackgroundTransparent(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setRevealDrawableColor(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 9

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v8, 0x3e000000    # 0.125f

    .line 270
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v1, v0

    .line 271
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 272
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float v2, p1, v0

    .line 274
    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 275
    sub-float/2addr v3, v0

    .line 276
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAccelInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDecelInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 279
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 278
    invoke-virtual {v0, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 281
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 280
    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 283
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v5, v0}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setRevealDrawableColor(I)V

    .line 284
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setTranslationY(F)V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {v0, v3, v5, v4}, Lcom/android/launcher3/Workspace;->setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    .line 296
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTranslateWithoutWorkspace:Z

    if-eqz v0, :cond_1

    .line 297
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    .line 292
    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v5, v5

    add-float/2addr v5, v2

    mul-float/2addr v5, v8

    .line 291
    invoke-virtual {v0, v3, v5, v4}, Lcom/android/launcher3/Workspace;->setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 300
    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v3, v3

    add-float/2addr v3, v2

    mul-float/2addr v3, v8

    .line 299
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->setWorkspaceYTranslationAndAlpha(FF)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    sub-float v1, v2, v1

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 303
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeVelocity(FJ)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/launcher3/allapps/AllAppsCaretController;->updateCaret(FFZ)V

    .line 308
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->updateLightStatusBar(F)V

    .line 309
    return-void
.end method

.method public setupViews(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/Hotseat;Lcom/android/launcher3/Workspace;)V
    .locals 3

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 487
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 488
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 490
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->bringToFront()V

    .line 491
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsCaretController;

    .line 492
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 491
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsCaretController;-><init>(Lcom/android/launcher3/pageindicators/CaretDrawable;Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    .line 493
    return-void
.end method

.method public showDiscoveryBounce()V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 375
    const/high16 v1, 0x7f050000

    .line 374
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method
