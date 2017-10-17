.class public Landroid/support/v7/widget/z;
.super Landroid/support/v4/view/c;
.source "SourceFile"


# instance fields
.field final Rf:Landroid/support/v4/view/c;

.field final mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 37
    new-instance v0, Landroid/support/v7/widget/ad;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ad;-><init>(Landroid/support/v7/widget/z;)V

    iput-object v0, p0, Landroid/support/v7/widget/z;->Rf:Landroid/support/v4/view/c;

    .line 38
    return-void
.end method


# virtual methods
.method public Zq()Landroid/support/v4/view/c;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/z;->Rf:Landroid/support/v4/view/c;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 68
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 69
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/p;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 59
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->afd(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/p;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/a/a;)V

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/z;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_0
    return v1

    .line 47
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/p;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v7/widget/z;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
