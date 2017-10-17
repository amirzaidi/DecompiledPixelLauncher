.class Landroid/support/v7/widget/u;
.super Landroid/support/v7/widget/h;
.source "SourceFile"


# instance fields
.field final synthetic Po:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5007
    iput-object p1, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/h;-><init>()V

    .line 5008
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 5012
    iget-object v0, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5013
    iget-object v0, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OP:Z

    .line 5015
    iget-object v0, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 5016
    iget-object v0, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5019
    :goto_0
    return-void

    .line 5017
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u;->Po:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
