.class Lcom/google/android/libraries/launcherclient/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# instance fields
.field private KJ:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    .line 184
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    return-object v0
.end method

.method public closeOverlay(I)V
    .locals 5

    .prologue
    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 314
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public endScroll()V
    .locals 5

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 408
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 410
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 414
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    return-object v0

    .line 414
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public hasOverlayContent()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 448
    :try_start_0
    const-string/jumbo v3, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    iget-object v3, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 450
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 454
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    return v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isVoiceDetectionRunning()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 428
    :try_start_0
    const-string/jumbo v3, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    iget-object v3, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 430
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 434
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    return v0

    .line 431
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 347
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 351
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onScroll(F)V
    .locals 5

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 217
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 219
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public openOverlay(I)V
    .locals 5

    .prologue
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestVoiceDetection(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 394
    :try_start_0
    const-string/jumbo v3, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-interface {v0, v3, v2, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 401
    return-void

    :cond_0
    move v0, v1

    .line 395
    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setActivityState(I)V
    .locals 5

    .prologue
    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    return-void

    .line 368
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startScroll()V
    .locals 5

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    :try_start_0
    const-string/jumbo v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 251
    :try_start_0
    const-string/jumbo v2, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    if-nez p1, :cond_0

    .line 257
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 260
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    return-void

    .line 253
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 259
    :cond_1
    :try_start_2
    invoke-interface {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;->asBinder()Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    :try_start_0
    const-string/jumbo v2, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    if-nez p1, :cond_0

    .line 281
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    return-void

    .line 277
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 283
    :cond_1
    :try_start_2
    invoke-interface {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;->asBinder()Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public windowDetached(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 299
    :try_start_0
    const-string/jumbo v3, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/b;->KJ:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v0, v3, v2, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 306
    return-void

    :cond_0
    move v0, v1

    .line 300
    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
