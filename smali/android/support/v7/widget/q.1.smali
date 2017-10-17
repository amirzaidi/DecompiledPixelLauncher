.class public abstract Landroid/support/v7/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v7/widget/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6355
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0}, Landroid/support/v7/widget/f;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/q;->mObservable:Landroid/support/v7/widget/f;

    .line 6356
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/q;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Landroid/support/v7/widget/j;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6458
    iput p2, p1, Landroid/support/v7/widget/j;->mPosition:I

    .line 6459
    invoke-virtual {p0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6462
    :goto_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 6465
    const-string/jumbo v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 6466
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/q;->onBindViewHolder(Landroid/support/v7/widget/j;ILjava/util/List;)V

    .line 6467
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->clearPayload()V

    .line 6468
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6469
    instance-of v1, v0, Landroid/support/v7/widget/i;

    if-nez v1, :cond_1

    .line 6472
    :goto_1
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 6473
    return-void

    .line 6460
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/q;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/j;->mItemId:J

    goto :goto_0

    .line 6470
    :cond_1
    check-cast v0, Landroid/support/v7/widget/i;

    iput-boolean v2, v0, Landroid/support/v7/widget/i;->Pb:Z

    goto :goto_1
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 6443
    const-string/jumbo v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 6444
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/q;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 6445
    iput p2, v0, Landroid/support/v7/widget/j;->mItemViewType:I

    .line 6446
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 6447
    return-object v0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 6516
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 6488
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 6534
    iget-boolean v0, p0, Landroid/support/v7/widget/q;->mHasStableIds:Z

    return v0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 6713
    iget-object v0, p0, Landroid/support/v7/widget/q;->mObservable:Landroid/support/v7/widget/f;

    invoke-virtual {v0}, Landroid/support/v7/widget/f;->WQ()V

    .line 6714
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6672
    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/j;I)V
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/j;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 6433
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/q;->onBindViewHolder(Landroid/support/v7/widget/j;I)V

    .line 6434
    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 6681
    return-void
.end method

.method public onFailedToRecycleView(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 6592
    const/4 v0, 0x0

    return v0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 6606
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 6618
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 6555
    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/h;)V
    .locals 1

    .prologue
    .line 6646
    iget-object v0, p0, Landroid/support/v7/widget/q;->mObservable:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->registerObserver(Ljava/lang/Object;)V

    .line 6647
    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/h;)V
    .locals 1

    .prologue
    .line 6660
    iget-object v0, p0, Landroid/support/v7/widget/q;->mObservable:Landroid/support/v7/widget/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f;->unregisterObserver(Ljava/lang/Object;)V

    .line 6661
    return-void
.end method
