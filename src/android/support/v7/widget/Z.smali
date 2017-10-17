.class public Landroid/support/v7/widget/Z;
.super Landroid/support/v7/widget/aB;
.source "SourceFile"


# static fields
.field private static SC:Landroid/animation/TimeInterpolator;


# instance fields
.field SD:Ljava/util/ArrayList;

.field private SE:Ljava/util/ArrayList;

.field SF:Ljava/util/ArrayList;

.field SG:Ljava/util/ArrayList;

.field SH:Ljava/util/ArrayList;

.field SI:Ljava/util/ArrayList;

.field private SJ:Ljava/util/ArrayList;

.field SK:Ljava/util/ArrayList;

.field private SL:Ljava/util/ArrayList;

.field SM:Ljava/util/ArrayList;

.field private SN:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/aB;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SD:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SK:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SG:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method private abA(Landroid/support/v7/widget/ai;)V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    if-nez v0, :cond_1

    .line 417
    :goto_1
    return-void

    .line 412
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Z;->abI(Landroid/support/v7/widget/ai;Landroid/support/v7/widget/j;)Z

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Z;->abI(Landroid/support/v7/widget/ai;Landroid/support/v7/widget/j;)Z

    goto :goto_1
.end method

.method private abD(Landroid/support/v7/widget/j;)V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 201
    iget-object v2, p0, Landroid/support/v7/widget/Z;->SG:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XA()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/W;

    invoke-direct {v3, p0, p1, v1, v0}, Landroid/support/v7/widget/W;-><init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    return-void
.end method

