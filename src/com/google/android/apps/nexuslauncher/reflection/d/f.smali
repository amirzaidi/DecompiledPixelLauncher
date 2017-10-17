.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/f;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public av:J

.field public aw:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 405
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    .line 406
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/f;
    .locals 2

    .prologue
    .line 409
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    .line 410
    sget-object v0, Lcom/google/protobuf/nano/f;->PO:[I

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->cachedSize:I

    .line 412
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 431
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 432
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 434
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    .line 433
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    .line 438
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    aget v3, v3, v1

    .line 440
    invoke-static {v3}, Lcom/google/protobuf/nano/b;->Vr(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_1
    add-int/2addr v0, v2

    .line 444
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 446
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/f;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 455
    sparse-switch v0, :sswitch_data_0

    .line 459
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    return-object p0

    .line 457
    :sswitch_0
    return-object p0

    .line 465
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    goto :goto_0

    .line 470
    :sswitch_2
    const/16 v0, 0x10

    .line 469
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v4

    .line 471
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 473
    :goto_1
    if-ge v3, v4, :cond_2

    .line 474
    if-eqz v3, :cond_1

    .line 475
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v6

    .line 478
    packed-switch v6, :pswitch_data_0

    move v0, v1

    .line 473
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 491
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 495
    :cond_2
    if-eqz v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    if-nez v0, :cond_3

    move v0, v2

    .line 497
    :goto_3
    if-nez v0, :cond_4

    array-length v3, v5

    if-ne v1, v3, :cond_4

    .line 498
    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v0, v0

    goto :goto_3

    .line 500
    :cond_4
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 501
    if-eqz v0, :cond_5

    .line 502
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    :cond_5
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    goto :goto_0

    .line 511
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wr()I

    move-result v0

    .line 512
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Wo(I)I

    move-result v3

    .line 515
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wn()I

    move-result v1

    move v0, v2

    .line 516
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wq()I

    move-result v4

    if-lez v4, :cond_6

    .line 517
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    .line 530
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 531
    goto :goto_4

    .line 534
    :cond_6
    if-eqz v0, :cond_a

    .line 535
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/c;->WE(I)V

    .line 536
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    if-nez v1, :cond_8

    move v1, v2

    .line 537
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 538
    if-eqz v1, :cond_7

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wq()I

    move-result v0

    if-lez v0, :cond_9

    .line 542
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v5

    .line 543
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 556
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    .line 557
    goto :goto_6

    .line 536
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v1, v1

    goto :goto_5

    .line 560
    :cond_9
    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    .line 562
    :cond_a
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Wl(I)V

    goto/16 :goto_0

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 478
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 517
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 543
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 419
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->av:J

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v1, v1

    if-lez v1, :cond_1

    .line 422
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->aw:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 427
    return-void
.end method
