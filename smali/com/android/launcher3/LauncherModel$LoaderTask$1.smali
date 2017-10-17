.class final Lcom/android/launcher3/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    .line 623
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 625
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
