.class public Lcom/android/launcher3/DeferredHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Lcom/android/launcher3/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field mQueue:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 37
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 38
    new-instance v0, Lcom/android/launcher3/DeferredHandler$Impl;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DeferredHandler$Impl;-><init>(Lcom/android/launcher3/DeferredHandler;)V

    iput-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mHandler:Lcom/android/launcher3/DeferredHandler$Impl;

    .line 74
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 95
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v2, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 104
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 105
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 107
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/DeferredHandler;->scheduleNextLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public postIdle(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/launcher3/DeferredHandler$IdleRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/DeferredHandler$IdleRunnable;-><init>(Lcom/android/launcher3/DeferredHandler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method scheduleNextLocked()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 112
    instance-of v0, v0, Lcom/android/launcher3/DeferredHandler$IdleRunnable;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/android/launcher3/DeferredHandler;->mHandler:Lcom/android/launcher3/DeferredHandler$Impl;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeferredHandler;->mHandler:Lcom/android/launcher3/DeferredHandler$Impl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
