.class public Lcom/google/android/gms/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/v;


# instance fields
.field private nS:Z

.field private nT:Lcom/google/android/gms/common/api/f;

.field private nU:Lcom/google/android/gms/common/api/Status;

.field private nV:Lcom/google/android/gms/common/api/u;

.field private final nW:Ljava/lang/ref/WeakReference;

.field private final nX:Lcom/google/android/gms/internal/cv;

.field private volatile nY:Lcom/google/android/gms/common/api/w;

.field private nZ:Lcom/google/android/gms/internal/d;

.field private final oa:Ljava/lang/Object;


# direct methods
.method static synthetic rA(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/d;->rI(Lcom/google/android/gms/common/api/m;)V

    return-void
.end method

.method private rB()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/d;->nY:Lcom/google/android/gms/common/api/w;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic rC(Lcom/google/android/gms/internal/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->oa:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic rD(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/d;->rE(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private rE(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/d;->oa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/d;->nU:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nU:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/d;->rJ(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic rF(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/cv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nX:Lcom/google/android/gms/internal/cv;

    return-object v0
.end method

.method static synthetic rG(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/internal/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nZ:Lcom/google/android/gms/internal/d;

    return-object v0
.end method

.method private rI(Lcom/google/android/gms/common/api/m;)V
    .locals 5

    instance-of v1, p1, Lcom/google/android/gms/common/api/y;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/y;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/y;->hq()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TransformedResultImpl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private rJ(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/d;->oa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;->rB()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/u;->hj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string/jumbo v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/d;->nZ:Lcom/google/android/gms/internal/d;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/d;->rE(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nY:Lcom/google/android/gms/common/api/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/w;->hl(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic rK(Lcom/google/android/gms/internal/d;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nW:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private rx()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/d;->nS:Z

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nU:Lcom/google/android/gms/common/api/Status;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nT:Lcom/google/android/gms/common/api/f;

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nY:Lcom/google/android/gms/common/api/w;

    if-nez v0, :cond_0

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/a;->gn(Lcom/google/android/gms/internal/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/d;->nS:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nU:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/d;->rJ(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nT:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f;->gF(Lcom/google/android/gms/common/api/v;)V

    goto :goto_1
.end method

.method static synthetic rz(Lcom/google/android/gms/internal/d;)Lcom/google/android/gms/common/api/u;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    return-object v0
.end method


# virtual methods
.method public hk(Lcom/google/android/gms/common/api/m;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/d;->oa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/m;->gV()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->gY()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/common/api/m;->gV()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/d;->rE(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/d;->rI(Lcom/google/android/gms/common/api/m;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nV:Lcom/google/android/gms/common/api/u;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;->rB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->nY:Lcom/google/android/gms/common/api/w;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/w;->hm(Lcom/google/android/gms/common/api/m;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/bN;->Bu()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/bn;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/d;Lcom/google/android/gms/common/api/m;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public rH(Lcom/google/android/gms/common/api/f;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/d;->oa:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/d;->nT:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0}, Lcom/google/android/gms/internal/d;->rx()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ry()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/d;->nY:Lcom/google/android/gms/common/api/w;

    return-void
.end method
