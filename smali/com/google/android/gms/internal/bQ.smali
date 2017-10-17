.class public Lcom/google/android/gms/internal/bQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/co;


# instance fields
.field private final vO:Lcom/google/android/gms/internal/cf;

.field private vP:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    return-void
.end method

.method private Bp(Lcom/google/android/gms/internal/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v0, v0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bW;->BB(Lcom/google/android/gms/internal/b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cA;->Cv(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->eg()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/b;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rq(Lcom/google/android/gms/common/api/o;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->rm()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    check-cast v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->gy()Lcom/google/android/gms/common/api/p;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic Br(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method


# virtual methods
.method public AD(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 0

    return-void
.end method

.method public Ac(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bQ;->Ah(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public Ad()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cA;->CB()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->Cb(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3

    :cond_0
    return v2

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v0, v0, Lcom/google/android/gms/internal/cA;->xu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d;->rw()V

    goto :goto_0
.end method

.method public Ah(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bQ;->Bp(Lcom/google/android/gms/internal/b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    new-instance v1, Lcom/google/android/gms/internal/bZ;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bZ;-><init>(Lcom/google/android/gms/internal/bQ;Lcom/google/android/gms/internal/co;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->BR(Lcom/google/android/gms/internal/br;)V

    goto :goto_0
.end method

.method public At()V
    .locals 0

    return-void
.end method

.method public Au(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Az(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->Cb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wD:Lcom/google/android/gms/internal/cb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/cb;->Bu(IZ)V

    return-void
.end method

.method Bq()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v0, v0, Lcom/google/android/gms/internal/cA;->xj:Lcom/google/android/gms/internal/bW;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bW;->BE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bQ;->Ad()Z

    goto :goto_0
.end method

.method public zY()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bQ;->vP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bQ;->vO:Lcom/google/android/gms/internal/cf;

    new-instance v1, Lcom/google/android/gms/internal/bz;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bz;-><init>(Lcom/google/android/gms/internal/bQ;Lcom/google/android/gms/internal/co;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->BR(Lcom/google/android/gms/internal/br;)V

    goto :goto_0
.end method
