.class public Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 272
    return-void
.end method


# virtual methods
.method public closeOverlay(I)V
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 324
    return-void
.end method

.method public endScroll()V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 291
    return-void
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    return-object v1
.end method

.method public hasOverlayContent()Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 380
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/google/android/aidl/a;->RY(Landroid/os/Parcel;)Z

    move-result v1

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    return v1
.end method

.method public isVoiceDetectionRunning()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 371
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/google/android/aidl/a;->RY(Landroid/os/Parcel;)Z

    move-result v1

    .line 373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 330
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 336
    return-void
.end method

.method public onScroll(F)V
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 285
    return-void
.end method

.method public openOverlay(I)V
    .locals 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 350
    return-void
.end method

.method public requestVoiceDetection(Z)V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->Sc(Landroid/os/Parcel;Z)V

    .line 356
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 357
    return-void
.end method

.method public setActivityState(I)V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 343
    return-void
.end method

.method public startScroll()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 278
    return-void
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 390
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->Sa(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 391
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/google/android/aidl/a;->RY(Landroid/os/Parcel;)Z

    move-result v1

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    return v1
.end method

.method public windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->Sa(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 298
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->Sb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 301
    return-void
.end method

.method public windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V
    .locals 2

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->Sa(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 308
    invoke-static {v0, p2}, Lcom/google/android/aidl/a;->Sb(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 309
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 310
    return-void
.end method

.method public windowDetached(Z)V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 315
    invoke-static {v0, p1}, Lcom/google/android/aidl/a;->Sc(Landroid/os/Parcel;Z)V

    .line 316
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 317
    return-void
.end method