.method private abI(Landroid/support/v7/widget/ai;Landroid/support/v7/widget/j;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 420
    iget-object v2, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    if-eq v2, p2, :cond_0

    .line 422
    iget-object v2, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    if-eq v2, p2, :cond_1

    .line 426
    return v0

    .line 421
    :cond_0
    iput-object v3, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    .line 428
    :goto_0
    iget-object v2, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 429
    iget-object v2, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 430
    iget-object v2, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 431
    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/Z;->acT(Landroid/support/v7/widget/j;Z)V

    .line 432
    return v1

    .line 423
    :cond_1
    iput-object v3, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    move v0, v1

    .line 424
    goto :goto_0
.end method

.method private aby(Ljava/util/List;Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    .line 400
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 408
    return-void

    .line 401
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ai;

    .line 402
    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/Z;->abI(Landroid/support/v7/widget/ai;Landroid/support/v7/widget/j;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 400
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 403
    :cond_2
    iget-object v2, v0, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    if-nez v2, :cond_1

    .line 404
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private abz(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 522
    sget-object v0, Landroid/support/v7/widget/Z;->SC:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/Z;->SC:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 526
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->Xs(Landroid/support/v7/widget/j;)V

    .line 527
    return-void

    .line 523
    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/Z;->SC:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method


# virtual methods
.method public XB()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 531
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SK:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SG:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SD:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public XE()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 566
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    .line 572
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 573
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_2

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-gez v1, :cond_3

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XB()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 589
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-gez v3, :cond_5

    .line 605
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 606
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-gez v3, :cond_8

    .line 620
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 621
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_6
    if-gez v3, :cond_b

    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SG:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->abH(Ljava/util/List;)V

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SK:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->abH(Ljava/util/List;)V

    .line 634
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SD:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->abH(Ljava/util/List;)V

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->abH(Ljava/util/List;)V

    .line 637
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xn()V

    .line 638
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/X;

    .line 560
    iget-object v2, v0, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    iget-object v2, v2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 561
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 562
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 563
    iget-object v0, v0, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->adi(Landroid/support/v7/widget/j;)V

    .line 564
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 558
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 569
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->adf(Landroid/support/v7/widget/j;)V

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1

    .line 574
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 575
    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 576
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Z;->acW(Landroid/support/v7/widget/j;)V

    .line 577
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_2

    .line 581
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ai;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Z;->abA(Landroid/support/v7/widget/ai;)V

    .line 580
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_3

    .line 585
    :cond_4
    return-void

    .line 590
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 591
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 592
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_7
    if-gez v2, :cond_6

    .line 589
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_4

    .line 593
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    .line 594
    iget-object v4, v1, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    .line 595
    iget-object v4, v4, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 596
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 597
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 598
    iget-object v1, v1, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Z;->adi(Landroid/support/v7/widget/j;)V

    .line 599
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 592
    :goto_8
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_7

    .line 601
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 607
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 608
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 609
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_9
    if-gez v2, :cond_9

    .line 606
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_5

    .line 610
    :cond_9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/j;

    .line 611
    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 612
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 613
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Z;->acW(Landroid/support/v7/widget/j;)V

    .line 614
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 615
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 609
    :goto_a
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_9

    .line 616
    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 622
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 623
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 624
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_b
    if-gez v2, :cond_c

    .line 621
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_6

    .line 625
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ai;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/Z;->abA(Landroid/support/v7/widget/ai;)V

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 624
    :goto_c
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_b

    .line 627
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public Xo()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v1, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 103
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 104
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 105
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    .line 106
    :goto_3
    if-eqz v1, :cond_5

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 114
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    if-nez v3, :cond_7

    .line 140
    :goto_5
    if-nez v4, :cond_9

    .line 163
    :goto_6
    if-nez v5, :cond_b

    .line 189
    :goto_7
    return-void

    :cond_1
    move v1, v0

    .line 102
    goto :goto_0

    :cond_2
    move v3, v0

    .line 103
    goto :goto_1

    :cond_3
    move v4, v0

    .line 104
    goto :goto_2

    :cond_4
    move v5, v0

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 108
    return-void

    .line 111
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 112
    invoke-direct {p0, v0}, Landroid/support/v7/widget/Z;->abD(Landroid/support/v7/widget/j;)V

    goto :goto_4

    .line 117
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 121
    new-instance v8, Landroid/support/v7/widget/al;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/al;-><init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V

    .line 132
    if-nez v1, :cond_8

    .line 136
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 133
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/X;

    iget-object v0, v0, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XA()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/f;->agw(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_5

    .line 141
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v8, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v8, Landroid/support/v7/widget/ae;

    invoke-direct {v8, p0, v0}, Landroid/support/v7/widget/ae;-><init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V

    .line 155
    if-nez v1, :cond_a

    .line 159
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 156
    :cond_a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ai;

    iget-object v0, v0, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    .line 157
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XA()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/f;->agw(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 164
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    new-instance v10, Landroid/support/v7/widget/aI;

    invoke-direct {v10, p0, v5}, Landroid/support/v7/widget/aI;-><init>(Landroid/support/v7/widget/Z;Ljava/util/ArrayList;)V

    .line 178
    if-eqz v1, :cond_d

    .line 179
    :cond_c
    if-nez v1, :cond_e

    move-wide v0, v6

    .line 180
    :goto_8
    if-nez v3, :cond_f

    move-wide v8, v6

    .line 181
    :goto_9
    if-nez v4, :cond_10

    .line 182
    :goto_a
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 183
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 184
    invoke-static {v0, v10, v6, v7}, Landroid/support/v4/view/f;->agw(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    .line 178
    :cond_d
    if-nez v3, :cond_c

    if-nez v4, :cond_c

    .line 186
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7

    .line 179
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XA()J

    move-result-wide v0

    goto :goto_8

    .line 180
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xw()J

    move-result-wide v8

    goto :goto_9

    .line 181
    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xm()J

    move-result-wide v6

    goto :goto_a
.end method

.method public Xs(Landroid/support/v7/widget/j;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 437
    iget-object v4, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 450
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/Z;->aby(Ljava/util/List;Landroid/support/v7/widget/j;)V

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-gez v1, :cond_4

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-gez v3, :cond_6

    .line 483
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5
    if-gez v1, :cond_a

    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 514
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->abF()V

    .line 519
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/X;

    .line 443
    iget-object v0, v0, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    if-eq v0, p1, :cond_1

    .line 441
    :goto_6
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 445
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 446
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->adi(Landroid/support/v7/widget/j;)V

    .line 447
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 452
    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 453
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->adf(Landroid/support/v7/widget/j;)V

    goto :goto_1

    .line 456
    :cond_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 457
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->acW(Landroid/support/v7/widget/j;)V

    goto :goto_2

    .line 461
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 462
    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/Z;->aby(Ljava/util/List;Landroid/support/v7/widget/j;)V

    .line 463
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 460
    :goto_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 464
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 468
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 469
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_8
    if-gez v2, :cond_8

    .line 467
    :cond_7
    :goto_9
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_4

    .line 470
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    .line 471
    iget-object v1, v1, Landroid/support/v7/widget/X;->Sr:Landroid/support/v7/widget/j;

    if-eq v1, p1, :cond_9

    .line 469
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_8

    .line 472
    :cond_9
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 473
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 474
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->adi(Landroid/support/v7/widget/j;)V

    .line 475
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SI:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 484
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 483
    :cond_b
    :goto_a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_5

    .line 486
    :cond_c
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 487
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->acW(Landroid/support/v7/widget/j;)V

    .line 488
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 489
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a
.end method

.method public Xu(Landroid/support/v7/widget/j;Ljava/util/List;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/aB;->Xu(Landroid/support/v7/widget/j;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public abB(Landroid/support/v7/widget/j;IIII)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 257
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 258
    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v2, p2, v1

    .line 259
    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    add-int v3, p3, v1

    .line 260
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Z;->abz(Landroid/support/v7/widget/j;)V

    .line 261
    sub-int v1, p4, v2

    .line 262
    sub-int v4, p5, v3

    .line 263
    if-eqz v1, :cond_1

    .line 267
    :cond_0
    if-nez v1, :cond_2

    .line 270
    :goto_0
    if-nez v4, :cond_3

    .line 273
    :goto_1
    iget-object v6, p0, Landroid/support/v7/widget/Z;->SJ:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/X;

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/X;-><init>(Landroid/support/v7/widget/j;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_1
    if-nez v4, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Z;->adi(Landroid/support/v7/widget/j;)V

    .line 265
    return v5

    .line 268
    :cond_2
    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 271
    :cond_3
    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1
.end method

.method abC(Landroid/support/v7/widget/ai;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 348
    iget-object v0, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    .line 349
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 350
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    .line 351
    if-nez v2, :cond_1

    .line 352
    :goto_1
    if-nez v0, :cond_2

    .line 376
    :goto_2
    if-nez v1, :cond_3

    .line 397
    :goto_3
    return-void

    :cond_0
    move-object v0, v1

    .line 349
    goto :goto_0

    .line 351
    :cond_1
    iget-object v1, v2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xm()J

    move-result-wide v4

    .line 353
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 355
    iget-object v3, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget v3, p1, Landroid/support/v7/widget/ai;->TH:I

    iget v4, p1, Landroid/support/v7/widget/ai;->TD:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 357
    iget v3, p1, Landroid/support/v7/widget/ai;->TG:I

    iget v4, p1, Landroid/support/v7/widget/ai;->TC:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 358
    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/support/v7/widget/an;

    invoke-direct {v4, p0, p1, v2, v0}, Landroid/support/v7/widget/an;-><init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/ai;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 378
    iget-object v2, p0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xm()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/ax;

    invoke-direct {v3, p0, p1, v0, v1}, Landroid/support/v7/widget/ax;-><init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/ai;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3
.end method

.method public abE(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Z;->abz(Landroid/support/v7/widget/j;)V

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method abF()V
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->XB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xn()V

    goto :goto_0
.end method

.method public abG(Landroid/support/v7/widget/j;)Z
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Z;->abz(Landroid/support/v7/widget/j;)V

    .line 223
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method abH(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 641
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 644
    return-void

    .line 642
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 641
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method abJ(Landroid/support/v7/widget/j;)V
    .locals 6

    .prologue
    .line 229
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 230
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 231
    iget-object v2, p0, Landroid/support/v7/widget/Z;->SD:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xx()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/az;

    invoke-direct {v3, p0, p1, v0, v1}, Landroid/support/v7/widget/az;-><init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 233
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 252
    return-void
.end method

.method public abK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;IIII)Z
    .locals 8

    .prologue
    .line 321
    if-eq p1, p2, :cond_0

    .line 326
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 327
    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 328
    iget-object v2, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 329
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Z;->abz(Landroid/support/v7/widget/j;)V

    .line 330
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 331
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 333
    iget-object v5, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 334
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 336
    if-nez p2, :cond_1

    .line 343
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/Z;->SE:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/widget/ai;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ai;-><init>(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 324
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/Z;->abB(Landroid/support/v7/widget/j;IIII)Z

    move-result v0

    return v0

    .line 338
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/Z;->abz(Landroid/support/v7/widget/j;)V

    .line 339
    iget-object v0, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    iget-object v0, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    iget-object v0, p2, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method abx(Landroid/support/v7/widget/j;IIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v4, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 279
    sub-int v3, p4, p2

    .line 280
    sub-int v5, p5, p3

    .line 281
    if-nez v3, :cond_0

    .line 284
    :goto_0
    if-nez v5, :cond_1

    .line 290
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/Z;->SK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Landroid/support/v7/widget/Z;->Xw()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Landroid/support/v7/widget/af;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 316
    return-void

    .line 282
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
