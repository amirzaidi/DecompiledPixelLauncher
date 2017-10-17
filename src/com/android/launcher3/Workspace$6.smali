.class final Lcom/android/launcher3/Workspace$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1820
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0, v2}, Lcom/android/launcher3/Workspace;->-set3(Lcom/android/launcher3/Workspace;Z)Z

    .line 1822
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 1823
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set1(Lcom/android/launcher3/Workspace;I)I

    .line 1824
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-wrap0(Lcom/android/launcher3/Workspace;)V

    .line 1826
    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/launcher3/Workspace$6;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set3(Lcom/android/launcher3/Workspace;Z)Z

    .line 1814
    return-void
.end method
