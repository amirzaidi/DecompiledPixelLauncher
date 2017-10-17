.class final Lcom/android/launcher3/model/LoaderResults$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;

.field final synthetic val$deferredExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$validFirstPage:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$3;->this$0:Lcom/android/launcher3/model/LoaderResults;

    iput-boolean p2, p0, Lcom/android/launcher3/model/LoaderResults$3;->val$validFirstPage:Z

    iput-object p3, p0, Lcom/android/launcher3/model/LoaderResults$3;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults$3;->this$0:Lcom/android/launcher3/model/LoaderResults;

    invoke-static {v0}, Lcom/android/launcher3/model/LoaderResults;->-get0(Lcom/android/launcher3/model/LoaderResults;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 169
    if-eqz v0, :cond_1

    .line 171
    iget-boolean v2, p0, Lcom/android/launcher3/model/LoaderResults$3;->val$validFirstPage:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults$3;->val$deferredExecutor:Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 170
    :cond_0
    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 173
    :cond_1
    return-void
.end method
