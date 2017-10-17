.class Lcom/google/android/gms/internal/bD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic uJ:Lcom/google/android/gms/internal/bv;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bD;->uJ:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bD;->uJ:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->ze(Lcom/google/android/gms/internal/bv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bD;->uJ:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bD;->uJ:Lcom/google/android/gms/internal/bv;

    invoke-static {v1}, Lcom/google/android/gms/internal/bv;->zh(Lcom/google/android/gms/internal/bv;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
