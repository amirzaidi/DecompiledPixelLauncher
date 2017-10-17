.class Landroid/support/v7/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Rf:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 335
    :cond_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 346
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 347
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 340
    return-void

    .line 343
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aa;->Rf:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 344
    return-void
.end method
