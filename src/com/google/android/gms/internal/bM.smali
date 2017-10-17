.class public Lcom/google/android/gms/internal/bM;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final vA:Ljava/lang/Object;

.field private static vv:Lcom/google/android/gms/internal/bM;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private vB:J

.field private vC:J

.field private final vD:Lcom/google/android/gms/common/a;

.field private vE:I

.field private vr:Lcom/google/android/gms/internal/bX;

.field private vs:Lcom/google/android/gms/internal/bV;

.field private final vt:Landroid/util/SparseArray;

.field private final vu:Landroid/util/SparseArray;

.field private final vw:Ljava/util/Set;

.field private final vx:Ljava/lang/ref/ReferenceQueue;

.field private final vy:Ljava/util/Map;

.field private vz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bM;->vA:Ljava/lang/Object;

    return-void
.end method

.method static synthetic AQ(Lcom/google/android/gms/internal/bM;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/bM;->vE:I

    return p1
.end method

.method static synthetic AS(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/internal/bV;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vs:Lcom/google/android/gms/internal/bV;

    return-object v0
.end method

.method static synthetic AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic AU(Lcom/google/android/gms/internal/bM;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bM;->vz:J

    return-wide v0
.end method

.method static synthetic AV(Lcom/google/android/gms/internal/bM;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bM;->vC:J

    return-wide v0
.end method

.method private AX()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bC;->zD()V

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zJ(Lcom/google/android/gms/internal/bC;)V

    goto :goto_0
.end method

.method static synthetic AY(Lcom/google/android/gms/internal/bM;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private AZ(Lcom/google/android/gms/internal/bI;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/bI;->vi:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bC;->zv(Lcom/google/android/gms/internal/bI;)V

    return-void
.end method

.method static synthetic Ba(Lcom/google/android/gms/internal/bM;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bM;->vB:J

    return-wide v0
.end method

.method private Bb(Lcom/google/android/gms/common/api/C;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eJ()Lcom/google/android/gms/internal/cc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/bC;->zI(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zJ(Lcom/google/android/gms/internal/bC;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vt:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/cu;

    iget-object v2, p0, Lcom/google/android/gms/internal/bM;->vx:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/cu;-><init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/C;ILjava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vr:Lcom/google/android/gms/internal/bX;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bX;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vx:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/bM;->vt:Landroid/util/SparseArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/bX;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bM;->vr:Lcom/google/android/gms/internal/bX;

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vr:Lcom/google/android/gms/internal/bX;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bX;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/bC;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/bC;-><init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/C;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vr:Lcom/google/android/gms/internal/bX;

    invoke-static {v0}, Lcom/google/android/gms/internal/bX;->BF(Lcom/google/android/gms/internal/bX;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method static synthetic Bc(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vD:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method private Bd(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bC;->zt(I)V

    goto :goto_0
.end method

.method static synthetic Bf(Lcom/google/android/gms/internal/bM;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vt:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic Bh(Lcom/google/android/gms/internal/bM;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vw:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic Bi(Lcom/google/android/gms/internal/bM;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bM;->vE:I

    return v0
.end method

.method public static Bj()Lcom/google/android/gms/internal/bM;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/bM;->vA:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/bM;->vv:Lcom/google/android/gms/internal/bM;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic Bk()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/bM;->vA:Ljava/lang/Object;

    return-object v0
.end method

.method private Bm(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

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
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bC;->zC(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1
.end method

.method static synthetic Bn(Lcom/google/android/gms/internal/bM;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public AP(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/bM;->AW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public AR(Lcom/google/android/gms/internal/bV;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/bM;->vA:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vs:Lcom/google/android/gms/internal/bV;

    if-eq p1, v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bM;->vs:Lcom/google/android/gms/internal/bV;

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vw:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method AW(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vD:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/a;->nB(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vD:Lcom/google/android/gms/common/a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->nC(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method public Be(IZ)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

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

.method public Bg()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public Bl(Lcom/google/android/gms/internal/cC;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cC;->CD()Ljava/util/Set;

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

    check-cast v0, Lcom/google/android/gms/internal/cc;

    iget-object v1, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bC;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bC;->zN()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bC;->zK()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/bC;->zs(Lcom/google/android/gms/internal/cC;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cC;->cancel()V

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->ks:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cC;->CE(Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/bC;->zK()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/cC;->CE(Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/common/ConnectionResult;)V

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

    check-cast v0, Lcom/google/android/gms/internal/cC;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bM;->Bl(Lcom/google/android/gms/internal/cC;)V

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/C;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/bM;->Bb(Lcom/google/android/gms/common/api/C;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bM;->AX()V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bM;->Bd(I)V

    goto :goto_0

    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eq v3, v1, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/bM;->Bm(IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bM;->AZ(Lcom/google/android/gms/internal/bI;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vu:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v3, "Error resolution was canceled by the user."

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bC;->zQ(Lcom/google/android/gms/internal/bC;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zO(Lcom/google/android/gms/internal/bC;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zx(Lcom/google/android/gms/internal/bC;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bM;->vy:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-static {v0}, Lcom/google/android/gms/internal/bC;->zG(Lcom/google/android/gms/internal/bC;)V

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
