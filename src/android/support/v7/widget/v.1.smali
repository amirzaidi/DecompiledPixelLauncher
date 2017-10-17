.class Landroid/support/v7/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private QW:Z

.field private QX:I

.field private QY:Landroid/widget/OverScroller;

.field private QZ:Z

.field private Ra:I

.field final synthetic Rb:Landroid/support/v7/widget/RecyclerView;

.field mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4796
    iput-object p1, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4787
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/widget/v;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 4791
    iput-boolean v1, p0, Landroid/support/v7/widget/v;->QW:Z

    .line 4794
    iput-boolean v1, p0, Landroid/support/v7/widget/v;->QZ:Z

    .line 4797
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    .line 4798
    return-void
.end method

.method static synthetic Za(Landroid/support/v7/widget/v;)Landroid/widget/OverScroller;
    .locals 1

    .prologue
    .line 4783
    iget-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    return-object v0
.end method

.method private Zb(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 4977
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4978
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4979
    if-gt v3, v2, :cond_0

    .line 4980
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4981
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4982
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 4983
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4984
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4985
    int-to-float v7, v6

    int-to-float v6, v6

    .line 4986
    invoke-direct {p0, v5}, Landroid/support/v7/widget/v;->distanceInfluenceForSnapDuration(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4989
    if-gtz v4, :cond_2

    .line 4992
    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    int-to-float v0, v0

    .line 4993
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 4995
    :goto_3
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 4979
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4982
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    goto :goto_1

    .line 4990
    :cond_2
    int-to-float v0, v4

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_3
    move v0, v3

    .line 4992
    goto :goto_2
.end method

.method private Zc()V
    .locals 1

    .prologue
    .line 4934
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/v;->QZ:Z

    .line 4935
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/v;->QW:Z

    .line 4936
    return-void
.end method

.method private Zd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4939
    iput-boolean v0, p0, Landroid/support/v7/widget/v;->QW:Z

    .line 4940
    iget-boolean v0, p0, Landroid/support/v7/widget/v;->QZ:Z

    if-nez v0, :cond_0

    .line 4943
    :goto_0
    return-void

    .line 4941
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/v;->Ze()V

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 2

    .prologue
    .line 4971
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 4972
    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    .line 4973
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public YZ(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5008
    iget-object v0, p0, Landroid/support/v7/widget/v;->mInterpolator:Landroid/view/animation/Interpolator;

    if-ne v0, p4, :cond_0

    .line 5012
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 5013
    iput v1, p0, Landroid/support/v7/widget/v;->QX:I

    iput v1, p0, Landroid/support/v7/widget/v;->Ra:I

    .line 5014
    iget-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5015
    invoke-virtual {p0}, Landroid/support/v7/widget/v;->Ze()V

    .line 5016
    return-void

    .line 5009
    :cond_0
    iput-object p4, p0, Landroid/support/v7/widget/v;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5010
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    goto :goto_0
.end method

.method Ze()V
    .locals 1

    .prologue
    .line 4946
    iget-boolean v0, p0, Landroid/support/v7/widget/v;->QW:Z

    if-nez v0, :cond_0

    .line 4949
    iget-object v0, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4950
    iget-object v0, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/f;->agG(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4952
    :goto_0
    return-void

    .line 4947
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/v;->QZ:Z

    goto :goto_0
.end method

.method public Zf(IIII)V
    .locals 1

    .prologue
    .line 4967
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/v;->Zb(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/v;->Zg(III)V

    .line 4968
    return-void
.end method

.method public Zg(III)V
    .locals 1

    .prologue
    .line 4999
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/v;->YZ(IIILandroid/view/animation/Interpolator;)V

    .line 5000
    return-void
.end method

.method public fling(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 4955
    iget-object v0, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4956
    iput v1, p0, Landroid/support/v7/widget/v;->QX:I

    iput v1, p0, Landroid/support/v7/widget/v;->Ra:I

    .line 4957
    iget-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4959
    invoke-virtual {p0}, Landroid/support/v7/widget/v;->Ze()V

    .line 4960
    return-void
.end method

.method public run()V
    .locals 19

    .prologue
    .line 4802
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v2, :cond_2

    .line 4806
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/v;->Zc()V

    .line 4807
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 4810
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    .line 4811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v15, v2, Landroid/support/v7/widget/p;->mSmoothScroller:Landroid/support/v7/widget/g;

    .line 4812
    invoke-virtual {v14}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4922
    :cond_0
    :goto_0
    if-nez v15, :cond_2c

    .line 4930
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/v;->Zd()V

    .line 4931
    return-void

    .line 4803
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/v;->stop()V

    .line 4804
    return-void

    .line 4813
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$500(Landroid/support/v7/widget/RecyclerView;)[I

    move-result-object v5

    .line 4814
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v16

    .line 4815
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v17

    .line 4816
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/v;->Ra:I

    sub-int v3, v16, v2

    .line 4817
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/v;->QX:I

    sub-int v4, v17, v2

    .line 4818
    const/4 v13, 0x0

    .line 4819
    const/4 v11, 0x0

    .line 4820
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/v;->Ra:I

    .line 4821
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/v;->QX:I

    .line 4822
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 4824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v2

    if-nez v2, :cond_a

    move v9, v4

    move v10, v3

    .line 4829
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v2, :cond_b

    move v6, v8

    move v5, v12

    move v4, v11

    move v3, v13

    .line 4861
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4864
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_14

    .line 4868
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4891
    :goto_6
    if-eqz v3, :cond_23

    .line 4892
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4895
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$700(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4899
    :goto_8
    if-nez v9, :cond_25

    :cond_5
    const/4 v2, 0x0

    .line 4901
    :goto_9
    if-nez v10, :cond_26

    :cond_6
    const/4 v3, 0x0

    .line 4903
    :goto_a
    if-eqz v10, :cond_27

    :cond_7
    if-eqz v3, :cond_28

    :cond_8
    :goto_b
    const/4 v2, 0x1

    .line 4906
    :goto_c
    invoke-virtual {v14}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4909
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4910
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 4913
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_0

    .line 4825
    :cond_a
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int/2addr v3, v2

    .line 4826
    const/4 v2, 0x1

    aget v2, v5, v2

    sub-int/2addr v4, v2

    move v9, v4

    move v10, v3

    goto :goto_2

    .line 4830
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 4831
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4832
    const-string/jumbo v2, "RV Scroll"

    invoke-static {v2}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 4833
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/e;)V

    .line 4834
    if-nez v10, :cond_d

    move v5, v12

    move v4, v13

    .line 4838
    :goto_e
    if-nez v9, :cond_e

    move v2, v8

    move v3, v11

    .line 4842
    :goto_f
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    .line 4843
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 4845
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4846
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 4848
    if-nez v15, :cond_f

    :cond_c
    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_3

    .line 4835
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v10, v3, v4}, Landroid/support/v7/widget/p;->scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v4

    .line 4836
    sub-int v5, v10, v4

    goto :goto_e

    .line 4839
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v9, v3, v6}, Landroid/support/v7/widget/p;->scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v3

    .line 4840
    sub-int v2, v9, v3

    goto :goto_f

    .line 4848
    :cond_f
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->XZ()Z

    move-result v6

    if-nez v6, :cond_c

    .line 4849
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->XY()Z

    move-result v6

    if-nez v6, :cond_10

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_3

    .line 4850
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v6}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v6

    .line 4851
    if-eqz v6, :cond_11

    .line 4853
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->XW()I

    move-result v7

    if-ge v7, v6, :cond_12

    .line 4857
    sub-int v6, v10, v5

    sub-int v7, v9, v2

    invoke-static {v15, v6, v7}, Landroid/support/v7/widget/g;->Ya(Landroid/support/v7/widget/g;II)V

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_3

    .line 4852
    :cond_11
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->stop()V

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_3

    .line 4854
    :cond_12
    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v15, v6}, Landroid/support/v7/widget/g;->XV(I)V

    .line 4855
    sub-int v6, v10, v5

    sub-int v7, v9, v2

    invoke-static {v15, v6, v7}, Landroid/support/v7/widget/g;->Ya(Landroid/support/v7/widget/g;II)V

    move v6, v2

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    goto/16 :goto_3

    .line 4862
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_4

    .line 4865
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v10, v9}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto/16 :goto_5

    .line 4868
    :cond_15
    if-eqz v5, :cond_1a

    .line 4871
    :cond_16
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v7, v2

    .line 4873
    const/4 v2, 0x0

    .line 4874
    move/from16 v0, v16

    if-ne v5, v0, :cond_1b

    .line 4878
    :goto_10
    const/4 v8, 0x0

    .line 4879
    move/from16 v0, v17

    if-ne v6, v0, :cond_1e

    move v7, v8

    .line 4883
    :cond_17
    :goto_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_20

    .line 4886
    :goto_12
    if-eqz v2, :cond_21

    :cond_18
    if-eqz v7, :cond_22

    .line 4888
    :cond_19
    invoke-virtual {v14}, Landroid/widget/OverScroller;->abortAnimation()V

    goto/16 :goto_6

    .line 4868
    :cond_1a
    if-nez v6, :cond_16

    goto/16 :goto_6

    .line 4875
    :cond_1b
    if-ltz v5, :cond_1c

    if-gtz v5, :cond_1d

    const/4 v2, 0x0

    goto :goto_10

    :cond_1c
    neg-int v2, v7

    goto :goto_10

    :cond_1d
    move v2, v7

    goto :goto_10

    .line 4880
    :cond_1e
    if-ltz v6, :cond_1f

    if-gtz v6, :cond_17

    const/4 v7, 0x0

    goto :goto_11

    :cond_1f
    neg-int v7, v7

    goto :goto_11

    .line 4884
    :cond_20
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v2, v7}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    goto :goto_12

    .line 4886
    :cond_21
    move/from16 v0, v16

    if-eq v5, v0, :cond_18

    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_6

    :cond_22
    move/from16 v0, v17

    if-eq v6, v0, :cond_19

    .line 4887
    invoke-virtual {v14}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_6

    .line 4891
    :cond_23
    if-nez v4, :cond_4

    goto/16 :goto_7

    .line 4896
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_8

    .line 4899
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v4, v9, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_9

    .line 4901
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v4}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, v10, :cond_6

    const/4 v3, 0x1

    goto/16 :goto_a

    .line 4903
    :cond_27
    if-nez v9, :cond_7

    goto/16 :goto_b

    :cond_28
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_c

    .line 4906
    :cond_29
    if-eqz v2, :cond_2a

    .line 4915
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/v;->Ze()V

    .line 4916
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    if-eqz v2, :cond_0

    .line 4917
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3, v10, v9}, Landroid/support/v7/widget/D;->aay(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_0

    .line 4906
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    .line 4907
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_13

    .line 4911
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v2}, Landroid/support/v7/widget/y;->Zp()V

    goto/16 :goto_d

    .line 4923
    :cond_2c
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->XZ()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 4926
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/v;->QZ:Z

    if-nez v2, :cond_1

    .line 4927
    invoke-virtual {v15}, Landroid/support/v7/widget/g;->stop()V

    goto/16 :goto_1

    .line 4924
    :cond_2d
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v15, v2, v3}, Landroid/support/v7/widget/g;->Ya(Landroid/support/v7/widget/g;II)V

    goto :goto_14
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4963
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/v;->Zf(IIII)V

    .line 4964
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5003
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/v;->Zb(IIII)I

    move-result v0

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/v;->YZ(IIILandroid/view/animation/Interpolator;)V

    .line 5005
    return-void

    .line 5003
    :cond_0
    sget-object p3, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 5019
    iget-object v0, p0, Landroid/support/v7/widget/v;->Rb:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5020
    iget-object v0, p0, Landroid/support/v7/widget/v;->QY:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5021
    return-void
.end method
