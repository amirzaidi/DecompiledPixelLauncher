.class public Lcom/android/launcher3/util/LooperIdleLock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Ljava/lang/Runnable;


# instance fields
.field private mIsLocked:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    .line 36
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v0, p2}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public awaitLocked(J)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    return v0

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mIsLocked:Z

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/util/LooperIdleLock;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 56
    return v2

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 48
    return-void
.end method
