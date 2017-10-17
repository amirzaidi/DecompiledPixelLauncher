.class public final Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Pd:I

.field Pe:Landroid/support/v7/widget/t;

.field private final Pf:Ljava/util/List;

.field final Pg:Ljava/util/ArrayList;

.field final Ph:Ljava/util/ArrayList;

.field private Pi:I

.field private Pj:Landroid/support/v7/widget/r;

.field Pk:Ljava/util/ArrayList;

.field final synthetic Pl:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5301
    iput-object p1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    .line 5303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    .line 5305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    .line 5307
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    .line 5308
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s;->Pf:Ljava/util/List;

    .line 5310
    iput v1, p0, Landroid/support/v7/widget/s;->Pi:I

    .line 5311
    iput v1, p0, Landroid/support/v7/widget/s;->Pd:I

    return-void
.end method

.method private XK(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 5698
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5711
    :cond_0
    :goto_0
    return-void

    .line 5699
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 5700
    invoke-static {v0}, Landroid/support/v4/view/f;->afy(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 5705
    :goto_1
    invoke-static {v0}, Landroid/support/v4/view/f;->afx(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5706
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 5707
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    .line 5708
    invoke-virtual {v1}, Landroid/support/v7/widget/z;->Yo()Landroid/support/v4/view/a;

    move-result-object v1

    .line 5707
    invoke-static {v0, v1}, Landroid/support/v4/view/f;->aft(Landroid/view/View;Landroid/support/v4/view/a;)V

    goto :goto_0

    .line 5702
    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->afA(Landroid/view/View;I)V

    goto :goto_1
.end method

.method private XL(Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 5720
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 5726
    if-eqz p2, :cond_2

    .line 5730
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 5734
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5735
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5736
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5738
    :goto_1
    return-void

    .line 5721
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5722
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 5720
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5723
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/s;->XL(Landroid/view/ViewGroup;Z)V

    goto :goto_2

    .line 5727
    :cond_2
    return-void

    .line 5731
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5732
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private Xn(Landroid/support/v7/widget/j;IIJ)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 5407
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5408
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v1

    .line 5409
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5410
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    move-wide v4, p4

    .line 5411
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/t;->XS(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5415
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/q;->bindViewHolder(Landroid/support/v7/widget/j;I)V

    .line 5416
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    .line 5417
    iget-object v4, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v7/widget/t;->XM(IJ)V

    .line 5418
    invoke-direct {p0, p1}, Landroid/support/v7/widget/s;->XK(Landroid/support/v7/widget/j;)V

    .line 5419
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5422
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5413
    :cond_1
    return v6

    .line 5420
    :cond_2
    iput p3, p1, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method private Xs(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5714
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 5717
    :goto_0
    return-void

    .line 5715
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/s;->XL(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method


# virtual methods
.method XA(IZJ)Landroid/support/v7/widget/j;
    .locals 11

    .prologue
    const/16 v10, 0x2000

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 5544
    if-gez p1, :cond_1

    .line 5545
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5546
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5544
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5551
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v9

    move v2, v6

    .line 5556
    :goto_0
    if-eqz v0, :cond_9

    .line 5579
    :cond_2
    :goto_1
    if-eqz v0, :cond_e

    move-object v1, v0

    move v8, v2

    .line 5655
    :goto_2
    if-nez v8, :cond_1d

    .line 5669
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5672
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5677
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->Zp(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    .line 5678
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/s;->Xn(Landroid/support/v7/widget/j;IIJ)Z

    move-result v0

    move v2, v0

    .line 5681
    :goto_4
    iget-object v0, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5683
    if-eqz v0, :cond_20

    .line 5686
    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5690
    check-cast v0, Landroid/support/v7/widget/i;

    .line 5692
    :goto_5
    iput-object v1, v0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    .line 5693
    if-nez v8, :cond_22

    :goto_6
    move v7, v6

    :cond_6
    iput-boolean v7, v0, Landroid/support/v7/widget/i;->Pc:Z

    .line 5694
    return-object v1

    .line 5552
    :cond_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s;->Xw(I)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 5553
    if-nez v1, :cond_8

    move v0, v6

    :goto_7
    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_8
    move v0, v7

    goto :goto_7

    .line 5557
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/s;->Xq(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5558
    if-eqz v0, :cond_2

    .line 5559
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->Xj(Landroid/support/v7/widget/j;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v2, v7

    .line 5575
    goto :goto_1

    .line 5561
    :cond_a
    if-eqz p2, :cond_b

    :goto_8
    move-object v0, v9

    .line 5573
    goto :goto_1

    .line 5564
    :cond_b
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 5565
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v1

    if-nez v1, :cond_c

    .line 5568
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5571
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XI(Landroid/support/v7/widget/j;)V

    goto :goto_8

    .line 5566
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3, v6}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5567
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_9

    .line 5569
    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    goto :goto_9

    .line 5580
    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/C;->Zp(I)I

    move-result v3

    .line 5581
    if-gez v3, :cond_10

    .line 5582
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5584
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5581
    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_f

    .line 5587
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/q;->getItemViewType(I)I

    move-result v1

    .line 5589
    iget-object v4, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v4}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_13

    move v8, v2

    .line 5598
    :goto_a
    if-eqz v0, :cond_15

    .line 5615
    :cond_11
    if-eqz v0, :cond_17

    .line 5628
    :cond_12
    :goto_b
    if-eqz v0, :cond_18

    move-object v1, v0

    goto/16 :goto_2

    .line 5590
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroid/support/v7/widget/s;->XG(JIZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5592
    if-nez v0, :cond_14

    move v8, v2

    goto :goto_a

    .line 5594
    :cond_14
    iput v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    move v8, v7

    .line 5595
    goto :goto_a

    .line 5598
    :cond_15
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pj:Landroid/support/v7/widget/r;

    if-eqz v2, :cond_11

    .line 5601
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pj:Landroid/support/v7/widget/r;

    .line 5602
    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/r;->Xi(Landroid/support/v7/widget/s;II)Landroid/view/View;

    move-result-object v2

    .line 5603
    if-eqz v2, :cond_11

    .line 5604
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5605
    if-eqz v0, :cond_16

    .line 5608
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5606
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5620
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/t;->XV(I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5621
    if-eqz v0, :cond_12

    .line 5622
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->resetInternal()V

    .line 5623
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_12

    .line 5624
    invoke-direct {p0, v0}, Landroid/support/v7/widget/s;->Xs(Landroid/support/v7/widget/j;)V

    goto :goto_b

    .line 5629
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5630
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    move-wide v4, p3

    .line 5631
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/t;->XP(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5635
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget-object v4, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/q;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5636
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$700()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 5644
    :cond_1a
    :goto_c
    iget-object v4, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5645
    iget-object v9, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    sub-long v2, v4, v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/support/v7/widget/t;->XQ(IJ)V

    move-object v1, v0

    goto/16 :goto_2

    .line 5633
    :cond_1b
    return-object v9

    .line 5638
    :cond_1c
    iget-object v4, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 5639
    if-eqz v4, :cond_1a

    .line 5640
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_c

    .line 5655
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5656
    invoke-virtual {v1, v10}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5657
    invoke-virtual {v1, v6, v10}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 5658
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OQ:Z

    if-eqz v0, :cond_3

    .line 5660
    invoke-static {v1}, Landroid/support/v7/widget/b;->Wr(Landroid/support/v7/widget/j;)I

    move-result v0

    .line 5661
    or-int/lit16 v0, v0, 0x1000

    .line 5662
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5663
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 5662
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/support/v7/widget/b;->WA(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v0

    .line 5664
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto/16 :goto_3

    .line 5669
    :cond_1e
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5671
    iput p1, v1, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    move v2, v6

    goto/16 :goto_4

    .line 5672
    :cond_1f
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_5

    move v2, v6

    goto/16 :goto_4

    .line 5684
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 5685
    iget-object v3, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 5687
    :cond_21
    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 5688
    iget-object v3, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 5693
    :cond_22
    if-nez v2, :cond_6

    goto/16 :goto_6
.end method

.method XB(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 5520
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/s;->XA(IZJ)Landroid/support/v7/widget/j;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0
.end method

.method XC()V
    .locals 1

    .prologue
    .line 5775
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5776
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 5779
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5780
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5783
    :goto_1
    return-void

    .line 5777
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XE(I)V

    goto :goto_0

    .line 5781
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->Yn()V

    goto :goto_1
.end method

.method XD(Landroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 6137
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    if-nez v0, :cond_0

    .line 6140
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_1

    .line 6143
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    if-nez v0, :cond_2

    .line 6147
    :goto_2
    return-void

    .line 6138
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/l;->onViewRecycled(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6141
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->onViewRecycled(Landroid/support/v7/widget/j;)V

    goto :goto_1

    .line 6144
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/B;->YT(Landroid/support/v7/widget/j;)V

    goto :goto_2
.end method

.method XE(I)V
    .locals 2

    .prologue
    .line 5800
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 5804
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/s;->Xz(Landroid/support/v7/widget/j;Z)V

    .line 5805
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5806
    return-void
.end method

.method XF()V
    .locals 1

    .prologue
    .line 5986
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5987
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5990
    :goto_0
    return-void

    .line 5988
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method XG(JIZ)Landroid/support/v7/widget/j;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6085
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6086
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6118
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6119
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_6

    .line 6133
    return-object v5

    .line 6087
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6088
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6086
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6089
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v2

    if-eq p3, v2, :cond_3

    .line 6106
    if-nez p4, :cond_1

    .line 6110
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6111
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6112
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XJ(Landroid/view/View;)V

    goto :goto_2

    .line 6090
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6091
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6105
    :cond_4
    :goto_3
    return-object v0

    .line 6100
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->WN()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6101
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/j;->setFlags(II)V

    goto :goto_3

    .line 6120
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6121
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 6122
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v2

    if-eq p3, v2, :cond_8

    .line 6127
    if-eqz p4, :cond_a

    .line 6119
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 6123
    :cond_8
    if-eqz p4, :cond_9

    .line 6126
    :goto_4
    return-object v0

    .line 6124
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 6128
    :cond_a
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->XE(I)V

    .line 6129
    return-object v5
.end method

.method public XH()Ljava/util/List;
    .locals 1

    .prologue
    .line 5355
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pf:Ljava/util/List;

    return-object v0
.end method

.method XI(Landroid/support/v7/widget/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5814
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5815
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5817
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 5818
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5814
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5821
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5826
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5832
    invoke-static {p1}, Landroid/support/v7/widget/j;->access$800(Landroid/support/v7/widget/j;)Z

    move-result v4

    .line 5833
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_8

    :cond_2
    move v0, v1

    .line 5842
    :goto_1
    if-eqz v0, :cond_9

    .line 5843
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/s;->Pd:I

    if-gtz v0, :cond_a

    move v0, v1

    .line 5873
    :goto_2
    if-eqz v0, :cond_12

    .line 5891
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/B;->YT(Landroid/support/v7/widget/j;)V

    .line 5892
    if-eqz v0, :cond_13

    .line 5895
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v0, v2

    .line 5818
    goto :goto_0

    .line 5822
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5827
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5833
    :cond_8
    if-eqz v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 5835
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->onFailedToRecycleView(Landroid/support/v7/widget/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 5842
    :cond_9
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 5843
    :cond_a
    const/16 v0, 0x20e

    .line 5844
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_2

    .line 5849
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5850
    iget v3, p0, Landroid/support/v7/widget/s;->Pd:I

    if-ge v0, v3, :cond_e

    .line 5856
    :cond_c
    :goto_5
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$700()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5870
    :cond_d
    :goto_6
    iget-object v3, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v2

    .line 5871
    goto :goto_2

    .line 5850
    :cond_e
    if-lez v0, :cond_c

    .line 5851
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->XE(I)V

    .line 5852
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 5856
    :cond_f
    if-lez v0, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v5, p1, Landroid/support/v7/widget/j;->mPosition:I

    .line 5858
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/y;->Ym(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5860
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 5861
    :goto_7
    if-gez v3, :cond_11

    .line 5868
    :cond_10
    add-int/lit8 v0, v3, 0x1

    goto :goto_6

    .line 5862
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget v0, v0, Landroid/support/v7/widget/j;->mPosition:I

    .line 5863
    iget-object v5, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/y;->Ym(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5866
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 5867
    goto :goto_7

    .line 5874
    :cond_12
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/s;->Xz(Landroid/support/v7/widget/j;Z)V

    move v1, v2

    .line 5875
    goto/16 :goto_3

    .line 5892
    :cond_13
    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    .line 5893
    iput-object v6, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    goto/16 :goto_4
.end method

.method XJ(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5924
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5925
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$902(Landroid/support/v7/widget/j;Landroid/support/v7/widget/s;)Landroid/support/v7/widget/s;

    .line 5926
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$1002(Landroid/support/v7/widget/j;Z)Z

    .line 5927
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 5928
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XI(Landroid/support/v7/widget/j;)V

    .line 5929
    return-void
.end method

.method Xj(Landroid/support/v7/widget/j;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5369
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5376
    iget v2, p1, Landroid/support/v7/widget/j;->mPosition:I

    if-gez v2, :cond_2

    .line 5377
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5374
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    return v0

    .line 5376
    :cond_2
    iget v2, p1, Landroid/support/v7/widget/j;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v3}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5380
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5387
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5390
    return v0

    .line 5382
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget v3, p1, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/q;->getItemViewType(I)I

    move-result v2

    .line 5383
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 5384
    return v1

    .line 5388
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget v5, p1, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    :goto_0
    return v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method Xk()I
    .locals 1

    .prologue
    .line 5978
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Xl(I)I
    .locals 3

    .prologue
    .line 5491
    if-gez p1, :cond_1

    .line 5492
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5493
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5491
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5495
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5498
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->Zp(I)I

    move-result v0

    return v0

    .line 5496
    :cond_2
    return p1
.end method

.method Xm(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5941
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5942
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5944
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5949
    :cond_1
    invoke-virtual {v0, p0, v2}, Landroid/support/v7/widget/j;->setScrapContainer(Landroid/support/v7/widget/s;Z)V

    .line 5950
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5958
    :goto_0
    return-void

    .line 5943
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5952
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 5955
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/j;->setScrapContainer(Landroid/support/v7/widget/s;Z)V

    .line 5956
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5944
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5945
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5953
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method Xo(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 5982
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public Xp(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 5516
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/s;->XB(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method Xq(IZ)Landroid/support/v7/widget/j;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6031
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6034
    :goto_0
    if-lt v2, v3, :cond_1

    .line 6043
    if-eqz p2, :cond_6

    .line 6064
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6065
    :goto_1
    if-lt v1, v2, :cond_8

    .line 6080
    return-object v5

    .line 6035
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6036
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6034
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6036
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6037
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->OO:Z

    if-eqz v4, :cond_5

    .line 6038
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6039
    return-object v0

    .line 6037
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 6044
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->Yu(I)Landroid/view/View;

    move-result-object v0

    .line 6045
    if-eqz v0, :cond_0

    .line 6048
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 6049
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->YE(Landroid/view/View;)V

    .line 6050
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Yr(Landroid/view/View;)I

    move-result v2

    .line 6051
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 6055
    iget-object v3, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/A;->Yz(I)V

    .line 6056
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->Xm(Landroid/view/View;)V

    .line 6057
    const/16 v0, 0x2020

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6059
    return-object v1

    .line 6052
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6066
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6069
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6065
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 6069
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_9

    .line 6070
    if-eqz p2, :cond_b

    .line 6077
    :goto_3
    return-object v0

    .line 6071
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method Xr(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 6151
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->clear()V

    .line 6152
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/t;->XW(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V

    .line 6153
    return-void
.end method

.method public Xt(I)V
    .locals 0

    .prologue
    .line 5334
    iput p1, p0, Landroid/support/v7/widget/s;->Pi:I

    .line 5335
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->Xv()V

    .line 5336
    return-void
.end method

.method public Xu(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5753
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5754
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5757
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5759
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5762
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XI(Landroid/support/v7/widget/j;)V

    .line 5763
    return-void

    .line 5755
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_0

    .line 5758
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_1

    .line 5760
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    goto :goto_1
.end method

.method Xv()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5339
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_1

    .line 5340
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/s;->Pi:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/s;->Pd:I

    .line 5343
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5344
    :goto_1
    if-gez v0, :cond_2

    .line 5347
    :cond_0
    return-void

    .line 5339
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget v0, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    goto :goto_0

    .line 5344
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/s;->Pd:I

    if-le v1, v2, :cond_0

    .line 5345
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->XE(I)V

    .line 5344
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method Xw(I)Landroid/support/v7/widget/j;
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 5995
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5996
    :cond_0
    return-object v8

    .line 5995
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 5999
    :goto_0
    if-lt v2, v3, :cond_3

    .line 6007
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6020
    :cond_2
    return-object v8

    .line 6000
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6001
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5999
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6001
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 6002
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6003
    return-object v0

    .line 6008
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->Zp(I)I

    move-result v0

    .line 6009
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6010
    iget-object v2, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v4

    .line 6011
    :goto_1
    if-ge v1, v3, :cond_2

    .line 6012
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6013
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6011
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6013
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_7

    .line 6014
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6015
    return-object v0
.end method

.method Xx(II)V
    .locals 4

    .prologue
    .line 6248
    add-int v2, p1, p2

    .line 6249
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6250
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6264
    return-void

    .line 6251
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6252
    if-eqz v0, :cond_1

    .line 6256
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    .line 6257
    if-ge v3, p1, :cond_2

    .line 6250
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6257
    :cond_2
    if-ge v3, v2, :cond_1

    .line 6258
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6259
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->XE(I)V

    goto :goto_1
.end method

.method Xy(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5967
    invoke-static {p1}, Landroid/support/v7/widget/j;->access$1000(Landroid/support/v7/widget/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5970
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5972
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/j;->access$902(Landroid/support/v7/widget/j;Landroid/support/v7/widget/s;)Landroid/support/v7/widget/s;

    .line 5973
    invoke-static {p1, v1}, Landroid/support/v7/widget/j;->access$1002(Landroid/support/v7/widget/j;Z)Z

    .line 5974
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 5975
    return-void

    .line 5968
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method Xz(Landroid/support/v7/widget/j;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4000

    const/4 v1, 0x0

    .line 5906
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/j;)V

    .line 5907
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5911
    :goto_0
    if-nez p2, :cond_1

    .line 5914
    :goto_1
    iput-object v3, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5915
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->XR(Landroid/support/v7/widget/j;)V

    .line 5916
    return-void

    .line 5908
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 5909
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/f;->aft(Landroid/view/View;Landroid/support/v4/view/a;)V

    goto :goto_0

    .line 5912
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s;->XD(Landroid/support/v7/widget/j;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 5324
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5325
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->XC()V

    .line 5326
    return-void
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6283
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6284
    :goto_0
    if-lt v2, v3, :cond_1

    .line 6288
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6289
    :goto_1
    if-lt v2, v3, :cond_2

    .line 6292
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 6298
    :cond_0
    return-void

    .line 6285
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6286
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6284
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6290
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6289
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6293
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6294
    :goto_2
    if-ge v1, v2, :cond_0

    .line 6295
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/t;
    .locals 1

    .prologue
    .line 6241
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    .line 6244
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    return-object v0

    .line 6242
    :cond_0
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0}, Landroid/support/v7/widget/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .prologue
    .line 6301
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 6309
    return-void

    .line 6303
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6304
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 6305
    if-nez v0, :cond_1

    .line 6302
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6306
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/i;->Pb:Z

    goto :goto_1
.end method

.method markKnownViewsInvalid()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 6267
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6278
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->XC()V

    .line 6280
    :cond_1
    return-void

    .line 6267
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6268
    iget-object v1, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 6269
    :goto_0
    if-ge v1, v2, :cond_1

    .line 6270
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6271
    if-nez v0, :cond_3

    .line 6269
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6272
    :cond_3
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6273
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/j;->addChangePayload(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4

    .prologue
    .line 6185
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6186
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 6196
    return-void

    .line 6187
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6188
    if-nez v0, :cond_2

    .line 6186
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6188
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v3, p1, :cond_1

    .line 6193
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_1
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6157
    if-lt p1, p2, :cond_0

    .line 6164
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    .line 6166
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 6167
    :goto_1
    if-lt v4, v6, :cond_1

    .line 6182
    return-void

    .line 6160
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    goto :goto_0

    .line 6168
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6169
    if-nez v0, :cond_3

    .line 6167
    :cond_2
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 6169
    :cond_3
    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v7, v3, :cond_2

    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-gt v7, v2, :cond_2

    .line 6172
    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-eq v7, p1, :cond_4

    .line 6175
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_2

    .line 6173
    :cond_4
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_2
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    .prologue
    .line 6205
    add-int v2, p1, p2

    .line 6206
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6207
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6224
    return-void

    .line 6208
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Ph:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6209
    if-nez v0, :cond_2

    .line 6207
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6210
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v3, v2, :cond_3

    .line 6217
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v3, p1, :cond_1

    .line 6219
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6220
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->XE(I)V

    goto :goto_1

    .line 6216
    :cond_3
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_1
.end method

.method setRecycledViewPool(Landroid/support/v7/widget/t;)V
    .locals 2

    .prologue
    .line 6231
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    if-nez v0, :cond_0

    .line 6234
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    .line 6235
    if-nez p1, :cond_1

    .line 6238
    :goto_1
    return-void

    .line 6232
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->XT()V

    goto :goto_0

    .line 6236
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->Pe:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/s;->Pl:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/t;->XN(Landroid/support/v7/widget/q;)V

    goto :goto_1
.end method

.method setViewCacheExtension(Landroid/support/v7/widget/r;)V
    .locals 0

    .prologue
    .line 6227
    iput-object p1, p0, Landroid/support/v7/widget/s;->Pj:Landroid/support/v7/widget/r;

    .line 6228
    return-void
.end method
