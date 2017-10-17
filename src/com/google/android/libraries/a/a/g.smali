.class Lcom/google/android/libraries/a/a/g;
.super Lcom/google/android/libraries/a/a/h;
.source "SourceFile"


# static fields
.field private static Mj:Lcom/google/android/libraries/a/a/g;


# instance fields
.field private Mg:Z

.field private Mh:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private Mi:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/a/a/h;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method private RO()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/g;->Mg:Z

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/g;->Mh:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/g;->RS()V

    goto :goto_0
.end method

.method private RP(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/libraries/a/a/g;->Mh:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 80
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/g;->RQ()Lcom/google/android/libraries/a/a/d;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/g;->Mh:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/d;->Rn(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    goto :goto_0
.end method

.method private RQ()Lcom/google/android/libraries/a/a/d;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/android/libraries/a/a/g;->Mi:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/g;->Mi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/a/a/d;

    goto :goto_0
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/libraries/a/a/g;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/libraries/a/a/g;->Mj:Lcom/google/android/libraries/a/a/g;

    if-eqz v0, :cond_0

    .line 18
    :goto_0
    sget-object v0, Lcom/google/android/libraries/a/a/g;->Mj:Lcom/google/android/libraries/a/a/g;

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/libraries/a/a/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/a/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/libraries/a/a/g;->Mj:Lcom/google/android/libraries/a/a/g;

    goto :goto_0
.end method


# virtual methods
.method public RL(Lcom/google/android/libraries/a/a/d;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/g;->RQ()Lcom/google/android/libraries/a/a/d;

    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iput-object v1, p0, Lcom/google/android/libraries/a/a/g;->Mi:Ljava/lang/ref/WeakReference;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/g;->RS()V

    .line 53
    sget-object v0, Lcom/google/android/libraries/a/a/g;->Mj:Lcom/google/android/libraries/a/a/g;

    if-ne v0, p0, :cond_0

    .line 54
    sput-object v1, Lcom/google/android/libraries/a/a/g;->Mj:Lcom/google/android/libraries/a/a/g;

    goto :goto_0
.end method

.method public RM(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/libraries/a/a/g;->Mg:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/g;->RO()V

    .line 44
    return-void
.end method

.method public RN(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/g;->Mi:Ljava/lang/ref/WeakReference;

    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/a/a/g;->Mh:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/g;->RP(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/g;->RP(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/g;->RO()V

    .line 69
    return-void
.end method
