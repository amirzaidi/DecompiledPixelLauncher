.class public Lcom/google/android/gms/internal/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private uU:I

.field private uV:Ljava/util/ArrayList;

.field private uW:Lcom/google/android/gms/internal/bg;

.field private final uX:Ljava/util/concurrent/locks/Lock;

.field private uY:Lcom/google/android/gms/common/ConnectionResult;

.field private final uZ:Ljava/util/Set;

.field private final va:Lcom/google/android/gms/common/internal/a;

.field private final vb:Lcom/google/android/gms/common/f;

.field private vc:Z

.field private vd:Z

.field private final ve:Lcom/google/android/gms/internal/bZ;

.field private vf:Z

.field private vg:Z

.field private vh:I

.field private final vi:Ljava/util/Map;

.field private vj:I

.field private vk:I

.field private vl:Lcom/google/android/gms/common/internal/zzq;

.field private final vm:Landroid/os/Bundle;

.field private final vn:Lcom/google/android/gms/common/api/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bZ;Lcom/google/android/gms/common/internal/a;Ljava/util/Map;Lcom/google/android/gms/common/f;Lcom/google/android/gms/common/api/j;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vj:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->vm:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->uZ:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->uV:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iput-object p2, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    iput-object p3, p0, Lcom/google/android/gms/internal/bB;->vi:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/bB;->vb:Lcom/google/android/gms/common/f;

    iput-object p5, p0, Lcom/google/android/gms/internal/bB;->vn:Lcom/google/android/gms/common/api/j;

    iput-object p6, p0, Lcom/google/android/gms/internal/bB;->uX:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/bB;->mContext:Landroid/content/Context;

    return-void
.end method

