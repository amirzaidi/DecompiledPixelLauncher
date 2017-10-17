.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 26
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Lcom/google/android/libraries/launcherclient/a;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/a;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 24
    :cond_1
    return-object v0

    .line 27
    :cond_2
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    .line 51
    return v1

    .line 55
    :sswitch_2
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    .line 59
    return v1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
