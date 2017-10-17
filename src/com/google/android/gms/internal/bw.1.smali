.class Lcom/google/android/gms/internal/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d;
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field private final uF:Lcom/google/android/gms/common/api/g;

.field private final uG:Landroid/util/SparseArray;

.field final synthetic uH:Lcom/google/android/gms/internal/bG;

.field private final uI:Landroid/util/SparseArray;

.field private final uJ:Ljava/util/Queue;

.field private final uK:Lcom/google/android/gms/common/api/n;

.field private final uL:Ljava/util/Set;

.field private uM:Lcom/google/android/gms/common/ConnectionResult;

.field private uN:Z

.field private final uO:Lcom/google/android/gms/internal/bW;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/C;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uL:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bw;->zv(Lcom/google/android/gms/common/api/C;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uK:Lcom/google/android/gms/common/api/n;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/C;->hx()Lcom/google/android/gms/internal/bW;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    check-cast v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->jm()Lcom/google/android/gms/common/api/o;

    move-result-object v0

    goto :goto_0
.end method

.method private zA()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    goto :goto_0
.end method

.method private zD()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->Bv()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zy()V

    return-void
.end method

.method private zE(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bC;->AL(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method static synthetic zF(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zD()V

    return-void
.end method

.method private zG(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cw;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/cw;->CD(Lcom/google/android/gms/internal/bW;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method static synthetic zI(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zz()V

    return-void
.end method

.method private zK()V
    .locals 3

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bb(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AX(Lcom/google/android/gms/internal/bG;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->qz(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bw;->zE(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private zL()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zz()V

    goto :goto_0
.end method

.method static synthetic zN(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zL()V

    return-void
.end method

.method static synthetic zO(Lcom/google/android/gms/internal/bw;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic zP(Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bw;->zE(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zv(Lcom/google/android/gms/common/api/C;)Lcom/google/android/gms/common/api/g;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hy()Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gA()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hy()Lcom/google/android/gms/common/api/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gB()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hz()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hz()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->ja(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hw()Lcom/google/android/gms/common/api/k;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/j;->gR(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gC()Lcom/google/android/gms/common/api/l;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hz()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/l;->gU()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hz()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/a;->ja(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->hw()Lcom/google/android/gms/common/api/k;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/l;->gT(Ljava/lang/Object;)Lcom/google/android/gms/common/api/o;

    move-result-object v7

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/o;)V

    return-object v0
.end method

.method static synthetic zw(Lcom/google/android/gms/internal/bw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zK()V

    return-void
.end method

.method private zx(Lcom/google/android/gms/internal/bC;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bC;->AM(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/bC;->vp:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/bC;->vp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uK:Lcom/google/android/gms/common/api/n;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bC;->AK(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/bC;->vo:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    :goto_2
    move-object v3, v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cd;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/bj;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/bj;->yD()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Listener registration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_2
    new-instance v1, Landroid/support/v4/a/t;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/v4/a/t;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/bC;->vo:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/bC;->vo:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cd;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    check-cast v2, Lcom/google/android/gms/internal/bj;

    if-nez v1, :cond_3

    const-string/jumbo v1, "GoogleApiManager"

    const-string/jumbo v2, "Received call to unregister a listener without a matching registration call."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Listener unregistration methods must implement ListenerApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_4
    invoke-interface {v2}, Lcom/google/android/gms/internal/bj;->yD()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->gJ()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/bw;->gx(I)V

    goto :goto_1
.end method

.method private zy()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AZ(Lcom/google/android/gms/internal/bG;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private zz()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gP()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    new-instance v1, Lcom/google/android/gms/internal/bE;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    iget-object v4, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/bE;-><init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/internal/bW;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/g;->gL(Lcom/google/android/gms/common/internal/c;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bh(Lcom/google/android/gms/internal/bG;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->Bb(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AX(Lcom/google/android/gms/internal/bG;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/a;->qz(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bG;->AP(Lcom/google/android/gms/internal/bG;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bh(Lcom/google/android/gms/internal/bG;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->Bh(Lcom/google/android/gms/internal/bG;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bw;->gw(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method


# virtual methods
.method public gw(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->zC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bG;->AP(Lcom/google/android/gms/internal/bG;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bw;->zG(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/bG;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AR(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/internal/bP;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/bG;->AV(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->Bg(Lcom/google/android/gms/internal/bG;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AR(Lcom/google/android/gms/internal/bG;)Lcom/google/android/gms/internal/bP;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/bP;->yz(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bW;->BF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "API: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not available on this device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bw;->zE(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    const/16 v3, 0x8

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AU(Lcom/google/android/gms/internal/bG;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public gx(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->zC()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bw;->uN:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    const/16 v3, 0x8

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AU(Lcom/google/android/gms/internal/bG;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v1}, Lcom/google/android/gms/internal/bG;->AS(Lcom/google/android/gms/internal/bG;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v2}, Lcom/google/android/gms/internal/bG;->AT(Lcom/google/android/gms/internal/bG;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bG;->AP(Lcom/google/android/gms/internal/bG;I)I

    return-void
.end method

.method public gy(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->zC()V

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->nk:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/bw;->zG(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zA()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bw;->zt()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zy()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/b;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->uK:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bw;->gx(I)V

    goto :goto_1
.end method

.method public zB(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->BD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uG:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    iget v2, v0, Lcom/google/android/gms/internal/bC;->vo:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/bC;->vp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bC;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Be(Lcom/google/android/gms/internal/bG;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bm(Lcom/google/android/gms/internal/bG;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/bG;->Bj()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uH:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bg(Lcom/google/android/gms/internal/bG;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zC()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public zH(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/bQ;

    iget-object v2, p0, Lcom/google/android/gms/internal/bw;->uO:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bW;->BG()Lcom/google/android/gms/common/api/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/bQ;-><init>(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/g;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method zJ()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method zM()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v0

    return v0
.end method

.method public zr(Lcom/google/android/gms/internal/cw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uL:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zs(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uI:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bQ;

    new-instance v1, Lcom/google/android/gms/internal/cx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cx;-><init>(Lcom/google/android/gms/internal/bw;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bQ;->Bz(Lcom/google/android/gms/internal/cr;)V

    return-void
.end method

.method public zt()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bw;->zx(Lcom/google/android/gms/internal/bC;)V

    goto :goto_0
.end method

.method public zu(Lcom/google/android/gms/internal/bC;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uF:Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uJ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zz()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bw;->zx(Lcom/google/android/gms/internal/bC;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bw;->zy()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bw;->uM:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bw;->gw(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
