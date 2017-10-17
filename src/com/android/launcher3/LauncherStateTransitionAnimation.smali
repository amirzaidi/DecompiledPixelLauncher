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

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 708
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 709
    iput-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 711
    :cond_0
    return-void
.end method

.method private playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/launcher3/Launcher;->startWorkspaceStateChangeAnimation(Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/Animator;

    move-result-object v0

    .line 383
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 389
    :cond_0
    return-void
.end method

.method private startAnimationToNewWorkspaceState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 473
    new-instance v5, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v5}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 474
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 477
    invoke-direct {p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p3

    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 480
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 482
    if-eqz p3, :cond_0

    .line 483
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 496
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    invoke-direct {v0, p0, v4, v7}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 497
    iput-object v4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 506
    :goto_0
    return-void

    .line 500
    :cond_0
    if-eqz p4, :cond_1

    .line 501
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 504
    :cond_1
    iput-object v7, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method private startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 18

    .prologue
    .line 226
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 228
    const v3, 0x7f0d0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 229
    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 231
    const v3, 0x7f0d000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 233
    new-instance v7, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v7}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 236
    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 239
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    .line 241
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->getContentView()Landroid/view/View;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    .line 242
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 244
    if-eqz p4, :cond_0

    xor-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_3

    .line 245
    :cond_0
    sget-boolean v2, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v2, :cond_1

    .line 246
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullUp()V

    .line 249
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setTranslationX(F)V

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setTranslationY(F)V

    .line 251
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setScaleX(F)V

    .line 252
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setScaleY(F)V

    .line 253
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setAlpha(F)V

    .line 254
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 259
    return-void

    .line 236
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 261
    :cond_3
    if-nez p5, :cond_6

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->getRevealView()Landroid/view/View;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 267
    div-int/lit8 v5, v3, 0x2

    int-to-double v12, v5

    div-int/lit8 v5, v4, 0x2

    int-to-double v14, v5

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v5, v12

    .line 268
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 270
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v9

    .line 276
    invoke-static/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v12

    .line 277
    const/4 v13, 0x0

    aget v13, v9, v13

    int-to-float v13, v13

    .line 278
    const/4 v14, 0x1

    aget v9, v9, v14

    int-to-float v9, v9

    .line 282
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

    .line 284
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

    .line 286
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

    .line 287
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    .line 288
    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/4 v12, 0x1

    aput-object v14, v15, v12

    const/4 v12, 0x2

    aput-object v13, v15, v12

    .line 287
    invoke-static {v2, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 289
    int-to-long v14, v8

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 290
    new-instance v13, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v14, 0x64

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 293
    invoke-virtual {v7, v2}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 294
    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 297
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 299
    invoke-virtual {v11, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 300
    invoke-virtual {v7, v11}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 303
    const-string/jumbo v12, "translationY"

    const/4 v13, 0x2

    new-array v13, v13, [F

    .line 304
    const/4 v14, 0x0

    aput v9, v13, v14

    const/4 v9, 0x0

    const/4 v14, 0x1

    aput v9, v13, v14

    .line 303
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 305
    int-to-long v12, v8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 306
    new-instance v12, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v13, 0x64

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v9, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    int-to-long v12, v10

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 308
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 310
    const-string/jumbo v9, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v11, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 311
    int-to-long v12, v8

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 312
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v12, 0x3fc00000    # 1.5f

    invoke-direct {v11, v12}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 314
    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 316
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v9

    .line 317
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v10

    .line 319
    new-instance v11, Lcom/android/launcher3/util/CircleRevealOutlineProvider;

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v11, v3, v4, v9, v5}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {v11, v2}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 321
    int-to-long v4, v8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 322
    new-instance v4, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v5, 0x64

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    if-eqz v10, :cond_4

    .line 324
    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    :cond_4
    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    new-instance v3, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/BaseContainerView;->bringToFront()V

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 344
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    new-instance v2, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v6, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 346
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 369
    :cond_5
    :goto_1
    return-void

    .line 347
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    .line 349
    invoke-virtual {v7, v11}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 351
    new-instance v2, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$4;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    int-to-long v4, v9

    invoke-virtual {v2, v6, v4, v5}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateToAllApps(Landroid/animation/AnimatorSet;J)Z

    move-result v2

    .line 360
    new-instance v3, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v6, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 361
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    if-eqz v2, :cond_7

    .line 364
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 366
    :cond_7
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 310
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZILjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v4

    .line 399
    new-instance v8, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v8, p0, v0, v4}, Lcom/android/launcher3/LauncherStateTransitionAnimation$5;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;FLcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStartViewForAllAppsRevealAnimation()Landroid/view/View;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 431
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 434
    return-void
.end method

.method private startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 20

    .prologue
    .line 516
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 518
    const v5, 0x7f0d0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 519
    const v5, 0x7f0d0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 520
    const v5, 0x7f0d000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v13

    .line 523
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getRevealView()Landroid/view/View;

    move-result-object v15

    .line 524
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getContentView()Landroid/view/View;

    move-result-object v14

    .line 526
    new-instance v9, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v9}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>()V

    .line 529
    if-eqz p3, :cond_3

    const/4 v7, 0x1

    .line 532
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cancelAnimation()V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p5

    .line 534
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->playCommonTransitionAnimations(Lcom/android/launcher3/Workspace$State;ZZLandroid/animation/AnimatorSet;Lcom/android/launcher3/anim/AnimationLayerSet;)V

    .line 536
    if-eqz p5, :cond_0

    xor-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_4

    .line 537
    :cond_0
    sget-boolean v4, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v4, :cond_1

    .line 538
    sget-object v4, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullDown()V

    .line 541
    :cond_1
    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 542
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 545
    if-eqz p7, :cond_2

    .line 546
    invoke-interface/range {p7 .. p7}, Ljava/lang/Runnable;->run()V

    .line 548
    :cond_2
    return-void

    .line 529
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 550
    :cond_4
    if-nez p6, :cond_9

    .line 554
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/BaseContainerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 555
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 556
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 557
    div-int/lit8 v6, v4, 0x2

    int-to-double v6, v6

    div-int/lit8 v11, v5, 0x2

    int-to-double v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 558
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 559
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v15, v7}, Landroid/view/View;->setAlpha(F)V

    .line 560
    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 561
    invoke-virtual {v9, v15}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 564
    move-object/from16 v0, p3

    invoke-static {v15, v0}, Lcom/android/launcher3/Utilities;->getCenterDeltaInScreenSpace(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v7

    .line 565
    const/4 v11, 0x0

    aget v11, v7, v11

    int-to-float v11, v11

    .line 566
    const/4 v13, 0x1

    aget v7, v7, v13

    int-to-float v7, v7

    .line 571
    new-instance v13, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    .line 572
    const-string/jumbo v16, "translationY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 573
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    .line 572
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 574
    add-int/lit8 v17, v10, -0x10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    add-int/lit8 v17, v12, 0x10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 576
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 579
    const-string/jumbo v16, "translationX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 580
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 579
    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 581
    add-int/lit8 v16, v10, -0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 582
    add-int/lit8 v16, v12, 0x10

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 583
    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 587
    invoke-static/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v11

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v16

    if-eqz v11, :cond_5

    .line 588
    const-string/jumbo v11, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 589
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    aput v17, v16, v18

    invoke-static/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->-get0(Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)F

    move-result v17

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 588
    move-object/from16 v0, v16

    invoke-static {v15, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 590
    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 591
    invoke-virtual {v11, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 592
    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 596
    :cond_5
    invoke-virtual {v9, v14}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 599
    const-string/jumbo v11, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 600
    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x1

    aput v7, v16, v17

    .line 599
    move-object/from16 v0, v16

    invoke-static {v14, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 601
    const/4 v11, 0x0

    invoke-virtual {v14, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 602
    add-int/lit8 v11, v10, -0x10

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 603
    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    add-int/lit8 v11, v12, 0x10

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 605
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 607
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v14, v7}, Landroid/view/View;->setAlpha(F)V

    .line 608
    const-string/jumbo v7, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v14, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 609
    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 610
    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 615
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 616
    new-instance v11, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$8;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;)V

    invoke-virtual {v7, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 622
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 625
    invoke-virtual/range {p8 .. p8}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewStartFinalRadius()F

    move-result v7

    .line 627
    move-object/from16 v0, p8

    move-object/from16 v1, p3

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v11

    .line 628
    new-instance v13, Lcom/android/launcher3/util/CircleRevealOutlineProvider;

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v13, v4, v5, v6, v7}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;-><init>(IIFF)V

    invoke-virtual {v13, v15}, Lcom/android/launcher3/util/CircleRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 630
    new-instance v5, Lcom/android/launcher3/LogDecelerateInterpolator;

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/LogDecelerateInterpolator;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    int-to-long v6, v10

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 632
    int-to-long v6, v12

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 633
    if-eqz v11, :cond_6

    .line 634
    invoke-virtual {v4, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 636
    :cond_6
    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 639
    :cond_7
    new-instance v10, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Lcom/android/launcher3/BaseContainerView;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 663
    new-instance v4, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    .line 699
    :cond_8
    :goto_1
    return-void

    .line 664
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_8

    .line 666
    invoke-virtual {v9, v14}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 668
    new-instance v4, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    int-to-long v6, v11

    invoke-virtual {v4, v8, v6, v7}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateToWorkspace(Landroid/animation/AnimatorSet;J)Z

    move-result v4

    .line 690
    new-instance v5, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v13}, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 691
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 692
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 693
    if-eqz v4, :cond_a

    .line 694
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 696
    :cond_a
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 608
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 615
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 9

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v4

    .line 444
    new-instance v8, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {v8, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 462
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v3

    .line 463
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v7, p4

    .line 460
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromOverlay(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILjava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 464
    return-void
.end method


# virtual methods
.method cleanupAnimation()V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 715
    return-void
.end method

.method public startAnimationToAllApps(ZZ)V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v3

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStartViewForAllAppsRevealAnimation()Landroid/view/View;

    move-result-object v2

    .line 138
    new-instance v6, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v6, p0, v0, p2, v3}, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;FZLcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 164
    const/4 v5, 0x0

    .line 165
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v5, 0x1

    .line 170
    :cond_0
    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    move-object v0, p0

    move v4, p1

    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 171
    return-void
.end method

.method public startAnimationToWidgets(Z)V
    .locals 7

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsView()Lcom/android/launcher3/widget/WidgetsContainerView;

    move-result-object v3

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWidgetsButton()Landroid/view/View;

    move-result-object v2

    .line 180
    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 181
    new-instance v6, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;

    const v0, 0x3e99999a    # 0.3f

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$2;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V

    .line 180
    const/4 v5, 0x0

    move-object v0, p0

    move v4, p1

    .line 179
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToOverlay(Lcom/android/launcher3/Workspace$State;Landroid/view/View;Lcom/android/launcher3/BaseContainerView;ZILcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V

    .line 187
    return-void
.end method

.method public startAnimationToWorkspace(Lcom/android/launcher3/Launcher$State;Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 195
    sget-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 196
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 197
    sget-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-eq p3, v0, :cond_0

    .line 198
    const-string/jumbo v0, "LSTAnimation"

    const-string/jumbo v1, "Unexpected call to startAnimationToWorkspace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_3

    .line 203
    :cond_1
    const/4 v4, 0x0

    .line 204
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v0, :cond_2

    .line 205
    const/4 v4, 0x1

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromAllApps(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZILjava/lang/Runnable;)V

    .line 217
    :goto_0
    return-void

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->isTransitioning()Z

    move-result v0

    .line 201
    if-nez v0, :cond_1

    .line 209
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    if-eq p1, v0, :cond_4

    .line 210
    sget-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-ne p1, v0, :cond_5

    .line 211
    :cond_4
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToWorkspaceFromWidgets(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 214
    :cond_5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->startAnimationToNewWorkspaceState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
