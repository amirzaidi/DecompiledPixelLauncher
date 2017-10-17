.class Landroid/support/v7/widget/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic SD:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Landroid/support/v7/widget/aA;->SD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v7/widget/aA;->SD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 502
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/aA;->SD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 503
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aA;->SD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->Wq()V

    goto :goto_0
.end method
