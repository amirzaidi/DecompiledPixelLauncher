.class public abstract Lcom/google/android/gms/internal/b;
.super Lcom/google/android/gms/internal/f;


# instance fields
.field private final nm:Lcom/google/android/gms/common/api/j;

.field private final nn:Lcom/google/android/gms/common/api/h;

.field private no:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/d;)V
    .locals 1

    const-string/jumbo v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/f;-><init>(Lcom/google/android/gms/common/api/d;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/b;->no:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/b;->nm:Lcom/google/android/gms/common/api/j;

    iput-object p1, p0, Lcom/google/android/gms/internal/b;->nn:Lcom/google/android/gms/common/api/h;

    return-void
.end method

.method private rl(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final rm()Lcom/google/android/gms/common/api/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nm:Lcom/google/android/gms/common/api/j;

    return-object v0
.end method

.method protected rn(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    return-void
.end method

.method public final ro()Lcom/google/android/gms/common/api/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nn:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method protected abstract rp(Lcom/google/android/gms/common/api/o;)V
.end method

.method public final rq(Lcom/google/android/gms/common/api/o;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/b;->rp(Lcom/google/android/gms/common/api/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/b;->rl(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/b;->rl(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected rr()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->no:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/g;->rZ(Lcom/google/android/gms/internal/b;)V

    goto :goto_0
.end method

.method public final rs(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/b;->rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rT(Lcom/google/android/gms/common/api/b;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rn(Lcom/google/android/gms/common/api/b;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public rt(Lcom/google/android/gms/internal/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->no:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public ru()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->ds(Lcom/google/android/gms/common/api/a;)V

    return-void
.end method
