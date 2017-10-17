.class Landroid/support/v7/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/x;


# instance fields
.field final synthetic OF:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 11900
    iput-object p1, p0, Landroid/support/v7/widget/c;->OF:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11901
    return-void
.end method


# virtual methods
.method public WH(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11905
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 11906
    iget-object v0, p1, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    if-nez v0, :cond_2

    .line 11911
    :cond_0
    :goto_0
    iput-object v1, p1, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    .line 11912
    invoke-static {p1}, Landroid/support/v7/widget/j;->access$1400(Landroid/support/v7/widget/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11917
    :cond_1
    :goto_1
    return-void

    .line 11906
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    if-nez v0, :cond_0

    .line 11907
    iput-object v1, p1, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    goto :goto_0

    .line 11913
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/c;->OF:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11914
    iget-object v0, p0, Landroid/support/v7/widget/c;->OF:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_1
.end method
