.class public Lcom/google/android/gms/internal/bG;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static vB:Lcom/google/android/gms/internal/bG;

.field private static final vG:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final vA:Landroid/util/SparseArray;

.field private final vC:Ljava/util/Set;

.field private final vD:Ljava/lang/ref/ReferenceQueue;

.field private final vE:Ljava/util/Map;

.field private vF:J

.field private vH:J

.field private vI:J

.field private final vJ:Lcom/google/android/gms/common/a;

.field private vK:I

.field private vx:Lcom/google/android/gms/internal/bR;

.field private vy:Lcom/google/android/gms/internal/bP;

.field private final vz:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bG;->vG:Ljava/lang/Object;

    return-void
.end method

.method static synthetic AP(Lcom/google/android/gms/internal/bG;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/bG;->vK:I

    return p1
.end method

.method static synthetic AR(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/internal/bP;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vy:Lcom/google/android/gms/internal/bP;

    return-object v0
.end method

.method static synthetic AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic AT(Lcom/google/android/gms/internal/bG;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bG;->vF:J

    return-wide v0
.end method

.method static synthetic AU(Lcom/google/android/gms/internal/bG;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bG;->vI:J

    return-wide v0
.end method

.method private AW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bw;->zC()V

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zI(Lcom/google/android/gms/internal/bw;)V

    goto :goto_0
.end method

.method static synthetic AX(Lcom/google/android/gms/internal/bG;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private AY(Lcom/google/android/gms/internal/bC;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/bC;->vo:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bw;->zu(Lcom/google/android/gms/internal/bC;)V

    return-void
.end method

.method static synthetic AZ(Lcom/google/android/gms/internal/bG;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bG;->vH:J

    return-wide v0
.end method

.method private Ba(Lcom/google/android/gms/common/api/C;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hx()Lcom/google/android/gms/internal/bW;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/bw;->zH(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zI(Lcom/google/android/gms/internal/bw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vz:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/cp;

    iget-object v2, p0, Lcom/google/android/gms/internal/bG;->vD:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/cp;-><init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/C;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vx:Lcom/google/android/gms/internal/bR;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bR;

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vD:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/bG;->vz:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bR;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bG;->vx:Lcom/google/android/gms/internal/bR;

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vx:Lcom/google/android/gms/internal/bR;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bR;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/bw;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/bw;-><init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/C;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vx:Lcom/google/android/gms/internal/bR;

    invoke-static {v0}, Lcom/google/android/gms/internal/bR;->BE(Lcom/google/android/gms/internal/bR;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method static synthetic Bb(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vJ:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method private Bc(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "onCleanupLeakInternal received for unknown instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "GoogleApiManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bw;->zs(I)V

    goto :goto_0
.end method

.method static synthetic Be(Lcom/google/android/gms/internal/bG;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vz:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic Bg(Lcom/google/android/gms/internal/bG;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vC:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic Bh(Lcom/google/android/gms/internal/bG;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bG;->vK:I

    return v0
.end method

.method public static Bi()Lcom/google/android/gms/internal/bG;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/bG;->vG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/bG;->vB:Lcom/google/android/gms/internal/bG;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic Bj()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bG;->vG:Ljava/lang/Object;

    return-object v0
.end method

.method private Bl(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "onRelease received for unknown instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "GoogleApiManager"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bw;->zB(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1
.end method

.method static synthetic Bm(Lcom/google/android/gms/internal/bG;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public AO(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/bG;->AV(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public AQ(Lcom/google/android/gms/internal/bP;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/bG;->vG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vy:Lcom/google/android/gms/internal/bP;

    if-eq p1, v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bG;->vy:Lcom/google/android/gms/internal/bP;

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vC:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method AV(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vJ:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/a;->qo(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vJ:Lcom/google/android/gms/common/a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->qp(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method public Bd(IZ)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    if-nez p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Bf()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public Bk(Lcom/google/android/gms/internal/cw;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cw;->CC()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    iget-object v1, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bw;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->zM()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->zJ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/bw;->zr(Lcom/google/android/gms/internal/cw;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cw;->cancel()V

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->nk:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cw;->CD(Lcom/google/android/gms/internal/bW;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/bw;->zJ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cw;->CD(Lcom/google/android/gms/internal/bW;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GoogleApiManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/cw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bG;->Bk(Lcom/google/android/gms/internal/cw;)V

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/C;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/bG;->Ba(Lcom/google/android/gms/common/api/C;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bG;->AW()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bG;->Bc(I)V

    goto :goto_0

    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eq v3, v1, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/bG;->Bl(IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bG;->AY(Lcom/google/android/gms/internal/bC;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vA:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v3, "Error resolution was canceled by the user."

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bw;->zP(Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zN(Lcom/google/android/gms/internal/bw;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zw(Lcom/google/android/gms/internal/bw;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bG;->vE:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-static {v0}, Lcom/google/android/gms/internal/bw;->zF(Lcom/google/android/gms/internal/bw;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
