.class Landroid/support/v7/widget/aH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/am;


# instance fields
.field final synthetic Uu:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acs(II)V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 928
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 929
    return-void
.end method

.method public act(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v0, Landroid/support/v7/widget/e;->Ql:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/e;->Ql:I

    .line 881
    return-void
.end method

.method public acu(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 922
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aH;->adp(Landroid/support/v7/widget/aK;)V

    .line 923
    return-void
.end method

.method public acv(II)V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 936
    return-void
.end method

.method public acw(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 894
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 895
    return-void
.end method

.method public acx(I)Landroid/support/v7/widget/j;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 861
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_0

    .line 867
    iget-object v1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    return-object v0

    .line 863
    :cond_0
    return-object v3

    .line 871
    :cond_1
    return-object v3
.end method

.method public acy(II)V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 887
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 888
    return-void
.end method

.method public acz(Landroid/support/v7/widget/aK;)V
    .locals 0

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aH;->adp(Landroid/support/v7/widget/aK;)V

    .line 900
    return-void
.end method

.method adp(Landroid/support/v7/widget/aK;)V
    .locals 5

    .prologue
    .line 903
    iget v0, p1, Landroid/support/v7/widget/aK;->Ux:I

    packed-switch v0, :pswitch_data_0

    .line 918
    :goto_0
    :pswitch_0
    return-void

    .line 905
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->Uz:I

    iget v3, p1, Landroid/support/v7/widget/aK;->UA:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/p;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 908
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->Uz:I

    iget v3, p1, Landroid/support/v7/widget/aK;->UA:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/p;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 911
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->Uz:I

    iget v3, p1, Landroid/support/v7/widget/aK;->UA:I

    iget-object v4, p1, Landroid/support/v7/widget/aK;->Uy:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/p;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 915
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aH;->Uu:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/aK;->Uz:I

    iget v3, p1, Landroid/support/v7/widget/aK;->UA:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/p;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 903
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
