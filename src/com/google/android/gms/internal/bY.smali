.class Lcom/google/android/gms/internal/bY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field private final wA:Lcom/google/android/gms/common/api/e;

.field private final wB:I

.field private final wC:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/api/e;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bY;->wC:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/android/gms/internal/bY;->wA:Lcom/google/android/gms/common/api/e;

    iput p3, p0, Lcom/google/android/gms/internal/bY;->wB:I

    return-void
.end method

.method static synthetic BP(Lcom/google/android/gms/internal/bY;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bY;->wB:I

    return v0
.end method


# virtual methods
.method public jp(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bY;->wC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bB;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/cu;->gf()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    :goto_0
    const-string/jumbo v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bB;->AF(Lcom/google/android/gms/internal/bB;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Aq(Lcom/google/android/gms/internal/bB;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bY;->wA:Lcom/google/android/gms/common/api/e;

    iget v2, p0, Lcom/google/android/gms/internal/bY;->wB:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/bB;->AD(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_4
    :try_start_2
    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->AI(Lcom/google/android/gms/internal/bB;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
