.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    .line 156
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p0, :cond_0

    .line 163
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v1, :cond_1

    .line 167
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 161
    :cond_0
    return-object v0

    .line 165
    :cond_1
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 263
    :pswitch_0
    return v1

    .line 174
    :cond_0
    return v3

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startScroll()V

    .line 266
    :goto_0
    return v3

    .line 182
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onScroll(F)V

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->endScroll()V

    goto :goto_0

    .line 191
    :pswitch_4
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/a;->RZ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_0

    .line 198
    :pswitch_5
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/a;->RZ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    goto :goto_0

    .line 204
    :pswitch_6
    invoke-static {p2}, Lcom/google/android/aidl/a;->RY(Landroid/os/Parcel;)Z

    move-result v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowDetached(Z)V

    goto :goto_0

    .line 209
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->closeOverlay(I)V

    goto :goto_0

    .line 214
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onPause()V

    goto :goto_0

    .line 218
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onResume()V

    goto :goto_0

    .line 222
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->setActivityState(I)V

    goto :goto_0

    .line 227
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->openOverlay(I)V

    goto :goto_0

    .line 232
    :pswitch_c
    invoke-static {p2}, Lcom/google/android/aidl/a;->RY(Landroid/os/Parcel;)Z

    move-result v0

    .line 233
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->requestVoiceDetection(Z)V

    goto :goto_0

    .line 237
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->isVoiceDetectionRunning()Z

    move-result v0

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-static {p3, v0}, Lcom/google/android/aidl/a;->Sc(Landroid/os/Parcel;Z)V

    goto :goto_0

    .line 249
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->hasOverlayContent()Z

    move-result v0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-static {p3, v0}, Lcom/google/android/aidl/a;->Sc(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 255
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 256
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/a;->RZ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 257
    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startSearch([BLandroid/os/Bundle;)Z

    move-result v0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-static {p3, v0}, Lcom/google/android/aidl/a;->Sc(Landroid/os/Parcel;Z)V

    goto/16 :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_5
        :pswitch_0
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
