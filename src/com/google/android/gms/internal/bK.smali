.class public Lcom/google/android/gms/internal/bK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# instance fields
.field private final vU:Lcom/google/android/gms/internal/bZ;

.field private vV:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bZ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    return-void
.end method

.method private Bo(Lcom/google/android/gms/internal/b;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bQ;->BA(Lcom/google/android/gms/internal/b;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cu;->Cu(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gN()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/b;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/n;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/b;->ro()Lcom/google/android/gms/common/api/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    check-cast v0, Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->jm()Lcom/google/android/gms/common/api/o;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic Bq(Lcom/google/android/gms/internal/bK;)Lcom/google/android/gms/internal/bZ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    return-object v0
.end method


# virtual methods
.method public AC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 0

    return-void
.end method

.method public Ab(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bK;->Ag(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public Ac()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->CA()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bZ;->Ca(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3

    :cond_0
    return v2

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cu;->xA:Ljava/util/Set;

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

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d;->ry()V

    goto :goto_0
.end method

.method public Ag(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bK;->Bo(Lcom/google/android/gms/internal/b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    new-instance v1, Lcom/google/android/gms/internal/bT;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bT;-><init>(Lcom/google/android/gms/internal/bK;Lcom/google/android/gms/internal/ci;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bZ;->BQ(Lcom/google/android/gms/internal/bl;)V

    goto :goto_0
.end method

.method public As()V
    .locals 0

    return-void
.end method

.method public At(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Ay(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bZ;->Ca(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wJ:Lcom/google/android/gms/internal/bV;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/bV;->Bt(IZ)V

    return-void
.end method

.method Bp()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cu;->xp:Lcom/google/android/gms/internal/bQ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bQ;->BD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bK;->Ac()Z

    goto :goto_0
.end method

.method public zX()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/bK;->vV:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vU:Lcom/google/android/gms/internal/bZ;

    new-instance v1, Lcom/google/android/gms/internal/bt;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/bt;-><init>(Lcom/google/android/gms/internal/bK;Lcom/google/android/gms/internal/ci;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bZ;->BQ(Lcom/google/android/gms/internal/bl;)V

    goto :goto_0
.end method
