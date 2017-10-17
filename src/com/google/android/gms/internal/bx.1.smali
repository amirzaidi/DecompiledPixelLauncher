.class Lcom/google/android/gms/internal/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic uP:Lcom/google/android/gms/internal/bp;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->uP:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->uP:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zd(Lcom/google/android/gms/internal/bp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->uP:Lcom/google/android/gms/internal/bp;

    invoke-static {v0}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->uP:Lcom/google/android/gms/internal/bp;

    invoke-static {v1}, Lcom/google/android/gms/internal/bp;->zg(Lcom/google/android/gms/internal/bp;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
