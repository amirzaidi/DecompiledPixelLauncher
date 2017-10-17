.class abstract Lcom/google/android/gms/internal/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic vT:Lcom/google/android/gms/internal/bB;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bB;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/internal/bD;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bJ;-><init>(Lcom/google/android/gms/internal/bB;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bJ;->yr()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v1}, Lcom/google/android/gms/internal/bB;->Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bZ;->BT(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bJ;->vT:Lcom/google/android/gms/internal/bB;

    invoke-static {v1}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract yr()V
.end method
