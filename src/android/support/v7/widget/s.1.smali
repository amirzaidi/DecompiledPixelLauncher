.class public final Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field QK:I

.field QL:Landroid/support/v7/widget/t;

.field private final QM:Ljava/util/List;

.field final QN:Ljava/util/ArrayList;

.field final QO:Ljava/util/ArrayList;

.field private QP:I

.field private QQ:Landroid/support/v7/widget/r;

.field QR:Ljava/util/ArrayList;

.field final synthetic QS:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 5339
    iput-object p1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    .line 5341
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    .line 5343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    .line 5345
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    .line 5346
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/s;->QM:Ljava/util/List;

    .line 5348
    iput v1, p0, Landroid/support/v7/widget/s;->QP:I

    .line 5349
    iput v1, p0, Landroid/support/v7/widget/s;->QK:I

    return-void
.end method

.method private YK(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 5739
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5752
    :cond_0
    :goto_0
    return-void

    .line 5740
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 5741
    invoke-static {v0}, Landroid/support/v4/view/f;->agA(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 5746
    :goto_1
    invoke-static {v0}, Landroid/support/v4/view/f;->agz(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5747
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 5748
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    .line 5749
    invoke-virtual {v1}, Landroid/support/v7/widget/z;->Zq()Landroid/support/v4/view/c;

    move-result-object v1

    .line 5748
    invoke-static {v0, v1}, Landroid/support/v4/view/f;->agu(Landroid/view/View;Landroid/support/v4/view/c;)V

    goto :goto_0

    .line 5743
    :cond_2
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->agC(Landroid/view/View;I)V

    goto :goto_1
.end method

.method private YL(Landroid/view/ViewGroup;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 5761
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 5767
    if-eqz p2, :cond_2

    .line 5771
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 5775
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5776
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5777
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5779
    :goto_1
    return-void

    .line 5762
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5763
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 5761
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5764
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/s;->YL(Landroid/view/ViewGroup;Z)V

    goto :goto_2

    .line 5768
    :cond_2
    return-void

    .line 5772
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5773
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private Yn(Landroid/support/v7/widget/j;IIJ)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 5445
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5446
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v1

    .line 5447
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5448
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p4, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    move-wide v4, p4

    .line 5449
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/t;->YS(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5453
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/q;->bindViewHolder(Landroid/support/v7/widget/j;I)V

    .line 5454
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    .line 5455
    iget-object v4, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v5

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v7/widget/t;->YM(IJ)V

    .line 5456
    invoke-direct {p0, p1}, Landroid/support/v7/widget/s;->YK(Landroid/support/v7/widget/j;)V

    .line 5457
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5460
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5451
    :cond_1
    return v6

    .line 5458
    :cond_2
    iput p3, p1, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method private Ys(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5755
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 5758
    :goto_0
    return-void

    .line 5756
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/s;->YL(Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method


# virtual methods
.method YA(IZJ)Landroid/support/v7/widget/j;
    .locals 11

    .prologue
    const/16 v10, 0x2000

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 5582
    if-gez p1, :cond_1

    .line 5583
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

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5584
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5585
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5582
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5590
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v9

    move v2, v6

    .line 5595
    :goto_0
    if-eqz v0, :cond_9

    .line 5618
    :cond_2
    :goto_1
    if-eqz v0, :cond_e

    move-object v1, v0

    move v8, v2

    .line 5695
    :goto_2
    if-nez v8, :cond_1d

    .line 5709
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5712
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5718
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->aar(I)I

    move-result v2

    move-object v0, p0

    move v3, p1

    move-wide v4, p3

    .line 5719
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/s;->Yn(Landroid/support/v7/widget/j;IIJ)Z

    move-result v0

    move v2, v0

    .line 5722
    :goto_4
    iget-object v0, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5724
    if-eqz v0, :cond_20

    .line 5727
    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5731
    check-cast v0, Landroid/support/v7/widget/i;

    .line 5733
    :goto_5
    iput-object v1, v0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    .line 5734
    if-nez v8, :cond_22

    :goto_6
    move v7, v6

    :cond_6
    iput-boolean v7, v0, Landroid/support/v7/widget/i;->QJ:Z

    .line 5735
    return-object v1

    .line 5591
    :cond_7
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s;->Yw(I)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 5592
    if-nez v1, :cond_8

    move v0, v6

    :goto_7
    move v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_8
    move v0, v7

    goto :goto_7

    .line 5596
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/s;->Yq(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5597
    if-eqz v0, :cond_2

    .line 5598
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->Yj(Landroid/support/v7/widget/j;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v2, v7

    .line 5614
    goto :goto_1

    .line 5600
    :cond_a
    if-eqz p2, :cond_b

    :goto_8
    move-object v0, v9

    .line 5612
    goto :goto_1

    .line 5603
    :cond_b
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 5604
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v1

    if-nez v1, :cond_c

    .line 5607
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_d

    .line 5610
    :goto_9
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YI(Landroid/support/v7/widget/j;)V

    goto :goto_8

    .line 5605
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3, v6}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5606
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_9

    .line 5608
    :cond_d
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    goto :goto_9

    .line 5619
    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/C;->aar(I)I

    move-result v3

    .line 5620
    if-gez v3, :cond_10

    .line 5621
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

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5623
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5620
    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_f

    .line 5626
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/q;->getItemViewType(I)I

    move-result v1

    .line 5628
    iget-object v4, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v4}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_13

    move v8, v2

    .line 5637
    :goto_a
    if-eqz v0, :cond_15

    .line 5655
    :cond_11
    if-eqz v0, :cond_17

    .line 5668
    :cond_12
    :goto_b
    if-eqz v0, :cond_18

    move-object v1, v0

    goto/16 :goto_2

    .line 5629
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v1, p2}, Landroid/support/v7/widget/s;->YG(JIZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5631
    if-nez v0, :cond_14

    move v8, v2

    goto :goto_a

    .line 5633
    :cond_14
    iput v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    move v8, v7

    .line 5634
    goto :goto_a

    .line 5637
    :cond_15
    iget-object v2, p0, Landroid/support/v7/widget/s;->QQ:Landroid/support/v7/widget/r;

    if-eqz v2, :cond_11

    .line 5640
    iget-object v2, p0, Landroid/support/v7/widget/s;->QQ:Landroid/support/v7/widget/r;

    .line 5641
    invoke-virtual {v2, p0, p1, v1}, Landroid/support/v7/widget/r;->Yi(Landroid/support/v7/widget/s;II)Landroid/view/View;

    move-result-object v2

    .line 5642
    if-eqz v2, :cond_11

    .line 5643
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5644
    if-eqz v0, :cond_16

    .line 5648
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5651
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5645
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5647
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5660
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/t;->YV(I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5661
    if-eqz v0, :cond_12

    .line 5662
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->resetInternal()V

    .line 5663
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_12

    .line 5664
    invoke-direct {p0, v0}, Landroid/support/v7/widget/s;->Ys(Landroid/support/v7/widget/j;)V

    goto/16 :goto_b

    .line 5669
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    .line 5670
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p3, v4

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    move-wide v4, p3

    .line 5671
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/t;->YP(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5675
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget-object v4, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/widget/q;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5676
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 5684
    :cond_1a
    :goto_c
    iget-object v4, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5685
    iget-object v9, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    sub-long v2, v4, v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/support/v7/widget/t;->YQ(IJ)V

    move-object v1, v0

    goto/16 :goto_2

    .line 5673
    :cond_1b
    return-object v9

    .line 5678
    :cond_1c
    iget-object v4, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    .line 5679
    if-eqz v4, :cond_1a

    .line 5680
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_c

    .line 5695
    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5696
    invoke-virtual {v1, v10}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5697
    invoke-virtual {v1, v6, v10}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 5698
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qw:Z

    if-eqz v0, :cond_3

    .line 5700
    invoke-static {v1}, Landroid/support/v7/widget/b;->Xp(Landroid/support/v7/widget/j;)I

    move-result v0

    .line 5701
    or-int/lit16 v0, v0, 0x1000

    .line 5702
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5703
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 5702
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/support/v7/widget/b;->Xy(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v0

    .line 5704
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto/16 :goto_3

    .line 5709
    :cond_1e
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5711
    iput p1, v1, Landroid/support/v7/widget/j;->mPreLayoutPosition:I

    move v2, v6

    goto/16 :goto_4

    .line 5712
    :cond_1f
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_5

    move v2, v6

    goto/16 :goto_4

    .line 5725
    :cond_20
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 5726
    iget-object v3, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 5728
    :cond_21
    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 5729
    iget-object v3, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 5734
    :cond_22
    if-nez v2, :cond_6

    goto/16 :goto_6
.end method

.method YB(IZ)Landroid/view/View;
    .locals 2

    .prologue
    .line 5558
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/s;->YA(IZJ)Landroid/support/v7/widget/j;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0
.end method

.method YC()V
    .locals 1

    .prologue
    .line 5816
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5817
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 5820
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5821
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5824
    :goto_1
    return-void

    .line 5818
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YE(I)V

    goto :goto_0

    .line 5822
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->Zp()V

    goto :goto_1
.end method

.method YD(Landroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 6181
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    if-nez v0, :cond_0

    .line 6184
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_1

    .line 6187
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    if-nez v0, :cond_2

    .line 6191
    :goto_2
    return-void

    .line 6182
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/l;->onViewRecycled(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6185
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->onViewRecycled(Landroid/support/v7/widget/j;)V

    goto :goto_1

    .line 6188
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/B;->ZV(Landroid/support/v7/widget/j;)V

    goto :goto_2
.end method

.method YE(I)V
    .locals 2

    .prologue
    .line 5841
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 5845
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/s;->Yz(Landroid/support/v7/widget/j;Z)V

    .line 5846
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5847
    return-void
.end method

.method YF()V
    .locals 1

    .prologue
    .line 6030
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6031
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6034
    :goto_0
    return-void

    .line 6032
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method YG(JIZ)Landroid/support/v7/widget/j;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6129
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6130
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6162
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6163
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_6

    .line 6177
    return-object v5

    .line 6131
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6132
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6130
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6133
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v2

    if-eq p3, v2, :cond_3

    .line 6150
    if-nez p4, :cond_1

    .line 6154
    iget-object v2, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6155
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6156
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YJ(Landroid/view/View;)V

    goto :goto_2

    .line 6134
    :cond_3
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6135
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_5

    .line 6149
    :cond_4
    :goto_3
    return-object v0

    .line 6144
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->XM()Z

    move-result v1

    if-nez v1, :cond_4

    .line 6145
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/j;->setFlags(II)V

    goto :goto_3

    .line 6164
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6165
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 6166
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v2

    if-eq p3, v2, :cond_8

    .line 6171
    if-eqz p4, :cond_a

    .line 6163
    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 6167
    :cond_8
    if-eqz p4, :cond_9

    .line 6170
    :goto_4
    return-object v0

    .line 6168
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 6172
    :cond_a
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->YE(I)V

    .line 6173
    return-object v5
.end method

.method public YH()Ljava/util/List;
    .locals 1

    .prologue
    .line 5393
    iget-object v0, p0, Landroid/support/v7/widget/s;->QM:Ljava/util/List;

    return-object v0
.end method

.method YI(Landroid/support/v7/widget/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5855
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5856
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5858
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 5859
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5855
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5862
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5868
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5875
    invoke-static {p1}, Landroid/support/v7/widget/j;->access$900(Landroid/support/v7/widget/j;)Z

    move-result v4

    .line 5876
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_8

    :cond_2
    move v0, v1

    .line 5885
    :goto_1
    if-eqz v0, :cond_9

    .line 5886
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/s;->QK:I

    if-gtz v0, :cond_a

    move v0, v1

    .line 5916
    :goto_2
    if-eqz v0, :cond_12

    .line 5935
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/B;->ZV(Landroid/support/v7/widget/j;)V

    .line 5936
    if-eqz v0, :cond_13

    .line 5939
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v0, v2

    .line 5859
    goto :goto_0

    .line 5863
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5865
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5869
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5871
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5876
    :cond_8
    if-eqz v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 5878
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->onFailedToRecycleView(Landroid/support/v7/widget/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    .line 5885
    :cond_9
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 5886
    :cond_a
    const/16 v0, 0x20e

    .line 5887
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_2

    .line 5892
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5893
    iget v3, p0, Landroid/support/v7/widget/s;->QK:I

    if-ge v0, v3, :cond_e

    .line 5899
    :cond_c
    :goto_5
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v3

    if-nez v3, :cond_f

    .line 5913
    :cond_d
    :goto_6
    iget-object v3, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v2

    .line 5914
    goto/16 :goto_2

    .line 5893
    :cond_e
    if-lez v0, :cond_c

    .line 5894
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->YE(I)V

    .line 5895
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 5899
    :cond_f
    if-lez v0, :cond_d

    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v5, p1, Landroid/support/v7/widget/j;->mPosition:I

    .line 5901
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/y;->Zo(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5903
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 5904
    :goto_7
    if-gez v3, :cond_11

    .line 5911
    :cond_10
    add-int/lit8 v0, v3, 0x1

    goto :goto_6

    .line 5905
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget v0, v0, Landroid/support/v7/widget/j;->mPosition:I

    .line 5906
    iget-object v5, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/y;->Zo(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5909
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    .line 5910
    goto :goto_7

    .line 5917
    :cond_12
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/s;->Yz(Landroid/support/v7/widget/j;Z)V

    move v1, v2

    .line 5918
    goto/16 :goto_3

    .line 5936
    :cond_13
    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    .line 5937
    iput-object v6, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    goto/16 :goto_4
.end method

.method YJ(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5968
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5969
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$1002(Landroid/support/v7/widget/j;Landroid/support/v7/widget/s;)Landroid/support/v7/widget/s;

    .line 5970
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$1102(Landroid/support/v7/widget/j;Z)Z

    .line 5971
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 5972
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YI(Landroid/support/v7/widget/j;)V

    .line 5973
    return-void
.end method

.method Yj(Landroid/support/v7/widget/j;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5407
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5414
    iget v2, p1, Landroid/support/v7/widget/j;->mPosition:I

    if-gez v2, :cond_2

    .line 5415
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5416
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5412
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    return v0

    .line 5414
    :cond_2
    iget v2, p1, Landroid/support/v7/widget/j;->mPosition:I

    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v3}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5418
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2}, Landroid/support/v7/widget/e;->XM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5425
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5428
    return v0

    .line 5420
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget v3, p1, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/q;->getItemViewType(I)I

    move-result v2

    .line 5421
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 5422
    return v1

    .line 5426
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

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

.method Yk()I
    .locals 1

    .prologue
    .line 6022
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Yl(I)I
    .locals 3

    .prologue
    .line 5529
    if-gez p1, :cond_1

    .line 5530
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

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 5531
    invoke-virtual {v2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5529
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5533
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0}, Landroid/support/v7/widget/e;->XM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5536
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->aar(I)I

    move-result v0

    return v0

    .line 5534
    :cond_2
    return p1
.end method

.method Ym(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5985
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5986
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5988
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5993
    :cond_1
    invoke-virtual {v0, p0, v2}, Landroid/support/v7/widget/j;->setScrapContainer(Landroid/support/v7/widget/s;Z)V

    .line 5994
    iget-object v1, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6002
    :goto_0
    return-void

    .line 5987
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5996
    iget-object v1, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 5999
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/j;->setScrapContainer(Landroid/support/v7/widget/s;Z)V

    .line 6000
    iget-object v1, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5988
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5989
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 5991
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5997
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method Yo(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6026
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public Yp(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 5554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/s;->YB(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method Yq(IZ)Landroid/support/v7/widget/j;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 6075
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6078
    :goto_0
    if-lt v2, v3, :cond_1

    .line 6087
    if-eqz p2, :cond_6

    .line 6108
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6109
    :goto_1
    if-lt v1, v2, :cond_8

    .line 6124
    return-object v5

    .line 6079
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6080
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6078
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6080
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6081
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->Qt:Z

    if-eqz v4, :cond_5

    .line 6082
    :cond_4
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6083
    return-object v0

    .line 6081
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 6088
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/A;->Zw(I)Landroid/view/View;

    move-result-object v0

    .line 6089
    if-eqz v0, :cond_0

    .line 6092
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 6093
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->ZG(Landroid/view/View;)V

    .line 6094
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Zt(Landroid/view/View;)I

    move-result v2

    .line 6095
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 6099
    iget-object v3, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/A;->ZB(I)V

    .line 6100
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->Ym(Landroid/view/View;)V

    .line 6101
    const/16 v0, 0x2020

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6103
    return-object v1

    .line 6096
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    .line 6097
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6110
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6113
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6109
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 6113
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_9

    .line 6114
    if-eqz p2, :cond_b

    .line 6121
    :goto_3
    return-object v0

    .line 6115
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method Yr(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 6195
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->clear()V

    .line 6196
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/t;->YW(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V

    .line 6197
    return-void
.end method

.method public Yt(I)V
    .locals 0

    .prologue
    .line 5372
    iput p1, p0, Landroid/support/v7/widget/s;->QP:I

    .line 5373
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->Yv()V

    .line 5374
    return-void
.end method

.method public Yu(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5794
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 5795
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5798
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isScrap()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5800
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5803
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YI(Landroid/support/v7/widget/j;)V

    .line 5804
    return-void

    .line 5796
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_0

    .line 5799
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->unScrap()V

    goto :goto_1

    .line 5801
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    goto :goto_1
.end method

.method Yv()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5377
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_1

    .line 5378
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/s;->QP:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/s;->QK:I

    .line 5381
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5382
    :goto_1
    if-gez v0, :cond_2

    .line 5385
    :cond_0
    return-void

    .line 5377
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget v0, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    goto :goto_0

    .line 5382
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/s;->QK:I

    if-le v1, v2, :cond_0

    .line 5383
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/s;->YE(I)V

    .line 5382
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method Yw(I)Landroid/support/v7/widget/j;
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 6039
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6040
    :cond_0
    return-object v8

    .line 6039
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 6043
    :goto_0
    if-lt v2, v3, :cond_3

    .line 6051
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6064
    :cond_2
    return-object v8

    .line 6044
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6045
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6043
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6045
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 6046
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6047
    return-object v0

    .line 6052
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/C;->aar(I)I

    move-result v0

    .line 6053
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6054
    iget-object v2, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v4

    .line 6055
    :goto_1
    if-ge v1, v3, :cond_2

    .line 6056
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6057
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6055
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6057
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v6

    cmp-long v2, v6, v4

    if-nez v2, :cond_7

    .line 6058
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6059
    return-object v0
.end method

.method Yx(II)V
    .locals 4

    .prologue
    .line 6292
    add-int v2, p1, p2

    .line 6293
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6294
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6308
    return-void

    .line 6295
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6296
    if-eqz v0, :cond_1

    .line 6300
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    .line 6301
    if-ge v3, p1, :cond_2

    .line 6294
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6301
    :cond_2
    if-ge v3, v2, :cond_1

    .line 6302
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6303
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->YE(I)V

    goto :goto_1
.end method

.method Yy(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6011
    invoke-static {p1}, Landroid/support/v7/widget/j;->access$1100(Landroid/support/v7/widget/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6014
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6016
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/j;->access$1002(Landroid/support/v7/widget/j;Landroid/support/v7/widget/s;)Landroid/support/v7/widget/s;

    .line 6017
    invoke-static {p1, v1}, Landroid/support/v7/widget/j;->access$1102(Landroid/support/v7/widget/j;Z)Z

    .line 6018
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->clearReturnedFromScrapFlag()V

    .line 6019
    return-void

    .line 6012
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method Yz(Landroid/support/v7/widget/j;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4000

    const/4 v1, 0x0

    .line 5950
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/j;)V

    .line 5951
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5955
    :goto_0
    if-nez p2, :cond_1

    .line 5958
    :goto_1
    iput-object v3, p1, Landroid/support/v7/widget/j;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 5959
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/t;->YR(Landroid/support/v7/widget/j;)V

    .line 5960
    return-void

    .line 5952
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 5953
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v0, v3}, Landroid/support/v4/view/f;->agu(Landroid/view/View;Landroid/support/v4/view/c;)V

    goto :goto_0

    .line 5956
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/s;->YD(Landroid/support/v7/widget/j;)V

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 5362
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5363
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->YC()V

    .line 5364
    return-void
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6327
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6328
    :goto_0
    if-lt v2, v3, :cond_1

    .line 6332
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 6333
    :goto_1
    if-lt v2, v3, :cond_2

    .line 6336
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 6342
    :cond_0
    return-void

    .line 6329
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6330
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6328
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 6334
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/s;->QN:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6333
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6337
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6338
    :goto_2
    if-ge v1, v2, :cond_0

    .line 6339
    iget-object v0, p0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearOldPosition()V

    .line 6338
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/t;
    .locals 1

    .prologue
    .line 6285
    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    if-eqz v0, :cond_0

    .line 6288
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    return-object v0

    .line 6286
    :cond_0
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0}, Landroid/support/v7/widget/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .prologue
    .line 6345
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6346
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 6353
    return-void

    .line 6347
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6348
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 6349
    if-nez v0, :cond_1

    .line 6346
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6350
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/i;->QI:Z

    goto :goto_1
.end method

.method markKnownViewsInvalid()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 6311
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6322
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/s;->YC()V

    .line 6324
    :cond_1
    return-void

    .line 6311
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6312
    iget-object v1, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 6313
    :goto_0
    if-ge v1, v2, :cond_1

    .line 6314
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6315
    if-nez v0, :cond_3

    .line 6313
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6316
    :cond_3
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6317
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/j;->addChangePayload(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4

    .prologue
    .line 6229
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6230
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 6240
    return-void

    .line 6231
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6232
    if-nez v0, :cond_2

    .line 6230
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6232
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v3, p1, :cond_1

    .line 6237
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_1
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 6201
    if-lt p1, p2, :cond_0

    .line 6208
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    .line 6210
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 6211
    :goto_1
    if-lt v4, v6, :cond_1

    .line 6226
    return-void

    .line 6204
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    goto :goto_0

    .line 6212
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6213
    if-nez v0, :cond_3

    .line 6211
    :cond_2
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 6213
    :cond_3
    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v7, v3, :cond_2

    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-gt v7, v2, :cond_2

    .line 6216
    iget v7, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-eq v7, p1, :cond_4

    .line 6219
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_2

    .line 6217
    :cond_4
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_2
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    .prologue
    .line 6249
    add-int v2, p1, p2

    .line 6250
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6251
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 6268
    return-void

    .line 6252
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 6253
    if-nez v0, :cond_2

    .line 6251
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 6254
    :cond_2
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v3, v2, :cond_3

    .line 6261
    iget v3, v0, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v3, p1, :cond_1

    .line 6263
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 6264
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/s;->YE(I)V

    goto :goto_1

    .line 6260
    :cond_3
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_1
.end method

.method setRecycledViewPool(Landroid/support/v7/widget/t;)V
    .locals 2

    .prologue
    .line 6275
    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    if-nez v0, :cond_0

    .line 6278
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    .line 6279
    if-nez p1, :cond_1

    .line 6282
    :goto_1
    return-void

    .line 6276
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->YT()V

    goto :goto_0

    .line 6280
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/s;->QL:Landroid/support/v7/widget/t;

    iget-object v1, p0, Landroid/support/v7/widget/s;->QS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/t;->YN(Landroid/support/v7/widget/q;)V

    goto :goto_1
.end method

.method setViewCacheExtension(Landroid/support/v7/widget/r;)V
    .locals 0

    .prologue
    .line 6271
    iput-object p1, p0, Landroid/support/v7/widget/s;->QQ:Landroid/support/v7/widget/r;

    .line 6272
    return-void
.end method
