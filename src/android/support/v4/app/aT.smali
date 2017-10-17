.class public Landroid/support/v4/app/aT;
.super Landroid/support/v4/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field aeb:Z

.field aec:Z

.field aed:Z

.field aee:Landroid/app/Dialog;

.field aef:Z

.field aeg:I

.field aeh:Z

.field aei:I

.field aej:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 89
    iput v0, p0, Landroid/support/v4/app/aT;->aeg:I

    .line 90
    iput v0, p0, Landroid/support/v4/app/aT;->aei:I

    .line 91
    iput-boolean v1, p0, Landroid/support/v4/app/aT;->aec:Z

    .line 92
    iput-boolean v1, p0, Landroid/support/v4/app/aT;->aeh:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/aT;->aej:I

    .line 101
    return-void
.end method


# virtual methods
.method public ajF(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->ajF(Landroid/content/Context;)V

    .line 271
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aef:Z

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iput-boolean v1, p0, Landroid/support/v4/app/aT;->aed:Z

    goto :goto_0
.end method

.method public ajH(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->ajH(Landroid/os/Bundle;)V

    .line 383
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Landroid/support/v4/app/aT;->akv()Landroid/view/View;

    move-result-object v0

    .line 388
    if-nez v0, :cond_2

    .line 395
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/aT;->getActivity()Landroid/support/v4/app/a;

    move-result-object v0

    .line 396
    if-nez v0, :cond_4

    .line 399
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/aT;->aec:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 400
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 401
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 402
    if-nez p1, :cond_5

    .line 408
    :cond_0
    :goto_2
    return-void

    .line 384
    :cond_1
    return-void

    .line 389
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 393
    iget-object v1, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 390
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 403
    :cond_5
    const-string/jumbo v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public ajJ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Landroid/support/v4/app/aT;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    .line 312
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/aT;->XU:Landroid/support/v4/app/r;

    invoke-virtual {v0}, Landroid/support/v4/app/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->ajJ(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 313
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    iget v1, p0, Landroid/support/v4/app/aT;->aeg:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/aT;->ark(Landroid/app/Dialog;I)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public akF()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    invoke-super {p0}, Landroid/support/v4/app/g;->akF()V

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aeb:Z

    .line 465
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 466
    iput-object v1, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public akX()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/support/v4/app/g;->akX()V

    .line 281
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aef:Z

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aed:Z

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aed:Z

    goto :goto_0
.end method

.method public ari()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/support/v4/app/aT;->aei:I

    return v0
.end method

.method public arj(Z)V
    .locals 0

    .prologue
    .line 258
    iput-boolean p1, p0, Landroid/support/v4/app/aT;->aeh:Z

    .line 259
    return-void
.end method

.method public ark(Landroid/app/Dialog;I)V
    .locals 2

    .prologue
    .line 325
    packed-switch p2, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 327
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 333
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method arl(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 185
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aed:Z

    if-nez v0, :cond_0

    .line 188
    iput-boolean v2, p0, Landroid/support/v4/app/aT;->aed:Z

    .line 189
    iput-boolean v1, p0, Landroid/support/v4/app/aT;->aef:Z

    .line 190
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 194
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/app/aT;->aeb:Z

    .line 195
    iget v0, p0, Landroid/support/v4/app/aT;->aej:I

    if-gez v0, :cond_2

    .line 200
    invoke-virtual {p0}, Landroid/support/v4/app/aT;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aW;->aqh()Landroid/support/v4/app/z;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p0}, Landroid/support/v4/app/z;->alL(Landroid/support/v4/app/g;)Landroid/support/v4/app/z;

    .line 202
    if-nez p1, :cond_3

    .line 205
    invoke-virtual {v0}, Landroid/support/v4/app/z;->commit()I

    .line 208
    :goto_1
    return-void

    .line 186
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 192
    iput-object v3, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/aT;->alk()Landroid/support/v4/app/aW;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/aT;->aej:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aW;->aqE(II)V

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/aT;->aej:I

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/z;->alM()I

    goto :goto_1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 293
    iget v0, p0, Landroid/support/v4/app/aT;->Yc:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    .line 295
    if-nez p1, :cond_1

    .line 302
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    .line 296
    :cond_1
    const-string/jumbo v0, "android:style"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/aT;->aeg:I

    .line 297
    const-string/jumbo v0, "android:theme"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/aT;->aei:I

    .line 298
    const-string/jumbo v0, "android:cancelable"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aec:Z

    .line 299
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    const-string/jumbo v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    .line 300
    const-string/jumbo v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/aT;->aej:I

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/aT;->getActivity()Landroid/support/v4/app/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/aT;->ari()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeb:Z

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/aT;->arl(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 423
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v4/app/aT;->aeg:I

    if-nez v0, :cond_2

    .line 432
    :goto_1
    iget v0, p0, Landroid/support/v4/app/aT;->aei:I

    if-nez v0, :cond_3

    .line 435
    :goto_2
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aec:Z

    if-eqz v0, :cond_4

    .line 438
    :goto_3
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    if-eqz v0, :cond_5

    .line 441
    :goto_4
    iget v0, p0, Landroid/support/v4/app/aT;->aej:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 444
    :goto_5
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    const-string/jumbo v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 430
    :cond_2
    iget v0, p0, Landroid/support/v4/app/aT;->aeg:I

    const-string/jumbo v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 433
    :cond_3
    iget v0, p0, Landroid/support/v4/app/aT;->aei:I

    const-string/jumbo v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 436
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aec:Z

    const-string/jumbo v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 439
    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/app/aT;->aeh:Z

    const-string/jumbo v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 442
    :cond_6
    iget v0, p0, Landroid/support/v4/app/aT;->aej:I

    const-string/jumbo v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/support/v4/app/g;->onStart()V

    .line 414
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aeb:Z

    .line 416
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/support/v4/app/g;->onStop()V

    .line 449
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aT;->aee:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    goto :goto_0
.end method

.method public rg(Landroid/support/v4/app/aW;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aed:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aT;->aef:Z

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/aW;->aqh()Landroid/support/v4/app/z;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/z;->alN(Landroid/support/v4/app/g;Ljava/lang/String;)Landroid/support/v4/app/z;

    .line 143
    invoke-virtual {v0}, Landroid/support/v4/app/z;->commit()I

    .line 144
    return-void
.end method
