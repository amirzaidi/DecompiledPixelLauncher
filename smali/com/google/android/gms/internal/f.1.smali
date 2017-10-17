.class public abstract Lcom/google/android/gms/internal/f;
.super Lcom/google/android/gms/common/api/c;


# static fields
.field static final nA:Ljava/lang/ThreadLocal;


# instance fields
.field private volatile nB:Z

.field private nC:Z

.field private nD:Lcom/google/android/gms/common/api/a;

.field private nE:Z

.field private nF:Lcom/google/android/gms/internal/bu;

.field private nG:Ljava/lang/Integer;

.field protected final nH:Ljava/lang/ref/WeakReference;

.field private nI:Z

.field private volatile nJ:Lcom/google/android/gms/internal/d;

.field private nK:Lcom/google/android/gms/common/api/b;

.field private nL:Lcom/google/android/gms/common/internal/zzr;

.field private final nM:Ljava/util/concurrent/CountDownLatch;

.field private final nN:Ljava/util/ArrayList;

.field protected final nO:Lcom/google/android/gms/internal/bG;

.field private final nP:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/f;->nA:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nM:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    new-instance v0, Lcom/google/android/gms/internal/bG;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bG;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nH:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nM:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    new-instance v0, Lcom/google/android/gms/internal/bG;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/bG;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nH:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nM:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/bG;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/bG;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nH:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/d;->du()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method private get()Lcom/google/android/gms/common/api/b;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/f;->nB:Z

    if-eqz v3, :cond_0

    :goto_0
    const-string/jumbo v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v0

    const-string/jumbo v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/f;->nB:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rr()V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private rP(Lcom/google/android/gms/common/api/b;)V
    .locals 4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    iput-object v2, p0, Lcom/google/android/gms/internal/f;->nL:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nM:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nC:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bG;->zV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    iget-object v2, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0}, Lcom/google/android/gms/internal/f;->get()Lcom/google/android/gms/common/api/b;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/bG;->zW(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    instance-of v0, v0, Lcom/google/android/gms/common/api/y;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bu;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/bu;-><init>(Lcom/google/android/gms/internal/f;Lcom/google/android/gms/internal/cn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nF:Lcom/google/android/gms/internal/bu;

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/u;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/u;->eu(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1
.end method

.method public static rX(Lcom/google/android/gms/common/api/b;)V
    .locals 5

    instance-of v1, p0, Lcom/google/android/gms/common/api/y;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/y;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/y;->eC()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unable to release "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "BasePendingResult"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic rY(Lcom/google/android/gms/internal/f;)Lcom/google/android/gms/common/api/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nC:Z

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nL:Lcom/google/android/gms/common/internal/zzr;

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/f;->rX(Lcom/google/android/gms/common/api/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nC:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->dR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/f;->rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/f;->rP(Lcom/google/android/gms/common/api/b;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nL:Lcom/google/android/gms/common/internal/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzr;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final ds(Lcom/google/android/gms/common/api/a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/f;->nB:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    const-string/jumbo v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/f;->nJ:Lcom/google/android/gms/internal/d;

    if-eqz v2, :cond_2

    :goto_1
    const-string/jumbo v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    :goto_2
    monitor-exit v3

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/f;->nD:Lcom/google/android/gms/common/api/a;

    monitor-exit v3

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    monitor-exit v3

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nO:Lcom/google/android/gms/internal/bG;

    invoke-direct {p0}, Lcom/google/android/gms/internal/f;->get()Lcom/google/android/gms/common/api/b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/bG;->zW(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/b;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rM()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    return-void

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/f;->nA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public rN()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nC:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final rO(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/f;->rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/f;->rT(Lcom/google/android/gms/common/api/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->nE:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rQ()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nG:Ljava/lang/Integer;

    return-object v0
.end method

.method public rR()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->cancel()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rN()Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nI:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final rT(Lcom/google/android/gms/common/api/b;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/f;->nE:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/f;->rX(Lcom/google/android/gms/common/api/b;)V

    monitor-exit v3

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/f;->nC:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    const-string/jumbo v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/f;->nB:Z

    if-eqz v2, :cond_4

    :goto_2
    const-string/jumbo v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/f;->rP(Lcom/google/android/gms/common/api/b;)V

    monitor-exit v3

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rS()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final rU()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nM:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final rV(Lcom/google/android/gms/common/api/u;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/f;->nB:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    :goto_1
    const-string/jumbo v0, "Callback cannot be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/f;->nP:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f;->rU()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v1

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/f;->nK:Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/u;->eu(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract rW(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;
.end method

.method protected rr()V
    .locals 0

    return-void
.end method
