.class Lcom/google/android/libraries/a/a/f;
.super Lcom/google/android/libraries/a/a/g;
.source "SourceFile"


# static fields
.field private static KE:Lcom/google/android/libraries/a/a/f;


# instance fields
.field private KB:Z

.field private KC:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private KD:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/a/a/g;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method private QU()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/f;->KB:Z

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/f;->KC:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/f;->QY()V

    goto :goto_0
.end method

.method private QV(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/libraries/a/a/f;->KC:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 80
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/f;->QW()Lcom/google/android/libraries/a/a/c;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/f;->KC:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/c;->Qu(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    goto :goto_0
.end method

.method private QW()Lcom/google/android/libraries/a/a/c;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/google/android/libraries/a/a/f;->KD:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/f;->KD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/a/a/c;

    goto :goto_0
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/libraries/a/a/f;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/libraries/a/a/f;->KE:Lcom/google/android/libraries/a/a/f;

    if-eqz v0, :cond_0

    .line 18
    :goto_0
    sget-object v0, Lcom/google/android/libraries/a/a/f;->KE:Lcom/google/android/libraries/a/a/f;

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/libraries/a/a/f;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/a/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/libraries/a/a/f;->KE:Lcom/google/android/libraries/a/a/f;

    goto :goto_0
.end method


# virtual methods
.method public QR(Lcom/google/android/libraries/a/a/c;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/f;->QW()Lcom/google/android/libraries/a/a/c;

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
    iput-object v1, p0, Lcom/google/android/libraries/a/a/f;->KD:Ljava/lang/ref/WeakReference;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/f;->QY()V

    .line 53
    sget-object v0, Lcom/google/android/libraries/a/a/f;->KE:Lcom/google/android/libraries/a/a/f;

    if-ne v0, p0, :cond_0

    .line 54
    sput-object v1, Lcom/google/android/libraries/a/a/f;->KE:Lcom/google/android/libraries/a/a/f;

    goto :goto_0
.end method

.method public QS(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/libraries/a/a/f;->KB:Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/f;->QU()V

    .line 44
    return-void
.end method

.method public QT(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/f;->KD:Ljava/lang/ref/WeakReference;

    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/a/a/f;->KC:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/f;->QV(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/f;->QV(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/f;->QU()V

    .line 69
    return-void
.end method
