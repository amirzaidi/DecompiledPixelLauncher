.class public final Lcom/google/android/gms/internal/cw;
.super Lcom/google/android/gms/internal/f;


# instance fields
.field private xJ:I

.field private xK:Z


# direct methods
.method private CE(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/support/v4/a/t;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v4/a/t;->aib(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/cw;->CD(Lcom/google/android/gms/internal/bW;Lcom/google/android/gms/common/ConnectionResult;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected CB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/E;
    .locals 2

    const/4 v0, 0x0

    monitor-enter v0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cw;->CE(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/a/t;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/E;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/E;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V

    :goto_0
    const/4 v1, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/D;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/D;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public CC()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/a/t;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public CD(Lcom/google/android/gms/internal/bW;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    monitor-enter v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/cw;->xJ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cw;->xJ:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/cw;->xJ:I

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cw;->xK:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cw;->xK:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/api/Status;->hn:Lcom/google/android/gms/common/api/Status;

    move-object v1, v0

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v4/a/t;->size()I

    move-result v0

    if-eq v0, v2, :cond_3

    new-instance v0, Lcom/google/android/gms/common/api/E;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/E;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cw;->rV(Lcom/google/android/gms/common/api/m;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/api/D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/D;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method protected synthetic rY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cw;->CB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/E;

    move-result-object v0

    return-object v0
.end method
