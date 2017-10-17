.class Landroid/support/v7/widget/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/am;


# instance fields
.field final synthetic SL:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abr(II)V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 917
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 918
    return-void
.end method

.method public abs(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 867
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v0, Landroid/support/v7/widget/e;->OH:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/e;->OH:I

    .line 870
    return-void
.end method

.method public abt(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aH;->aco(Landroid/support/v7/widget/aK;)V

    .line 912
    return-void
.end method

.method public abu(II)V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 924
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 925
    return-void
.end method

.method public abv(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 884
    return-void
.end method

.method public abw(I)Landroid/support/v7/widget/j;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 850
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 851
    if-eqz v0, :cond_0

    .line 856
    iget-object v1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 862
    return-object v0

    .line 852
    :cond_0
    return-object v3

    .line 860
    :cond_1
    return-object v3
.end method

.method public abx(II)V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 876
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 877
    return-void
.end method

.method public aby(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aH;->aco(Landroid/support/v7/widget/aK;)V

    .line 889
    return-void
.end method

.method aco(Landroid/support/v7/widget/aK;)V
    .locals 5

    .prologue
    .line 892
    iget v0, p1, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 907
    :goto_0
    :pswitch_0
    return-void

    .line 894
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/p;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 897
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/p;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 900
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    iget-object v4, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/p;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 904
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->SL:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->SQ:I

    iget v3, p1, Landroid/support/v7/widget/aK;->SR:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/p;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
