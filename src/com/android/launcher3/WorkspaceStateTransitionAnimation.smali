.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAllAppsTransitionTime:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field mNewScale:F

.field mOverlayTransitionTime:I

.field mOverviewModeShrinkFactor:F

.field mOverviewTransitionTime:I

.field mSpringLoadedShrinkFactor:F

.field mSpringLoadedTransitionTime:I

.field mStateAnimator:Landroid/animation/AnimatorSet;

.field final mWorkspace:Lcom/android/launcher3/Workspace;

.field mWorkspaceFadeInAdjacentScreens:Z

.field mWorkspaceScrimAlpha:F

.field final mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Lcom/android/launcher3/ZoomInInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/ZoomInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    .line 208
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 209
    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    .line 214
    const v2, 0x7f0d0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    .line 215
    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    .line 216
    iget v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedTransitionTime:I

    .line 217
    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->workspaceSpringLoadShrinkFactor:F

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    .line 219
    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 218
    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    .line 220
    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    .line 221
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    .line 222
    return-void
.end method

.method private animateBackgroundGradient(Lcom/android/launcher3/TransitionStates;ZI)V
    .locals 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getBackgroundAlpha()F

    move-result v2

    .line 455
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 458
    :goto_0
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    .line 459
    if-eqz p2, :cond_3

    .line 462
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v0, v3, v2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 463
    new-instance v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;-><init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/dragndrop/DragLayer;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 470
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 477
    :cond_1
    :goto_1
    return-void

    .line 456
    :cond_2
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    goto :goto_0

    .line 474
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private animateWorkspace(Lcom/android/launcher3/TransitionStates;ZILcom/android/launcher3/anim/AnimationLayerSet;Z)V
    .locals 18

    .prologue
    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->cancelAnimation()V

    .line 268
    if-eqz p2, :cond_0

    .line 269
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 273
    :cond_0
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v4, :cond_c

    .line 274
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v4

    .line 275
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-nez v4, :cond_2

    .line 276
    sget-boolean v4, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    .line 275
    if-eqz v4, :cond_d

    .line 276
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    move v6, v4

    .line 277
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v4, :cond_3

    .line 278
    sget-boolean v4, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    .line 280
    :cond_3
    const/4 v4, 0x0

    .line 281
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-nez v7, :cond_4

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v7, :cond_e

    .line 282
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getOverviewModeTranslationY()I

    move-result v4

    int-to-float v4, v4

    move v7, v4

    .line 287
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v12

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v13

    .line 290
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 292
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->oldStateIsOverview:Z

    if-eqz v4, :cond_f

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->disableFreeScroll()V

    .line 298
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-nez v4, :cond_6

    .line 299
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v4, :cond_10

    .line 300
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedShrinkFactor:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 306
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v14

    .line 308
    const/4 v4, 0x0

    move v11, v4

    :goto_5
    if-ge v11, v12, :cond_1b

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v11}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 310
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v10

    .line 312
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v8, :cond_12

    .line 313
    const/4 v8, 0x0

    .line 325
    :goto_6
    sget-boolean v9, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8

    .line 326
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    if-nez v9, :cond_7

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v9, :cond_8

    .line 327
    :cond_7
    if-ne v11, v14, :cond_18

    const/4 v9, 0x1

    .line 328
    :goto_7
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/launcher3/TransitionStates;->allAppsToWorkspace:Z

    if-eqz v15, :cond_19

    if-eqz v9, :cond_19

    .line 329
    const/4 v9, 0x0

    .line 333
    :goto_8
    invoke-virtual {v4, v9}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    move v10, v9

    .line 337
    :cond_8
    if-eqz p2, :cond_1a

    .line 338
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getBackgroundAlpha()F

    move-result v9

    .line 339
    cmpl-float v10, v10, v8

    if-eqz v10, :cond_9

    .line 341
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 340
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 341
    const/16 v17, 0x0

    aput v8, v16, v17

    .line 340
    move-object/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 342
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    .line 342
    invoke-virtual {v10, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 346
    :cond_9
    const/4 v8, 0x0

    cmpl-float v8, v9, v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_b

    .line 347
    :cond_a
    const-string/jumbo v8, "backgroundAlpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    .line 348
    const/4 v15, 0x0

    aput v9, v10, v15

    const/4 v9, 0x1

    aput v5, v10, v9

    .line 347
    invoke-static {v4, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 349
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    move/from16 v0, p3

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 308
    :cond_b
    :goto_9
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto/16 :goto_5

    .line 274
    :cond_c
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 276
    :cond_d
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_1

    .line 283
    :cond_e
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    if-eqz v7, :cond_25

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getSpringLoadedTranslationY()F

    move-result v4

    move v7, v4

    goto/16 :goto_2

    .line 294
    :cond_f
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v4, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->enableFreeScroll()Z

    goto/16 :goto_3

    .line 301
    :cond_10
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-nez v4, :cond_11

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverviewHidden:Z

    if-eqz v4, :cond_6

    .line 302
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewModeShrinkFactor:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    goto/16 :goto_4

    .line 314
    :cond_12
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormalHidden:Z

    if-eqz v8, :cond_14

    .line 315
    sget-boolean v8, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_ALL_APPS_PULL_UP:Z

    if-eqz v8, :cond_13

    .line 316
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v8

    if-ne v11, v8, :cond_13

    const/4 v8, 0x1

    .line 315
    :goto_a
    int-to-float v8, v8

    goto/16 :goto_6

    .line 316
    :cond_13
    const/4 v8, 0x0

    goto :goto_a

    .line 317
    :cond_14
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->stateIsNormal:Z

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v8, :cond_17

    .line 318
    if-eq v11, v14, :cond_15

    if-ge v11, v13, :cond_16

    :cond_15
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 320
    :cond_17
    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 327
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 330
    :cond_19
    if-nez v9, :cond_24

    .line 331
    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_8

    .line 354
    :cond_1a
    invoke-virtual {v4, v5}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 355
    invoke-virtual {v4, v8}, Lcom/android/launcher3/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto/16 :goto_9

    .line 359
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v5

    .line 361
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher3/TransitionStates;->stateIsOverview:Z

    if-eqz v4, :cond_20

    const/high16 v4, 0x3f800000    # 1.0f

    .line 362
    :goto_b
    if-eqz p2, :cond_23

    .line 366
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v8

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_1d

    .line 368
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 367
    const/4 v9, 0x1

    new-array v9, v9, [F

    .line 368
    const/4 v10, 0x0

    aput v4, v9, v10

    .line 367
    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 369
    new-instance v8, Lcom/android/launcher3/AlphaUpdateListener;

    move/from16 v0, p5

    invoke-direct {v8, v5, v0}, Lcom/android/launcher3/AlphaUpdateListener;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 371
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 373
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-eqz v8, :cond_21

    .line 374
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 379
    :cond_1c
    :goto_c
    move/from16 v0, p3

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 380
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 383
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 384
    new-instance v8, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v8}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v8, v9}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 383
    invoke-static {v4, v7}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 386
    move/from16 v0, p3

    int-to-long v8, v0

    .line 383
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 387
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/anim/AnimationLayerSet;->addView(Landroid/view/View;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/Workspace;->createHotseatAlphaAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 396
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    if-eqz v6, :cond_22

    .line 397
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 401
    :cond_1e
    :goto_d
    move/from16 v0, p3

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 402
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v6, v0, v1, v2, v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;-><init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/TransitionStates;ZLandroid/view/ViewGroup;)V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    :cond_1f
    :goto_e
    return-void

    .line 361
    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 375
    :cond_21
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    if-eqz v8, :cond_1c

    .line 376
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_c

    .line 398
    :cond_22
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-eqz v6, :cond_1e

    .line 399
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_d

    .line 426
    :cond_23
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 427
    move/from16 v0, p5

    invoke-static {v5, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v4

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/Workspace;->createHotseatAlphaAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->end()V

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->updateCustomContentVisibility()V

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v4, v6}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {v4, v6}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Workspace;->setTranslationY(F)V

    .line 436
    if-eqz p5, :cond_1f

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1f

    .line 437
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 438
    const/16 v5, 0x40

    const/4 v6, 0x0

    .line 437
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_e

    :cond_24
    move v9, v10

    goto/16 :goto_8

    :cond_25
    move v7, v4

    goto/16 :goto_2
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 485
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 487
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 488
    return-void
.end method

.method private getAnimationDuration(Lcom/android/launcher3/TransitionStates;)I
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->workspaceToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->overviewToAllApps:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mAllAppsTransitionTime:I

    return v0

    .line 251
    :cond_1
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->workspaceToOverview:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->overviewToWorkspace:Z

    if-eqz v0, :cond_3

    .line 252
    :cond_2
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    return v0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mState:Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    if-eq v0, v1, :cond_4

    .line 254
    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->oldStateIsNormal:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    .line 253
    if-eqz v0, :cond_5

    .line 255
    :cond_4
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mSpringLoadedTransitionTime:I

    return v0

    .line 257
    :cond_5
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverlayTransitionTime:I

    return v0
.end method


# virtual methods
.method public getAnimationToState(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;ZLcom/android/launcher3/anim/AnimationLayerSet;)Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 232
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    .line 233
    new-instance v1, Lcom/android/launcher3/TransitionStates;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/TransitionStates;-><init>(Lcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V

    .line 234
    invoke-direct {p0, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getAnimationDuration(Lcom/android/launcher3/TransitionStates;)I

    move-result v3

    move-object v0, p0

    move v2, p3

    move-object v4, p4

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateWorkspace(Lcom/android/launcher3/TransitionStates;ZILcom/android/launcher3/anim/AnimationLayerSet;Z)V

    .line 237
    const/16 v0, 0x15e

    invoke-direct {p0, v1, p3, v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->animateBackgroundGradient(Lcom/android/launcher3/TransitionStates;ZI)V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getFinalScale()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    return v0
.end method

.method public snapToPageFromOverView(I)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mZoomInInterpolator:Lcom/android/launcher3/ZoomInInterpolator;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/Workspace;->snapToPage(IILandroid/animation/TimeInterpolator;)V

    .line 226
    return-void
.end method
