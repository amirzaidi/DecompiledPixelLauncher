.class Lcom/google/android/libraries/launcherclient/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# instance fields
.field private KI:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/a;->KI:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/a;->KI:Landroid/os/IBinder;

    return-object v0
.end method

.method public overlayScrollChanged(F)V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 86
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/a;->KI:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-void

    .line 91
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public overlayStatusChanged(I)V
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/a;->KI:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
