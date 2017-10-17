.class final Lcom/android/launcher3/Launcher$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/Launcher$14;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher$14;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$14$1;->this$1:Lcom/android/launcher3/Launcher$14;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$14$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/Launcher$14$1;->this$1:Lcom/android/launcher3/Launcher$14;

    iget-object v0, v0, Lcom/android/launcher3/Launcher$14;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/launcher3/Launcher$14$1;->this$1:Lcom/android/launcher3/Launcher$14;

    iget-object v0, v0, Lcom/android/launcher3/Launcher$14;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/android/launcher3/Launcher$14$1;->this$1:Lcom/android/launcher3/Launcher$14;

    iget-object v0, v0, Lcom/android/launcher3/Launcher$14;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1647
    iget-object v1, p0, Lcom/android/launcher3/Launcher$14$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 1646
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1649
    :cond_0
    return-void
.end method
