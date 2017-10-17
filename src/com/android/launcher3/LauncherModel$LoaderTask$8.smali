.class final Lcom/android/launcher3/LauncherModel$LoaderTask$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$deferredExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$validFirstPage:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$validFirstPage:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    .line 1563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1566
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    .line 1567
    if-eqz v1, :cond_1

    .line 1569
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$validFirstPage:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$8;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 1568
    :cond_0
    invoke-interface {v1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 1571
    :cond_1
    return-void
.end method
