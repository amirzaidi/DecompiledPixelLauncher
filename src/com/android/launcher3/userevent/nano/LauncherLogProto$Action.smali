.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public command:I

.field public dir:I

.field public isOutside:Z

.field public touch:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 475
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 478
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    .line 479
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    .line 480
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 481
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    .line 482
    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->cachedSize:I

    .line 484
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 511
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    if-eqz v1, :cond_0

    .line 513
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    const/4 v2, 0x1

    .line 512
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_0
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v1, :cond_1

    .line 517
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    const/4 v2, 0x2

    .line 516
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_1
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v1, :cond_2

    .line 521
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    const/4 v2, 0x3

    .line 520
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_2
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v1, :cond_3

    .line 525
    iget v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    const/4 v2, 0x4

    .line 524
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v1, :cond_4

    .line 529
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    const/4 v2, 0x5

    .line 528
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;
    .locals 1

    .prologue
    .line 539
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 540
    sparse-switch v0, :sswitch_data_0

    .line 544
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    return-object p0

    .line 542
    :sswitch_0
    return-object p0

    .line 550
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 551
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 555
    :pswitch_0
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    goto :goto_0

    .line 561
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 562
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 569
    :pswitch_1
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    goto :goto_0

    .line 575
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 576
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 582
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    goto :goto_0

    .line 588
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 589
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 595
    :pswitch_3
    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    goto :goto_0

    .line 601
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    goto :goto_0

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 562
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 576
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 589
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    if-eqz v0, :cond_0

    .line 491
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 493
    :cond_0
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    if-eqz v0, :cond_1

    .line 494
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->touch:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 496
    :cond_1
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    if-eqz v0, :cond_2

    .line 497
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 499
    :cond_2
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    if-eqz v0, :cond_3

    .line 500
    iget v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->command:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 502
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    if-eqz v0, :cond_4

    .line 503
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 505
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 506
    return-void
.end method
