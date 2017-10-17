.class Lcom/google/android/gms/internal/bS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cb;


# instance fields
.field final synthetic vR:Lcom/google/android/gms/internal/bv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/bD;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bS;-><init>(Lcom/google/android/gms/internal/bv;)V

    return-void
.end method


# virtual methods
.method public Bs(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bv;->yW(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->ze(Lcom/google/android/gms/internal/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v1}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Bt(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/bv;->yS(Lcom/google/android/gms/internal/bv;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->ks:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bv;->yW(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->ze(Lcom/google/android/gms/internal/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v1}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public Bu(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->yY(Lcom/google/android/gms/internal/bv;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bv;->yL(Lcom/google/android/gms/internal/bv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/bv;->yR(Lcom/google/android/gms/internal/bv;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->yP(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->yP(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bv;->yL(Lcom/google/android/gms/internal/bv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zm(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->BY(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bS;->vR:Lcom/google/android/gms/internal/bv;

    invoke-static {v1}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
