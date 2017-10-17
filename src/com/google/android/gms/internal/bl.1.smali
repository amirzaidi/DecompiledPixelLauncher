.class abstract Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;


# instance fields
.field private final uk:Lcom/google/android/gms/internal/ci;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bl;->uk:Lcom/google/android/gms/internal/ci;

    return-void
.end method


# virtual methods
.method public final yH(Lcom/google/android/gms/internal/bZ;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/bZ;->BR(Lcom/google/android/gms/internal/bZ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/bZ;->BW(Lcom/google/android/gms/internal/bZ;)Lcom/google/android/gms/internal/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bl;->uk:Lcom/google/android/gms/internal/ci;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bl;->yq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/internal/bZ;->BR(Lcom/google/android/gms/internal/bZ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/bZ;->BR(Lcom/google/android/gms/internal/bZ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/internal/bZ;->BR(Lcom/google/android/gms/internal/bZ;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract yq()V
.end method
