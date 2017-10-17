.class Lcom/google/android/gms/internal/bC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/g;
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field private final uA:Landroid/util/SparseArray;

.field final synthetic uB:Lcom/google/android/gms/internal/bM;

.field private final uC:Landroid/util/SparseArray;

.field private final uD:Ljava/util/Queue;

.field private final uE:Lcom/google/android/gms/common/api/o;

.field private final uF:Ljava/util/Set;

.field private uG:Lcom/google/android/gms/common/ConnectionResult;

.field private uH:Z

.field private final uI:Lcom/google/android/gms/internal/cc;

.field private final uz:Lcom/google/android/gms/common/api/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/C;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uF:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bC;->zw(Lcom/google/android/gms/common/api/C;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uE:Lcom/google/android/gms/common/api/o;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/C;->eJ()Lcom/google/android/gms/internal/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    check-cast v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->gy()Lcom/google/android/gms/common/api/p;

    move-result-object v0

    goto :goto_0
.end method

.method private zA()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ei()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    new-instance v1, Lcom/google/android/gms/internal/bK;

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    iget-object v3, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    iget-object v4, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/bK;-><init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/internal/cc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/i;->ee(Lcom/google/android/gms/common/internal/c;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bi(Lcom/google/android/gms/internal/bM;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->Bc(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AY(Lcom/google/android/gms/internal/bM;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/a;->nN(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bM;->AQ(Lcom/google/android/gms/internal/bM;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bi(Lcom/google/android/gms/internal/bM;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->Bi(Lcom/google/android/gms/internal/bM;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bC;->dQ(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method private zB()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    goto :goto_0
.end method

.method private zE()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bW;->Bw()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zz()V

    return-void
.end method

.method private zF(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bI;->AM(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method static synthetic zG(Lcom/google/android/gms/internal/bC;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zE()V

    return-void
.end method

.method private zH(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uF:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uF:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cC;

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/cC;->CE(Lcom/google/android/gms/internal/cc;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method static synthetic zJ(Lcom/google/android/gms/internal/bC;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zA()V

    return-void
.end method

.method private zL()V
    .locals 3

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bc(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AY(Lcom/google/android/gms/internal/bM;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/a;->nN(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bC;->zF(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private zM()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zA()V

    goto :goto_0
.end method

.method static synthetic zO(Lcom/google/android/gms/internal/bC;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zM()V

    return-void
.end method

.method static synthetic zP(Lcom/google/android/gms/internal/bC;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic zQ(Lcom/google/android/gms/internal/bC;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bC;->zF(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zw(Lcom/google/android/gms/common/api/C;)Lcom/google/android/gms/common/api/i;
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eK()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dU()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eK()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dV()Lcom/google/android/gms/common/api/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eL()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eL()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->gm(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eI()Lcom/google/android/gms/common/api/m;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/l;->ek(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dW()Lcom/google/android/gms/common/api/n;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eL()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/n;->en()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eL()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/a;->gm(Landroid/content/Context;)Lcom/google/android/gms/common/internal/a;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/C;->eI()Lcom/google/android/gms/common/api/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/n;->em(Ljava/lang/Object;)Lcom/google/android/gms/common/api/p;

    move-result-object v7

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/a;Lcom/google/android/gms/common/api/p;)V

    return-object v0
.end method

.method static synthetic zx(Lcom/google/android/gms/internal/bC;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zL()V

    return-void
.end method

.method private zy(Lcom/google/android/gms/internal/bI;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bI;->AN(Landroid/util/SparseArray;)V

    iget v1, p1, Lcom/google/android/gms/internal/bI;->vj:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/google/android/gms/internal/bI;->vj:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uE:Lcom/google/android/gms/common/api/o;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/bI;->AL(Lcom/google/android/gms/common/api/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/bI;->vi:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    :goto_2
    move-object v3, v1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cj;

    move-object v1, v0

    iget-object v2, v1, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/bp;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/bp;->yE()Ljava/lang/Object;

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

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    iget v3, p1, Lcom/google/android/gms/internal/bI;->vi:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    iget v2, p1, Lcom/google/android/gms/internal/bI;->vi:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/cj;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    check-cast v2, Lcom/google/android/gms/internal/bp;

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
    invoke-interface {v2}, Lcom/google/android/gms/internal/bp;->yE()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/i;->ec()V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/bC;->dR(I)V

    goto :goto_1
.end method

.method private zz()V
    .locals 4

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->Ba(Lcom/google/android/gms/internal/bM;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public dQ(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bC;->zD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bM;->AQ(Lcom/google/android/gms/internal/bM;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bC;->zH(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/bM;->Bk()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AS(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/internal/bV;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/bM;->AW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->Bh(Lcom/google/android/gms/internal/bM;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AS(Lcom/google/android/gms/internal/bM;)Lcom/google/android/gms/internal/bV;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/bV;->yA(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cc;->BG()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bC;->zF(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    const/16 v3, 0x8

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AV(Lcom/google/android/gms/internal/bM;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public dR(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bC;->zD()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bC;->uH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    const/16 v3, 0x8

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AV(Lcom/google/android/gms/internal/bM;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v1}, Lcom/google/android/gms/internal/bM;->AT(Lcom/google/android/gms/internal/bM;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v2}, Lcom/google/android/gms/internal/bM;->AU(Lcom/google/android/gms/internal/bM;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bM;->AQ(Lcom/google/android/gms/internal/bM;I)I

    return-void
.end method

.method public dS(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bC;->zD()V

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->ks:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/bC;->zH(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zB()V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bC;->zu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zz()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

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
    iget-object v3, p0, Lcom/google/android/gms/internal/bC;->uE:Lcom/google/android/gms/common/api/o;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/b;->rq(Lcom/google/android/gms/common/api/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bC;->dR(I)V

    goto :goto_1
.end method

.method public zC(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bW;->BE()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uA:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    iget v2, v0, Lcom/google/android/gms/internal/bI;->vi:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/bI;->vj:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bI;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bf(Lcom/google/android/gms/internal/bM;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bn(Lcom/google/android/gms/internal/bM;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/bM;->Bk()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uB:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bh(Lcom/google/android/gms/internal/bM;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

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

.method public zD()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public zI(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/gms/internal/bW;

    iget-object v2, p0, Lcom/google/android/gms/internal/bC;->uI:Lcom/google/android/gms/internal/cc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cc;->BH()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/bW;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/i;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method zK()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method zN()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v0

    return v0
.end method

.method public zs(Lcom/google/android/gms/internal/cC;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uF:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zt(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uC:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    new-instance v1, Lcom/google/android/gms/internal/cD;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/cD;-><init>(Lcom/google/android/gms/internal/bC;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bW;->BA(Lcom/google/android/gms/internal/cx;)V

    return-void
.end method

.method public zu()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bI;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bC;->zy(Lcom/google/android/gms/internal/bI;)V

    goto :goto_0
.end method

.method public zv(Lcom/google/android/gms/internal/bI;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uz:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uD:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zA()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bC;->zy(Lcom/google/android/gms/internal/bI;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bC;->zz()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bC;->uG:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bC;->dQ(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
