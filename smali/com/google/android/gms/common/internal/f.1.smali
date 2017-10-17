.class final Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;


# instance fields
.field private final fj:Lcom/google/android/gms/common/internal/z;

.field final synthetic fk:Lcom/google/android/gms/common/internal/h;

.field private final fl:Lcom/google/android/gms/common/internal/v;

.field private fm:Landroid/os/IBinder;

.field private fn:Z

.field private final fo:Ljava/util/Set;

.field private fp:Landroid/content/ComponentName;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/internal/v;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->fl:Lcom/google/android/gms/common/internal/v;

    new-instance v0, Lcom/google/android/gms/common/internal/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/z;-><init>(Lcom/google/android/gms/common/internal/f;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->fj:Lcom/google/android/gms/common/internal/z;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return-void
.end method

.method static synthetic gL(Lcom/google/android/gms/common/internal/f;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return p1
.end method

.method static synthetic gR(Lcom/google/android/gms/common/internal/f;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->fm:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic gT(Lcom/google/android/gms/common/internal/f;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic gW(Lcom/google/android/gms/common/internal/f;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->fp:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic gX(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fl:Lcom/google/android/gms/common/internal/v;

    return-object v0
.end method


# virtual methods
.method public gM()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fm:Landroid/os/IBinder;

    return-object v0
.end method

.method public gN(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->fl:Lcom/google/android/gms/common/internal/v;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/v;->hK()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/b;->lV(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public gO()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public gP(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/stats/b;->ma(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public gQ(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->fl:Lcom/google/android/gms/common/internal/v;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/v;->hK()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/f;->fj:Lcom/google/android/gms/common/internal/z;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/b;->lS(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->fn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->fn:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->fj:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->lT(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public gS(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->gY(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->fk:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->hb(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->fj:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->lT(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->fn:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return-void
.end method

.method public gU()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fp:Landroid/content/ComponentName;

    return-object v0
.end method

.method public gV(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->fo:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->fn:Z

    return v0
.end method
