.class Landroid/support/v7/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/w;


# instance fields
.field final synthetic QB:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Yf(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->Xy(Landroid/support/v7/widget/j;)V

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    .line 524
    return-void
.end method

.method public Yg(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    .line 529
    return-void
.end method

.method public Yh(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/b;->Wt(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/b;->WF(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method public Yi(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/V;->QB:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/p;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/s;)V

    .line 550
    return-void
.end method
