.class public Lcom/google/android/gms/internal/bZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/br;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final wD:Lcom/google/android/gms/common/f;

.field private volatile wE:Lcom/google/android/gms/internal/ci;

.field private wF:Lcom/google/android/gms/common/ConnectionResult;

.field private final wG:Ljava/util/concurrent/locks/Condition;

.field private final wH:Ljava/util/concurrent/locks/Lock;

.field final wI:Lcom/google/android/gms/internal/cu;

.field final wJ:Lcom/google/android/gms/internal/bV;

.field private final wK:Lcom/google/android/gms/internal/bL;

.field final wL:Ljava/util/Map;

.field final wM:Ljava/util/Map;

.field wN:I

.field final wO:Ljava/util/Map;

.field final wP:Lcom/google/android/gms/common/internal/a;

.field final wQ:Lcom/google/android/gms/common/api/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cu;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/f;Ljava/util/Map;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/api/j;Ljava/util/ArrayList;Lcom/google/android/gms/internal/bV;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wF:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/bZ;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/internal/bZ;->wD:Lcom/google/android/gms/common/f;

    iput-object p6, p0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/internal/bZ;->wP:Lcom/google/android/gms/common/internal/a;

    iput-object p8, p0, Lcom/google/android/gms/internal/bZ;->wO:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/internal/bZ;->wQ:Lcom/google/android/gms/common/api/j;

    iput-object p2, p0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iput-object p11, p0, Lcom/google/android/gms/internal/bZ;->wJ:Lcom/google/android/gms/internal/bV;

    invoke-virtual {p10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/bL;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/bL;-><init>(Lcom/google/android/gms/internal/bZ;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wK:Lcom/google/android/gms/internal/bL;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wG:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/internal/bU;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bU;-><init>(Lcom/google/android/gms/internal/bZ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bz;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bz;->zR(Lcom/google/android/gms/internal/bZ;)V

    goto :goto_0
.end method

.method static synthetic BR(Lcom/google/android/gms/internal/bZ;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic BW(Lcom/google/android/gms/internal/bZ;)Lcom/google/android/gms/internal/ci;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    return-object v0
.end method


# virtual methods
.method BQ(Lcom/google/android/gms/internal/bl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wK:Lcom/google/android/gms/internal/bL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bL;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wK:Lcom/google/android/gms/internal/bL;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bL;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public BS(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ci;->At(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BT(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wK:Lcom/google/android/gms/internal/bL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/bL;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wK:Lcom/google/android/gms/internal/bL;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/bL;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method BU()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/bB;

    iget-object v2, p0, Lcom/google/android/gms/internal/bZ;->wP:Lcom/google/android/gms/common/internal/a;

    iget-object v3, p0, Lcom/google/android/gms/internal/bZ;->wO:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/bZ;->wD:Lcom/google/android/gms/common/f;

    iget-object v5, p0, Lcom/google/android/gms/internal/bZ;->wQ:Lcom/google/android/gms/common/api/j;

    iget-object v6, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    iget-object v7, p0, Lcom/google/android/gms/internal/bZ;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/bB;-><init>(Lcom/google/android/gms/internal/bZ;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/f;Lcom/google/android/gms/common/api/j;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->As()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wG:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BV()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->Cs()Z

    new-instance v0, Lcom/google/android/gms/internal/bK;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bK;-><init>(Lcom/google/android/gms/internal/bZ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->As()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wG:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public BX(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ci;->Ay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method BY()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    goto :goto_0
.end method

.method public BZ(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ci;->AC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method Ca(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bZ;->wF:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/internal/bU;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bU;-><init>(Lcom/google/android/gms/internal/bZ;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->As()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wG:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bZ;->wH:Ljava/util/concurrent/locks/Lock;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wO:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public yM()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->zX()V

    return-void
.end method

.method public yP()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bZ;->za()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    check-cast v0, Lcom/google/android/gms/internal/bK;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bK;->Bp()V

    goto :goto_0
.end method

.method public yU()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ci;->Ac()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public yW(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ci;->Ab(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public za()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    instance-of v0, v0, Lcom/google/android/gms/internal/bK;

    return v0
.end method

.method public zb(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rO()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bZ;->wE:Lcom/google/android/gms/internal/ci;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ci;->Ag(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method
