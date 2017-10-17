.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;


# instance fields
.field private mAlreadyScrollingUp:Z

.field private mFirstDisplacement:F

.field private mFirstScrollYOnScrollUp:I

.field private mIsInOverScroll:Z

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 1

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method private dampedOverScroll(FF)F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    div-float v0, p1, p2

    .line 614
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 615
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v0, v1

    .line 618
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 619
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 622
    :cond_1
    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDampedOverScroll(F)F
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->dampedOverScroll(FF)F

    move-result v0

    const v1, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, v1

    return v0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 603
    sub-float v0, p1, v2

    .line 604
    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private reset(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 566
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContentTranslationY()F

    move-result v0

    .line 567
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    sget-boolean v1, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->getDampedOverScroll(F)F

    move-result v1

    div-float/2addr v0, v1

    const v1, 0x459c4000    # 5000.0f

    mul-float/2addr v0, v1

    .line 573
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get3(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object v1

    neg-float v0, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToPositionWithVelocity(FIF)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 577
    sget-object v1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->CONTENT_TRANS_Y:Landroid/util/Property;

    .line 576
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 577
    aput v5, v2, v4

    .line 576
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 578
    const-wide/16 v2, 0x64

    .line 576
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 581
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 582
    iput v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    .line 583
    iput v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    .line 584
    iput-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    .line 585
    return-void
.end method


# virtual methods
.method public isInOverScroll()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    return v0
.end method

.method public onDrag(FF)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    cmpl-float v2, p1, v6

    if-lez v2, :cond_3

    move v2, v0

    .line 525
    :goto_0
    if-eqz v2, :cond_4

    .line 526
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    if-nez v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    .line 528
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    .line 538
    :cond_0
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 539
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->-get2(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v4

    if-nez v4, :cond_7

    .line 540
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_5

    cmpg-float v4, p1, v6

    if-gez v4, :cond_5

    .line 539
    :cond_1
    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 543
    if-eqz v3, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 546
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->reset(Z)V

    .line 557
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    return v0

    :cond_3
    move v2, v1

    .line 524
    goto :goto_0

    .line 531
    :cond_4
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    goto :goto_1

    .line 541
    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 539
    goto :goto_2

    .line 547
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    if-eqz v0, :cond_2

    .line 548
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_9

    .line 551
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    .line 553
    :cond_9
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    sub-float v0, p1, v0

    .line 554
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->getDampedOverScroll(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setContentTranslationY(F)V

    goto :goto_3
.end method

.method public onDragEnd(FZ)V
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->reset(Z)V

    .line 563
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method
