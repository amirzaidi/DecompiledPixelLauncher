.class Landroid/support/v7/widget/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aL;


# instance fields
.field final synthetic Uo:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 751
    return-void
.end method

.method public adj(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 841
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 842
    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$200(Landroid/support/v7/widget/j;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public adk(I)V
    .locals 4

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aC;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 823
    if-nez v0, :cond_1

    .line 836
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 837
    return-void

    .line 824
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 825
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_3

    .line 833
    :cond_2
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/j;->addFlags(I)V

    goto :goto_0

    .line 826
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_2

    .line 827
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    .line 828
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public adl(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public adm(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 806
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 807
    if-nez v0, :cond_0

    .line 817
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 818
    return-void

    .line 808
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearTmpDetachFlag()V

    goto :goto_0

    .line 808
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    .line 810
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public adn(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 849
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 850
    if-nez v0, :cond_0

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v7/widget/j;->access$300(Landroid/support/v7/widget/j;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 800
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 785
    invoke-virtual {p0}, Landroid/support/v7/widget/aC;->getChildCount()I

    move-result v1

    .line 786
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 796
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aC;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 788
    iget-object v3, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 793
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 761
    if-nez v0, :cond_0

    .line 772
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 776
    return-void

    .line 762
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/aC;->Uo:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 767
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
