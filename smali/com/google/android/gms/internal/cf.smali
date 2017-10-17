.class public Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bx;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final wA:Ljava/util/concurrent/locks/Condition;

.field private final wB:Ljava/util/concurrent/locks/Lock;

.field final wC:Lcom/google/android/gms/internal/cA;

.field final wD:Lcom/google/android/gms/internal/cb;

.field private final wE:Lcom/google/android/gms/internal/bR;

.field final wF:Ljava/util/Map;

.field final wG:Ljava/util/Map;

.field wH:I

.field final wI:Ljava/util/Map;

.field final wJ:Lcom/google/android/gms/common/internal/a;

.field final wK:Lcom/google/android/gms/common/api/l;

.field private final wx:Lcom/google/android/gms/common/f;

.field private volatile wy:Lcom/google/android/gms/internal/co;

.field private wz:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cA;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/l;Ljava/util/ArrayList;Lcom/google/android/gms/internal/cb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wz:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/cf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/cf;->wx:Lcom/google/android/gms/common/f;

    iput-object p6, p0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/cf;->wJ:Lcom/google/android/gms/common/internal/a;

    iput-object p8, p0, Lcom/google/android/gms/internal/cf;->wI:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/cf;->wK:Lcom/google/android/gms/common/api/l;

    iput-object p2, p0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iput-object p11, p0, Lcom/google/android/gms/internal/cf;->wD:Lcom/google/android/gms/internal/cb;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bR;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/bR;-><init>(Lcom/google/android/gms/internal/cf;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wE:Lcom/google/android/gms/internal/bR;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wA:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/cf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bF;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bF;->zS(Lcom/google/android/gms/internal/cf;)V

    goto :goto_0
.end method

.method static synthetic BS(Lcom/google/android/gms/internal/cf;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic BX(Lcom/google/android/gms/internal/cf;)Lcom/google/android/gms/internal/co;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    return-object v0
.end method


# virtual methods
.method BR(Lcom/google/android/gms/internal/br;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wE:Lcom/google/android/gms/internal/bR;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bR;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wE:Lcom/google/android/gms/internal/bR;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bR;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public BT(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->Au(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BU(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wE:Lcom/google/android/gms/internal/bR;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bR;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wE:Lcom/google/android/gms/internal/bR;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bR;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method BV()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bH;

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->wJ:Lcom/google/android/gms/common/internal/a;

    iget-object v3, p0, Lcom/google/android/gms/internal/cf;->wI:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/cf;->wx:Lcom/google/android/gms/common/f;

    iget-object v5, p0, Lcom/google/android/gms/internal/cf;->wK:Lcom/google/android/gms/common/api/l;

    iget-object v6, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/cf;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/bH;-><init>(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/f;Lcom/google/android/gms/common/api/l;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->At()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wA:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BW()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cA;->Ct()Z

    new-instance v0, Lcom/google/android/gms/internal/bQ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bQ;-><init>(Lcom/google/android/gms/internal/cf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->At()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wA:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public BY(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->Az(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BZ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    goto :goto_0
.end method

.method public Ca(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/co;->AD(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method Cb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cf;->wz:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/ca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/cf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->At()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wA:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cf;->wB:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    check-cast v0, Lcom/google/android/gms/common/api/h;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/i;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public yN()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->zY()V

    return-void
.end method

.method public yQ()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cf;->zb()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    check-cast v0, Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->Bq()V

    goto :goto_0
.end method

.method public yV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0}, Lcom/google/android/gms/internal/co;->Ad()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public yX(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->Ac(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public zb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    instance-of v0, v0, Lcom/google/android/gms/internal/bQ;

    return v0
.end method

.method public zc(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rM()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cf;->wy:Lcom/google/android/gms/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/co;->Ah(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method
