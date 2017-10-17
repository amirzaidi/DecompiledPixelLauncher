.class final Lcom/android/launcher3/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$t:J

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1580
    if-eqz v0, :cond_0

    .line 1581
    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->finishBindingItems()V

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 1587
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1589
    :try_start_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1590
    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-wrap2(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1588
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1592
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1602
    :cond_2
    return-void
.end method
