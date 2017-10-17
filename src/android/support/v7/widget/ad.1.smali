.class public Landroid/support/v7/widget/ad;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# instance fields
.field final RE:Landroid/support/v7/widget/z;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/z;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 103
    iput-object p1, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    .line 104
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    iget-object v0, v0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    iget-object v0, v0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_0
    return v1

    .line 119
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    iget-object v0, v0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 122
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/ad;->RE:Landroid/support/v7/widget/z;

    iget-object v0, v0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/p;->performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
