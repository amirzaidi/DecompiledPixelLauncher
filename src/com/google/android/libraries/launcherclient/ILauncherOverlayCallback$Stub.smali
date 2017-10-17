.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    .line 33
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p0, :cond_0

    .line 40
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    if-nez v1, :cond_1

    .line 44
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 38
    :cond_0
    return-object v0

    .line 42
    :cond_1
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 65
    return v1

    .line 51
    :cond_0
    return v2

    .line 55
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    .line 68
    :goto_0
    return v2

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