.method private AA(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->vb:Lcom/google/android/gms/common/f;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qh()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/f;->qy(I)Landroid/content/Intent;

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

.method private AB(Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Aw(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->Rg()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->AH(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/SignInResponse;->Rf()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->lM()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bB;->vd:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->lL()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bB;->vl:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->lN()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bB;->vf:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->lO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vg:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AG()V

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

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ak()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AG()V

    goto :goto_0
.end method

.method static synthetic AD(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bB;->Az(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V

    return-void
.end method

.method private AE()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uV:Ljava/util/ArrayList;

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

.method static synthetic AF(Lcom/google/android/gms/internal/bB;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bB;->Aw(I)Z

    move-result v0

    return v0
.end method

.method private AG()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Al()V

    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vd:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private AH(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/bB;->uU:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/bB;->uU:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method static synthetic AI(Lcom/google/android/gms/internal/bB;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AG()V

    return-void
.end method

.method private AJ()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->BV()V

    invoke-static {}, Lcom/google/android/gms/internal/bf;->ys()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/bD;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/bD;-><init>(Lcom/google/android/gms/internal/bB;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vm:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vm:Landroid/os/Bundle;

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/bZ;->wJ:Lcom/google/android/gms/internal/bV;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bV;->Bs(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vf:Z

    if-nez v0, :cond_1

    :goto_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/bB;->Ah(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->vl:Lcom/google/android/gms/common/internal/zzq;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/bB;->vg:Z

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/bg;->yv(Lcom/google/android/gms/common/internal/zzq;Z)V

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v3, v3, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/g;->gJ()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic Aa(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    return-object v0
.end method

.method private Ad()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uY:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->Cw()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget v1, p0, Lcom/google/android/gms/internal/bB;->vh:I

    iput v1, v0, Lcom/google/android/gms/internal/bZ;->wN:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uY:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3
.end method

.method static synthetic Ae(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic Af(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/common/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vl:Lcom/google/android/gms/common/internal/zzq;

    return-object v0
.end method

.method private Ah(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->gN()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->gJ()V

    iput-object v1, p0, Lcom/google/android/gms/internal/bB;->vl:Lcom/google/android/gms/common/internal/zzq;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bg;->yu()V

    goto :goto_1
.end method

.method static synthetic Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    return-object v0
.end method

.method static synthetic Aj(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/signin/internal/SignInResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bB;->AB(Lcom/google/android/gms/signin/internal/SignInResponse;)V

    return-void
.end method

.method private Ak()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cu;->xw:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uZ:Ljava/util/Set;

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

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v2, v2, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v2, v2, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private Al()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v3, v3, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v3, v3, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AJ()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uV:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bf;->ys()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/co;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/co;-><init>(Lcom/google/android/gms/internal/bB;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private Am(IILcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p2, v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->uY:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v2, :cond_3

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/bB;->AA(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/bB;->vh:I

    if-lt p1, v2, :cond_1

    goto :goto_0
.end method

.method static synthetic An(Lcom/google/android/gms/internal/bB;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ar()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private Ao(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AE()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qk()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ah(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bZ;->Ca(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wJ:Lcom/google/android/gms/internal/bV;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/bV;->Br(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic Ap(Lcom/google/android/gms/internal/bB;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ak()V

    return-void
.end method

.method static synthetic Aq(Lcom/google/android/gms/internal/bB;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ad()Z

    move-result v0

    return v0
.end method

.method private Ar()Ljava/util/Set;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->jg()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/a;->je()Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v4, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v4, v4, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/Q;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/Q;->jX:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic Au(Lcom/google/android/gms/internal/bB;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Av(Lcom/google/android/gms/internal/bB;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uX:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private Aw(I)Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vj:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cu;->Cw()Ljava/lang/String;

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

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

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

    iget v0, p0, Lcom/google/android/gms/internal/bB;->vj:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ax(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bB;->Ax(I)Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    return v0
.end method

.method private Ax(I)Ljava/lang/String;
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

.method private Az(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->gD()Lcom/google/android/gms/common/api/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/r;->hf()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/bB;->Am(IILcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/bB;->uY:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vh:I

    goto :goto_0
.end method

.method static synthetic zW(Lcom/google/android/gms/internal/bB;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    return v0
.end method

.method static synthetic zY(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bB;->AH(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic zZ(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/common/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vb:Lcom/google/android/gms/common/f;

    return-object v0
.end method


# virtual methods
.method public AC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Aw(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/bB;->Az(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ad()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AJ()V

    goto :goto_0
.end method

.method public Ab(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public Ac()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AE()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/bB;->Ah(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bZ;->Ca(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public Ag(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public As()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wM:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/bB;->uY:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/bB;->vj:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bB;->uU:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bB;->vd:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/bB;->vf:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vi:Ljava/util/Map;

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
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    if-nez v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bB;->vk:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->uV:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/bf;->ys()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/be;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/be;-><init>(Lcom/google/android/gms/internal/bB;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/bZ;->wL:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/g;

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->vi:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gD()Lcom/google/android/gms/common/api/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/r;->hf()I

    move-result v2

    if-eq v2, v5, :cond_2

    move v2, v4

    :goto_3
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/g;->gG()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    :goto_4
    new-instance v3, Lcom/google/android/gms/internal/bY;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/bY;-><init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/api/e;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_3

    :cond_3
    iput-boolean v5, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    iget v3, p0, Lcom/google/android/gms/internal/bB;->uU:I

    if-lt v8, v3, :cond_4

    :goto_5
    if-eqz v8, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/bB;->uZ:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iput v8, p0, Lcom/google/android/gms/internal/bB;->uU:I

    goto :goto_5

    :cond_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/bB;->vc:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v1, v1, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cu;->Ct()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/a;->jd(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/bh;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/bh;-><init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/internal/bD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vn:Lcom/google/android/gms/common/api/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/bB;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/bB;->ve:Lcom/google/android/gms/internal/bZ;

    iget-object v2, v2, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cu;->gf()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    iget-object v4, p0, Lcom/google/android/gms/internal/bB;->va:Lcom/google/android/gms/common/internal/a;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->ji()Lcom/google/android/gms/internal/bX;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/j;->gR(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/a;Ljava/lang/Object;Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bg;

    iput-object v0, p0, Lcom/google/android/gms/internal/bB;->uW:Lcom/google/android/gms/internal/bg;

    goto/16 :goto_2
.end method

.method public At(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Aw(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->Ad()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bB;->vm:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/bB;->AJ()V

    goto :goto_1
.end method

.method public Ay(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/bB;->Ao(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zX()V
    .locals 0

    return-void
.end method
