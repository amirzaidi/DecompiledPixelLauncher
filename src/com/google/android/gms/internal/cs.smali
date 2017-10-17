.class Lcom/google/android/gms/internal/cs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bV;


# instance fields
.field final synthetic xg:Lcom/google/android/gms/internal/bp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/bp;)V

    return-void
.end method


# virtual methods
.method public Br(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bp;->zm(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zd(Lcom/google/android/gms/internal/bp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Bs(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->nk:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bp;->zm(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zd(Lcom/google/android/gms/internal/bp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Bt(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->yX(Lcom/google/android/gms/internal/bp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bp;->yK(Lcom/google/android/gms/internal/bp;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->yT(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bZ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->BX(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bp;->yK(Lcom/google/android/gms/internal/bp;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/bp;->yQ(Lcom/google/android/gms/internal/bp;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cs;->xg:Lcom/google/android/gms/internal/bp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
