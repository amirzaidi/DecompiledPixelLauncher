.class final Lcom/android/launcher3/LauncherModel$LoaderTask$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$13;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$13;->val$r:Ljava/lang/Runnable;

    .line 1719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$13;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    if-eqz v0, :cond_0

    .line 1726
    sget-object v1, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1727
    :try_start_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->mBindCompleteRunnables:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$13;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1732
    :goto_0
    return-void

    .line 1726
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$13;->val$r:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-wrap2(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
