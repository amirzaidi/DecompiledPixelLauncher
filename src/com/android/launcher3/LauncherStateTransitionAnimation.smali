.class public Lcom/android/launcher3/LauncherStateTransitionAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field mCurrentAnimation:Landroid/animation/AnimatorSet;

.field mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 125
    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 126
    return-void
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 701
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 702
    iput-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 704
    :cond_0
    return-void
.end method

.method private playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/launcher3/Launcher;->startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;

    move-result-object v0

    .line 378
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 384
    :cond_0
    return-void
.end method

.method private startAnimationToNewWorkspaceState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 466
    new-instance v5, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v5}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 467
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 470
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p3

    .line 472
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 475
    if-eqz p3, :cond_0

    .line 476
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 489
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    invoke-direct {v0, p0, v4, v7}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 490
    iput-object v4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 499
    :goto_0
    return-void

    .line 493
    :cond_0
    if-eqz p4, :cond_1

    .line 494
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 497
    :cond_1
    iput-object v7, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method private startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 18

    .prologue
    .line 219
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 221
    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 222
    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 224
    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 226
    new-instance v7, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v7}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 229
    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 232
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 234
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->getContentView()Landroid/view/View;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    .line 235
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 237
    if-eqz p4, :cond_0

    xor-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_3

    .line 238
    :cond_0
    sget-boolean v2, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v2, :cond_1

    .line 239
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullUp()V

    .line 242
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setTranslationX(F)V

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setTranslationY(F)V

    .line 244
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setScaleX(F)V

    .line 245
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setScaleY(F)V

    .line 246
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setAlpha(F)V

    .line 247
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 252
    return-void

    .line 229
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 254
    :cond_3
    if-nez p5, :cond_6

    .line 256
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->getRevealView()Landroid/view/View;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 259
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 260
    div-int/lit8 v5, v3, 0x2

    int-to-double v12, v5

    div-int/lit8 v5, v4, 0x2

    int-to-double v14, v5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v5, v12

    .line 261
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 262
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 263
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 264
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 268
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v9

    .line 269
    invoke-static/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v12

    .line 270
    const/4 v13, 0x0

    aget v13, v9, v13

    int-to-float v13, v13

    .line 271
    const/4 v14, 0x1

    aget v9, v9, v14

    int-to-float v9, v9

    .line 275
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v12, v15, v16

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    aput v12, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 277
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v9, v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v16, v15, v17

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 279
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v13, v16, v17

    const/4 v13, 0x0

    const/16 v17, 0x1

    aput v13, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 280
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    .line 281
    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/4 v12, 0x1

    aput-object v14, v15, v12

    const/4 v12, 0x2

    aput-object v13, v15, v12

    .line 280
    invoke-static {v2, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 282
    int-to-long v14, v8

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    new-instance v13, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v14, 0x64

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    invoke-virtual {v7, v2}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 287
    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 290
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 292
    invoke-virtual {v11, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 293
    invoke-virtual {v7, v11}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 296
    const-string/jumbo v12, "translationY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    .line 297
    const/4 v14, 0x0

    aput v9, v13, v14

    const/4 v9, 0x0

    const/4 v14, 0x1

    aput v9, v13, v14

    .line 296
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 298
    int-to-long v12, v8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    new-instance v12, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v13, 0x64

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v9, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    int-to-long v12, v10

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 301
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 303
    const-string/jumbo v9, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v11, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 304
    int-to-long v12, v8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 305
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-direct {v11, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 307
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 309
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v9

    .line 310
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v10

    .line 312
    new-instance v11, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v11, v3, v4, v9, v5}, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {v11, v2}, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 314
    int-to-long v4, v8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 315
    new-instance v4, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v5, 0x64

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    if-eqz v10, :cond_4

    .line 317
    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    :cond_4
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 321
    new-instance v3, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->bringToFront()V

    .line 335
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 337
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 338
    new-instance v2, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v6, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 339
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 364
    :cond_5
    :goto_1
    return-void

    .line 340
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    .line 341
    sget-boolean v2, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    if-nez v2, :cond_7

    .line 343
    invoke-virtual {v7, v11}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 346
    :cond_7
    new-instance v2, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    int-to-long v4, v9

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateToAllApps(Landroid/animation/AnimatorSet;J)Z

    move-result v2

    .line 355
    new-instance v3, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v6, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 356
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    if-eqz v2, :cond_8

    .line 359
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 361
    :cond_8
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 303
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZILjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 393
    new-instance v8, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStartViewForAllAppsRevealAnimation()Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 424
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 427
    return-void
.end method

.method private startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 20

    .prologue
    .line 509
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 511
    const v5, 0x7f0d0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 512
    const v5, 0x7f0d0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 513
    const v5, 0x7f0d000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v13

    .line 516
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getRevealView()Landroid/view/View;

    move-result-object v15

    .line 517
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getContentView()Landroid/view/View;

    move-result-object v14

    .line 519
    new-instance v9, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v9}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 522
    if-eqz p3, :cond_3

    const/4 v7, 0x1

    .line 525
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p5

    .line 527
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 529
    if-eqz p5, :cond_0

    xor-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_4

    .line 530
    :cond_0
    sget-boolean v4, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v4, :cond_1

    .line 531
    sget-object v4, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullDown()V

    .line 534
    :cond_1
    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 535
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 538
    if-eqz p7, :cond_2

    .line 539
    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V

    .line 541
    :cond_2
    return-void

    .line 522
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 543
    :cond_4
    if-nez p6, :cond_9

    .line 547
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 548
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 549
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 550
    div-int/lit8 v6, v4, 0x2

    int-to-double v6, v6

    div-int/lit8 v11, v5, 0x2

    int-to-double v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 551
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 552
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v15, v7}, Landroid/view/View;->setAlpha(F)V

    .line 553
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 554
    invoke-virtual {v9, v15}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 557
    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v7

    .line 558
    const/4 v11, 0x0

    aget v11, v7, v11

    int-to-float v11, v11

    .line 559
    const/4 v13, 0x1

    aget v7, v7, v13

    int-to-float v7, v7

    .line 564
    new-instance v13, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    .line 565
    const-string/jumbo v16, "translationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 566
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    .line 565
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 567
    add-int/lit8 v17, v10, -0x10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 568
    add-int/lit8 v17, v12, 0x10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 569
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 572
    const-string/jumbo v16, "translationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 573
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 572
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 574
    add-int/lit8 v16, v10, -0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    add-int/lit8 v16, v12, 0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 576
    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 580
    invoke-static/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v11

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v16

    if-eqz v11, :cond_5

    .line 581
    const-string/jumbo v11, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 582
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    aput v17, v16, v18

    invoke-static/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v17

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 581
    move-object/from16 v0, v16

    invoke-static {v15, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 583
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 584
    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 589
    :cond_5
    invoke-virtual {v9, v14}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 592
    const-string/jumbo v11, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 593
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x1

    aput v7, v16, v17

    .line 592
    move-object/from16 v0, v16

    invoke-static {v14, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 594
    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 595
    add-int/lit8 v11, v10, -0x10

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 596
    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    add-int/lit8 v11, v12, 0x10

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 598
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 600
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v14, v7}, Landroid/view/View;->setAlpha(F)V

    .line 601
    const-string/jumbo v7, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v14, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 602
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 603
    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 608
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 609
    new-instance v11, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 615
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 618
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v7

    .line 620
    move-object/from16 v0, p8

    move-object/from16 v1, p3

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v11

    .line 621
    new-instance v13, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v13, v4, v5, v6, v7}, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {v13, v15}, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 623
    new-instance v5, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 624
    int-to-long v6, v10

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 625
    int-to-long v6, v12

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 626
    if-eqz v11, :cond_6

    .line 627
    invoke-virtual {v4, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    :cond_6
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 632
    :cond_7
    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Lcom/android/launcher3/BaseContainerView;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 654
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 656
    new-instance v4, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 692
    :cond_8
    :goto_1
    return-void

    .line 657
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_8

    .line 659
    invoke-virtual {v9, v14}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 661
    new-instance v4, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    int-to-long v6, v11

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateToWorkspace(Landroid/animation/AnimatorSet;J)Z

    move-result v4

    .line 683
    new-instance v5, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v13}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 684
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 685
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 686
    if-eqz v4, :cond_a

    .line 687
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 689
    :cond_a
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 601
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 608
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v4

    .line 437
    new-instance v8, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 455
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v3

    .line 456
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v7, p4

    .line 453
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 457
    return-void
