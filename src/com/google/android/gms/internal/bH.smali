.class public Lcom/google/android/gms/internal/bH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/co;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private uO:I

.field private uP:Ljava/util/ArrayList;

.field private uQ:Lcom/google/android/gms/internal/bm;

.field private final uR:Ljava/util/concurrent/locks/Lock;

.field private uS:Lcom/google/android/gms/common/ConnectionResult;

.field private final uT:Ljava/util/Set;

.field private final uU:Lcom/google/android/gms/common/internal/a;

.field private final uV:Lcom/google/android/gms/common/f;

.field private uW:Z

.field private uX:Z

.field private final uY:Lcom/google/android/gms/internal/cf;

.field private uZ:Z

.field private va:Z

.field private vb:I

.field private final vc:Ljava/util/Map;

.field private vd:I

.field private ve:I

.field private vf:Lcom/google/android/gms/common/internal/zzq;

.field private final vg:Landroid/os/Bundle;

.field private final vh:Lcom/google/android/gms/common/api/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/f;Lcom/google/android/gms/common/api/l;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bH;->vd:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->vg:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->uT:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->uP:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iput-object p2, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    iput-object p3, p0, Lcom/google/android/gms/internal/bH;->vc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/bH;->uV:Lcom/google/android/gms/common/f;

    iput-object p5, p0, Lcom/google/android/gms/internal/bH;->vh:Lcom/google/android/gms/common/api/l;

    iput-object p6, p0, Lcom/google/android/gms/internal/bH;->uR:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/bH;->mContext:Landroid/content/Context;

    return-void
.end method

.method private AA(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/h;->dX()Lcom/google/android/gms/common/api/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/s;->es()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/bH;->An(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/bH;->uS:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/bH;->vb:I

    goto :goto_0
.end method

.method private AB(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->uV:Lcom/google/android/gms/common/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nu()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/f;->nM(I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private AC(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ax(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->Qn()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->nw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->AI(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->Qm()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->iY()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->nw()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bH;->uX:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->iX()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->vf:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->iZ()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bH;->uZ:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->ja()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bH;->va:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AH()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v3, "GoogleApiClientConnecting"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Al()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AH()V

    goto :goto_0
.end method

.method static synthetic AE(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bH;->AA(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V

    return-void
.end method

.method private AF()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method static synthetic AG(Lcom/google/android/gms/internal/bH;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->Ax(I)Z

    move-result v0

    return v0
.end method

.method private AH()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Am()V

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uX:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private AI(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/bH;->uO:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/bH;->uO:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method static synthetic AJ(Lcom/google/android/gms/internal/bH;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AH()V

    return-void
.end method

.method private AK()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->BW()V

    invoke-static {}, Lcom/google/android/gms/internal/bl;->yt()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/bJ;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/bJ;-><init>(Lcom/google/android/gms/internal/bH;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vg:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vg:Landroid/os/Bundle;

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->wD:Lcom/google/android/gms/internal/cb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/cb;->Bt(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uZ:Z

    if-nez v0, :cond_1

    :goto_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/bH;->Ai(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->vf:Lcom/google/android/gms/common/internal/zzq;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/bH;->va:Z

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/bm;->yw(Lcom/google/android/gms/common/internal/zzq;Z)V

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v3, v3, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->ec()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic Aa(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uV:Lcom/google/android/gms/common/f;

    return-object v0
.end method

.method static synthetic Ab(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/bm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    return-object v0
.end method

.method private Ae()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    iget v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uS:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cA;->Cx()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v1, "GoogleApiClientConnecting"

    const-string/jumbo v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget v1, p0, Lcom/google/android/gms/internal/bH;->vb:I

    iput v1, v0, Lcom/google/android/gms/internal/cf;->wH:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3
.end method

.method static synthetic Af(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic Ag(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vf:Lcom/google/android/gms/common/internal/zzq;

    return-object v0
.end method

.method private Ai(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->eg()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->ec()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bH;->vf:Lcom/google/android/gms/common/internal/zzq;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->yv()V

    goto :goto_1
.end method

.method static synthetic Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method static synthetic Ak(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->AC(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private Al()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cA;->xq:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uT:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private Am()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bH;->vd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v3, v3, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v3, v3, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Ae()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AK()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uP:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bl;->yt()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/cv;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/cv;-><init>(Lcom/google/android/gms/internal/bH;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private An(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p2, v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->uS:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/bH;->AB(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/bH;->vb:I

    if-lt p1, v2, :cond_1

    goto :goto_0
.end method

.method static synthetic Ao(Lcom/google/android/gms/internal/bH;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->As()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private Ap(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AF()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nx()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ai(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cf;->Cb(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wD:Lcom/google/android/gms/internal/cb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cb;->Bs(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic Aq(Lcom/google/android/gms/internal/bH;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Al()V

    return-void
.end method

.method static synthetic Ar(Lcom/google/android/gms/internal/bH;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Ae()Z

    move-result v0

    return v0
.end method

.method private As()Ljava/util/Set;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->gs()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->gq()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v4, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v4, v4, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/Q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/Q;->hf:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic Av(Lcom/google/android/gms/internal/bH;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Aw(Lcom/google/android/gms/internal/bH;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uR:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private Ax(I)Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/bH;->vd:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cA;->Cx()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected callback in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "mRemainingConnections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GoogleApiClientConnecting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/internal/bH;->vd:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ay(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->Ay(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "GoogleApiClient connecting is in step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " but received callback for step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "GoogleApiClientConnecting"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    return v0
.end method

.method private Ay(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STEP_GETTING_REMOTE_SERVICE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic zX(Lcom/google/android/gms/internal/bH;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    return v0
.end method

.method static synthetic zZ(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bH;->AI(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public AD(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ax(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bH;->AA(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Ae()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AK()V

    goto :goto_0
.end method

.method public Ac(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v0, v0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public Ad()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AF()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/bH;->Ai(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->Cb(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public Ah(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public At()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/bH;->uS:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/bH;->vd:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bH;->uO:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bH;->uX:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bH;->uZ:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vc:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v3, :cond_5

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bH;->ve:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uP:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bl;->yt()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bk;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/bH;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->wF:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/i;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->vc:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dX()Lcom/google/android/gms/common/api/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/s;->es()I

    move-result v2

    if-eq v2, v5, :cond_2

    move v2, v4

    :goto_3
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/i;->dZ()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/ce;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/common/api/h;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_3

    :cond_3
    iput-boolean v5, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    iget v3, p0, Lcom/google/android/gms/internal/bH;->uO:I

    if-lt v8, v3, :cond_4

    :goto_5
    if-eqz v8, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->uT:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/h;->dT()Lcom/google/android/gms/common/api/j;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iput v8, p0, Lcom/google/android/gms/internal/bH;->uO:I

    goto :goto_5

    :cond_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/bH;->uW:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v1, v1, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cA;->Cu()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/a;->gp(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/bn;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/bn;-><init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/internal/bJ;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vh:Lcom/google/android/gms/common/api/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/bH;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bH;->uY:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cA;->du()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    iget-object v4, p0, Lcom/google/android/gms/internal/bH;->uU:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->gu()Lcom/google/android/gms/internal/cd;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/l;->ek(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bm;

    iput-object v0, p0, Lcom/google/android/gms/internal/bH;->uQ:Lcom/google/android/gms/internal/bm;

    goto/16 :goto_2
.end method

.method public Au(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ax(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->Ae()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bH;->vg:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bH;->AK()V

    goto :goto_1
.end method

.method public Az(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bH;->Ap(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zY()V
    .locals 0

    return-void
.end method
