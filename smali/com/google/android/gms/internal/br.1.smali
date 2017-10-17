.class abstract Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# instance fields
.field private final ue:Lcom/google/android/gms/internal/co;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/co;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->ue:Lcom/google/android/gms/internal/co;

    return-void
.end method


# virtual methods
.method public final yI(Lcom/google/android/gms/internal/cf;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/cf;->BS(Lcom/google/android/gms/internal/cf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cf;->BX(Lcom/google/android/gms/internal/cf;)Lcom/google/android/gms/internal/co;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/br;->ue:Lcom/google/android/gms/internal/co;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/br;->yr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/google/android/gms/internal/cf;->BS(Lcom/google/android/gms/internal/cf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cf;->BS(Lcom/google/android/gms/internal/cf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/internal/cf;->BS(Lcom/google/android/gms/internal/cf;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract yr()V
.end method