.end method


# virtual methods
.method cleanupAnimation()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 708
    return-void
.end method

.method public startAnimationToAllApps(Z)V
    .locals 7

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v3

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStartViewForAllAppsRevealAnimation()Landroid/view/View;

    move-result-object v2

    .line 134
    new-instance v6, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 157
    const/4 v5, 0x0

    .line 158
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v5, 0x1

    .line 163
    :cond_0
    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object v0, p0

    move v4, p1

    .line 162
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 164
    return-void
.end method

.method public startAnimationToWidgets(Z)V
    .locals 7

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v3

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v2

    .line 173
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 174
    new-instance v6, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 173
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 180
    return-void
.end method

.method public startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 188
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 191
    const-string/jumbo v0, "LSTAnimation"

    const-string/jumbo v1, "Unexpected call to startAnimationToWorkspace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_3

    .line 196
    :cond_1
    const/4 v4, 0x0

    .line 197
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_2

    .line 198
    const/4 v4, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZILjava/lang/Runnable;)V

    .line 210
    :goto_0
    return-void

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isTransitioning()Z

    move-result v0

    .line 194
    if-nez v0, :cond_1

    .line 202
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    .line 203
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_5

    .line 204
    :cond_4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 207
    :cond_5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToNewWorkspaceState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
