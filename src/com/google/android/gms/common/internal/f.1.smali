.class final Lcom/google/android/gms/common/internal/f;
.super Ljava/lang/Object;


# instance fields
.field private final ib:Lcom/google/android/gms/common/internal/z;

.field final synthetic ic:Lcom/google/android/gms/common/internal/h;

.field private final id:Lcom/google/android/gms/common/internal/v;

.field private ie:Landroid/os/IBinder;

.field private if:Z

.field private final ig:Ljava/util/Set;

.field private ih:Landroid/content/ComponentName;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/h;Lcom/google/android/gms/common/internal/v;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/f;->id:Lcom/google/android/gms/common/internal/v;

    new-instance v0, Lcom/google/android/gms/common/internal/z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/z;-><init>(Lcom/google/android/gms/common/internal/f;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->ib:Lcom/google/android/gms/common/internal/z;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return-void
.end method

.method static synthetic jF(Lcom/google/android/gms/common/internal/f;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->ie:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic jH(Lcom/google/android/gms/common/internal/f;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic jK(Lcom/google/android/gms/common/internal/f;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f;->ih:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic jL(Lcom/google/android/gms/common/internal/f;)Lcom/google/android/gms/common/internal/v;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->id:Lcom/google/android/gms/common/internal/v;

    return-object v0
.end method

.method static synthetic jz(Lcom/google/android/gms/common/internal/f;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return p1
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->if:Z

    return v0
.end method

.method public jA()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ie:Landroid/os/IBinder;

    return-object v0
.end method

.method public jB(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->jM(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->jP(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->id:Lcom/google/android/gms/common/internal/v;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/v;->ky()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/b;->oJ(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public jC()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public jD(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->jM(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->jP(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/stats/b;->oO(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public jE(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->jM(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->jP(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->id:Lcom/google/android/gms/common/internal/v;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/v;->ky()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/f;->ib:Lcom/google/android/gms/common/internal/z;

    const/16 v5, 0x81

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/b;->oG(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->if:Z

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->if:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->jM(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->jP(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->ib:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->oH(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public jG(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->jM(Lcom/google/android/gms/common/internal/h;)Lcom/google/android/gms/common/stats/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/f;->ic:Lcom/google/android/gms/common/internal/h;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/h;->jP(Lcom/google/android/gms/common/internal/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/f;->ib:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/b;->oH(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/f;->if:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/f;->mState:I

    return-void
.end method

.method public jI()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ih:Landroid/content/ComponentName;

    return-object v0
.end method

.method public jJ(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f;->ig:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
