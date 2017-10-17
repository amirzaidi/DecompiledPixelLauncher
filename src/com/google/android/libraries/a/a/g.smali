.class Lcom/google/android/libraries/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private KF:Z

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/a/a/g;->mContext:Landroid/content/Context;

    .line 19
    iput p2, p0, Lcom/google/android/libraries/a/a/g;->mFlags:I

    .line 20
    return-void
.end method


# virtual methods
.method public final QX()Z
    .locals 3

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/g;->KF:Z

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/g;->KF:Z

    return v0

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/g;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/g;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v1}, Lcom/google/android/libraries/a/a/c;->QI(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/a/a/g;->mFlags:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/a/a/g;->KF:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string/jumbo v1, "LauncherClient"

    const-string/jumbo v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public QY()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/g;->KF:Z

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31
    iput-boolean v1, p0, Lcom/google/android/libraries/a/a/g;->KF:Z

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
