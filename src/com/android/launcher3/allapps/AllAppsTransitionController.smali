.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;
.implements Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;


# instance fields
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

.field private mGradientView:Lcom/android/launcher3/graphics/GradientView;

.field private mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mHotseatAccelInterpolator:Landroid/view/animation/Interpolator;

.field private mHotseatBackgroundColor:I

.field private final mIsDarkTheme:Z

.field private mIsTranslateWithoutWorkspace:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field private mProgress:F

.field private final mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

.field private mShiftRange:F

.field private mShiftStart:F

.field private mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

.field private mStatusBarHeight:F

.field private mTouchEventStartedOnHotseat:Z

.field private mWorkspace:Lcom/android/launcher3/Workspace;

.field private final mWorkspaceAccelnterpolator:Landroid/view/animation/Interpolator;


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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspaceAccelnterpolator:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatAccelInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDecelInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTranslateWithoutWorkspace:Z

    .line 106
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 107
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-direct {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V

    .line 109
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 112
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 113
    const v0, 0x1010433

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f01002a

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    .line 115
    return-void
.end method

.method private calculateDuration(FF)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->calculateDuration(FF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 364
    return-void
.end method

.method private cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 521
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 524
    return-void
.end method

.method private cleanUpAnimation()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 536
    return-void
.end method

.method private hasSpringAnimationHandler()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 550
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInDisallowRecatchBottomZone()Z
    .locals 2

    .prologue
    .line 179
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
    .line 175
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

.method private updateAllAppsBg(F)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mGradientView:Lcom/android/launcher3/graphics/GradientView;

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/graphics/GradientView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mGradientView:Lcom/android/launcher3/graphics/GradientView;

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mGradientView:Lcom/android/launcher3/graphics/GradientView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/GradientView;->setVisibility(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mGradientView:Lcom/android/launcher3/graphics/GradientView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/GradientView;->setProgress(F)V

    .line 305
    return-void
.end method

.method private updateLightStatusBar(F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 287
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 289
    :goto_0
    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    .line 291
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    xor-int/lit8 v2, v2, 0x1

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 296
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_1
.end method


# virtual methods
.method public animateToAllApps(Landroid/animation/AnimatorSet;J)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 368
    if-nez p1, :cond_0

    .line 369
    return v2

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 374
    iput-wide p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 376
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move v1, v2

    .line 387
    :goto_0
    const-string/jumbo v4, "progress"

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 388
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v6, v5, v3

    aput v7, v5, v2

    .line 387
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 389
    iget-wide v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 390
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 393
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 413
    return v1

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 380
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 381
    cmpl-float v4, v1, v7

    if-ltz v4, :cond_2

    .line 382
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    :cond_2
    move v1, v3

    .line 384
    goto :goto_0
.end method

.method public animateToWorkspace(Landroid/animation/AnimatorSet;J)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 451
    if-nez p1, :cond_0

    .line 452
    return v2

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 457
    iput-wide p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move v1, v2

    .line 470
    :goto_0
    const-string/jumbo v4, "progress"

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 471
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v6, v5, v3

    aput v7, v5, v2

    .line 470
    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 472
    iget-wide v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAnimationDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 474
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 476
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 496
    return v1

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->setVelocityAtZero(F)V

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mScrollInterpolator:Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;

    .line 463
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 464
    cmpg-float v4, v1, v7

    if-gtz v4, :cond_2

    .line 465
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    :cond_2
    move v1, v3

    .line 467
    goto :goto_0
.end method

.method public cancelDiscoveryAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 531
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    .line 532
    return-void
.end method

.method public finishPullDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setBackgroundTransparent(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 512
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->hasSpringAnimationHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    .line 515
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 516
    return-void
.end method

.method public finishPullUp()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 501
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->hasSpringAnimationHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    .line 504
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 505
    return-void
.end method

.method public isTransitioning()Z
    .locals 1

    .prologue
    .line 255
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

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    .line 121
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverHotseat(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mTouchEventStartedOnHotseat:Z

    .line 122
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

    .line 123
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    .line 156
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    if-eqz v0, :cond_8

    .line 157
    return v1

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 124
    if-eqz v3, :cond_2

    .line 126
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 128
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mNoIntercept:Z

    goto :goto_0

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isIdleState()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 151
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    goto :goto_0

    :cond_4
    move v2, v0

    move v0, v1

    .line 139
    goto :goto_1

    .line 142
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchBottomZone()Z

    move-result v3

    if-eqz v3, :cond_6

    move v2, v0

    move v0, v1

    .line 143
    goto :goto_1

    .line 144
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isInDisallowRecatchTopZone()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 145
    goto :goto_1

    .line 147
    :cond_7
    const/4 v2, 0x3

    .line 148
    goto :goto_1

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 160
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

    .line 161
    :cond_9
    return v1

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingOrSettling()Z

    move-result v0

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->hasSpringAnimationHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->addMovement(Landroid/view/MotionEvent;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrag(FF)Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    .line 202
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 203
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd(FZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mTouchEventStartedOnHotseat:Z

    if-eqz v0, :cond_3

    .line 215
    const/4 v0, 0x2

    .line 217
    :goto_0
    if-eqz p2, :cond_5

    .line 218
    cmpg-float v2, p1, v4

    if-gez v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 221
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 223
    const/4 v3, 0x4

    .line 222
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    .line 228
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->hasSpringAnimationHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    .line 252
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 215
    goto :goto_0

    .line 233
    :cond_4
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_1

    .line 238
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 239
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    goto :goto_1

    .line 242
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->calculateDuration(FF)V

    .line 243
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v2

    if-nez v2, :cond_7

    .line 244
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 245
    const/4 v3, 0x3

    .line 244
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(III)V

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto :goto_1
.end method

.method public onDragStart(Z)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->onDragStart()V

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelAnimation()V

    .line 186
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftStart:F

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 189
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->hasSpringAnimationHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->skipToEnd()V

    .line 192
    :cond_0
    return-void
.end method

.method public onScrollRangeChanged(I)V
    .locals 1

    .prologue
    .line 555
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 556
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 557
    return-void
.end method

.method public preparePull(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mStatusBarHeight:F

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getBackgroundDrawableColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setBackgroundTransparent(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->tryAndUpdatePredictedApps()V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v9, 0x3e000000    # 0.125f

    .line 311
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v1, v0

    .line 312
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 313
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float v2, p1, v0

    .line 315
    const/4 v0, 0x0

    invoke-static {p1, v0, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 316
    sub-float/2addr v3, v0

    .line 317
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspaceAccelnterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 318
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatAccelInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 320
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDecelInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .line 321
    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 320
    invoke-virtual {v0, v6, v7, v8}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 323
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseatBackgroundColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsBackgroundColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 322
    invoke-virtual {v0, v3, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 326
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->updateAllAppsBg(F)V

    .line 331
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setTranslationY(F)V

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v6, v6

    add-float/2addr v6, v2

    invoke-virtual {v0, v3, v6, v5}, Lcom/android/launcher3/Workspace;->setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    .line 343
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsTranslateWithoutWorkspace:Z

    if-eqz v0, :cond_1

    .line 344
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v3, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    .line 339
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v6, v6

    add-float/2addr v6, v2

    mul-float/2addr v6, v9

    .line 338
    invoke-virtual {v0, v3, v6, v5}, Lcom/android/launcher3/Workspace;->setHotseatTranslationAndAlpha(Lcom/android/launcher3/Workspace$Direction;FF)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 347
    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float v3, v3

    add-float/2addr v3, v2

    mul-float/2addr v3, v9

    .line 346
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->setWorkspaceYTranslationAndAlpha(FF)V

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    sub-float v1, v2, v1

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 350
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/launcher3/allapps/VerticalPullDetector;->computeVelocity(FJ)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mContainerVelocity:F

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/VerticalPullDetector;->isDraggingState()Z

    move-result v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/launcher3/allapps/AllAppsCaretController;->updateCaret(FFZ)V

    .line 355
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->updateLightStatusBar(F)V

    .line 356
    return-void
.end method

.method public setupViews(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/Hotseat;Lcom/android/launcher3/Workspace;)V
    .locals 3

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 540
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 541
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->bringToFront()V

    .line 543
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsCaretController;

    .line 544
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 543
    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsCaretController;-><init>(Lcom/android/launcher3/pageindicators/CaretDrawable;Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mCaretController:Lcom/android/launcher3/allapps/AllAppsCaretController;

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->addOnScrollRangeChangeListener(Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getSpringAnimationHandler()Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    .line 547
    return-void
.end method

.method public showDiscoveryBounce()V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->cancelDiscoveryAnimation()V

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 422
    const/high16 v1, 0x7f050000

    .line 421
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mDiscoBounceAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->post(Ljava/lang/Runnable;)Z

    .line 447
    return-void
.end method
