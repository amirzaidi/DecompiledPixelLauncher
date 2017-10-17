.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    if-eqz p0, :cond_1

    .line 28
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 32
    :cond_0
    new-instance v0, Lcom/google/android/libraries/launcherclient/b;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/b;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 26
    :cond_1
    return-object v0

    .line 29
    :cond_2
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_0

    .line 30
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 44
    :sswitch_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    .line 49
    :sswitch_1
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startScroll()V

    .line 51
    return v2

    .line 55
    :sswitch_2
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onScroll(F)V

    .line 59
    return v2

    .line 63
    :sswitch_3
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->endScroll()V

    .line 65
    return v2

    .line 69
    :sswitch_4
    const-string/jumbo v1, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    .line 82
    return v2

    .line 72
    :cond_0
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 86
    :sswitch_5
    const-string/jumbo v1, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 97
    return v2

    .line 89
    :cond_1
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1

    .line 101
    :sswitch_6
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 104
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowDetached(Z)V

    .line 105
    return v2

    :cond_2
    move v0, v2

    .line 103
    goto :goto_2

    .line 109
    :sswitch_7
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->closeOverlay(I)V

    .line 113
    return v2

    .line 117
    :sswitch_8
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onPause()V

    .line 119
    return v2

    .line 123
    :sswitch_9
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onResume()V

    .line 125
    return v2

    .line 129
    :sswitch_a
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->setActivityState(I)V

    .line 133
    return v2

    .line 137
    :sswitch_b
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->openOverlay(I)V

    .line 141
    return v2

    .line 145
    :sswitch_c
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    .line 148
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->requestVoiceDetection(Z)V

    .line 149
    return v2

    :cond_3
    move v1, v2

    .line 147
    goto :goto_3

    .line 153
    :sswitch_d
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v2

    .line 161
    :sswitch_e
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->isVoiceDetectionRunning()Z

    move-result v0

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-nez v0, :cond_4

    :goto_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return v2

    :cond_4
    move v1, v2

    .line 164
    goto :goto_4

    .line 169
    :sswitch_f
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->hasOverlayContent()Z

    move-result v0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-nez v0, :cond_5

    :goto_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    return v2

    :cond_5
    move v1, v2

    .line 172
    goto :goto_5

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_5
        0x10 -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
