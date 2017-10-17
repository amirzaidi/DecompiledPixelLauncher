.class Landroid/support/v7/widget/u;
.super Landroid/support/v7/widget/h;
.source "SourceFile"


# instance fields
.field final synthetic QV:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5045
    iput-object p1, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/h;-><init>()V

    .line 5046
    return-void
.end method


# virtual methods
.method YY()V
    .locals 2

    .prologue
    .line 5092
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-nez v0, :cond_1

    .line 5095
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5096
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5098
    :goto_0
    return-void

    .line 5092
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5093
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->agG(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 5050
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5051
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->Qv:Z

    .line 5053
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 5054
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5057
    :goto_0
    return-void

    .line 5055
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 5061
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5062
    iget-object v0, p0, Landroid/support/v7/widget/u;->QV:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/C;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5065
    :goto_0
    return-void

    .line 5063
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/u;->YY()V

    goto :goto_0
.end method
