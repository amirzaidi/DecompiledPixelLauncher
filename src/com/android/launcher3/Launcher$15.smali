.class final Lcom/android/launcher3/Launcher$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    .prologue
    .line 1606
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 1607
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher$15;->mStarted:Z

    .line 1613
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1615
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$15$1;

    invoke-direct {v1, p0, p0}, Lcom/android/launcher3/Launcher$15$1;-><init>(Lcom/android/launcher3/Launcher$15;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1624
    return-void
.end method
