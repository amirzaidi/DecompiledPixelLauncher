.class public abstract Lcom/google/android/gms/internal/b;
.super Lcom/google/android/gms/internal/f;


# instance fields
.field private final nO:Lcom/google/android/gms/common/api/h;

.field private final nP:Lcom/google/android/gms/common/api/e;

.field private nQ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/a;)V
    .locals 1

    const-string/jumbo v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/f;-><init>(Lcom/google/android/gms/common/api/a;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/b;->nQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/b;->nO:Lcom/google/android/gms/common/api/h;

    iput-object p1, p0, Lcom/google/android/gms/internal/b;->nP:Lcom/google/android/gms/common/api/e;

    return-void
.end method

.method private rn(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final ro()Lcom/google/android/gms/common/api/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nO:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method protected rp(Lcom/google/android/gms/common/api/m;)V
    .locals 0

    return-void
.end method

.method public final rq()Lcom/google/android/gms/common/api/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nP:Lcom/google/android/gms/common/api/e;

    return-object v0
.end method

.method protected abstract rr(Lcom/google/android/gms/common/api/n;)V
.end method

.method public final rs(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/b;->rr(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/b;->rn(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/b;->rn(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected rt()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/g;->sb(Lcom/google/android/gms/internal/b;)V

    goto :goto_0
.end method

.method public final ru(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->gY()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/b;->rY(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rV(Lcom/google/android/gms/common/api/m;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->rp(Lcom/google/android/gms/common/api/m;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public rv(Lcom/google/android/gms/internal/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/b;->nQ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public rw()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/b;->gF(Lcom/google/android/gms/common/api/v;)V

    return-void
.end method
