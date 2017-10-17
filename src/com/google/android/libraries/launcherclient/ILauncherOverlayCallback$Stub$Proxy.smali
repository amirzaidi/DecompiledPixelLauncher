.class public Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public overlayScrollChanged(F)V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method public overlayStatusChanged(I)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 88
    return-void
.end method
