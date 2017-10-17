.class public final Lcom/google/android/apps/nexuslauncher/search/a/c;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public eA:Z

.field public em:I

.field public en:Lcom/google/android/apps/nexuslauncher/search/a/a;

.field public eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public ep:Ljava/lang/String;

.field public eq:Z

.field public er:Ljava/lang/String;

.field public es:I

.field public et:Lcom/google/android/apps/nexuslauncher/search/a/a;

.field public eu:Ljava/lang/String;

.field public ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

.field public ew:I

.field public ex:I

.field public ey:Ljava/lang/String;

.field public ez:Lcom/google/android/apps/nexuslauncher/search/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/a/c;->clear()Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 330
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/search/a/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 333
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    .line 334
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    .line 335
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    .line 336
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 338
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 339
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    .line 340
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/search/a/b;->emptyArray()[Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 341
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 342
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    .line 343
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    .line 344
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    .line 345
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    .line 346
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 347
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->cachedSize:I

    .line 349
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 411
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    if-eqz v2, :cond_0

    .line 413
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    const/4 v3, 0x1

    .line 412
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 415
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    const/4 v3, 0x2

    .line 416
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    const/4 v3, 0x3

    .line 420
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v2, :cond_3

    .line 425
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/4 v3, 0x4

    .line 424
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v0, v2

    .line 427
    :cond_3
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    if-eqz v2, :cond_4

    .line 429
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    const/4 v3, 0x5

    .line 428
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 431
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    array-length v2, v2

    if-lez v2, :cond_7

    move v4, v1

    move v1, v0

    move v0, v4

    .line 432
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 433
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    aget-object v2, v2, v0

    .line 434
    if-eqz v2, :cond_5

    .line 436
    const/4 v3, 0x6

    .line 435
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v1, v2

    .line 432
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 440
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v1, :cond_8

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/4 v2, 0x7

    .line 441
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 446
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    const/16 v2, 0x8

    .line 445
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_9
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    if-eqz v1, :cond_a

    .line 450
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    const/16 v2, 0x9

    .line 449
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_a
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    if-eqz v1, :cond_b

    .line 454
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    const/16 v2, 0xa

    .line 453
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 458
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    const/16 v2, 0xb

    .line 457
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v1, :cond_d

    .line 462
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/16 v2, 0xc

    .line 461
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_d
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    if-eqz v1, :cond_e

    .line 466
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    const/16 v2, 0xd

    .line 465
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v1, :cond_f

    .line 470
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/16 v2, 0xe

    .line 469
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    if-eqz v1, :cond_10

    .line 474
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    const/16 v2, 0xf

    .line 473
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_10
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/c;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 485
    sparse-switch v0, :sswitch_data_0

    .line 489
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    return-object p0

    .line 487
    :sswitch_0
    return-object p0

    .line 495
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    goto :goto_0

    .line 499
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    goto :goto_0

    .line 503
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    goto :goto_0

    .line 507
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-nez v0, :cond_1

    .line 508
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 514
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    goto :goto_0

    .line 519
    :sswitch_6
    const/16 v0, 0x32

    .line 518
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 520
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_3

    move v0, v1

    .line 522
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 523
    if-eqz v0, :cond_2

    .line 524
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 527
    new-instance v3, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 528
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 529
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 526
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    array-length v0, v0

    goto :goto_1

    .line 532
    :cond_4
    new-instance v3, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    aput-object v3, v2, v0

    .line 533
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 534
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto :goto_0

    .line 538
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-nez v0, :cond_5

    .line 539
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 541
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 545
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    goto/16 :goto_0

    .line 549
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    goto/16 :goto_0

    .line 553
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    goto/16 :goto_0

    .line 557
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    goto/16 :goto_0

    .line 561
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-nez v0, :cond_6

    .line 562
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 568
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    goto/16 :goto_0

    .line 572
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-nez v0, :cond_7

    .line 573
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 575
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 579
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    goto/16 :goto_0

    .line 485
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/a/c;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/search/a/c;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    if-eqz v1, :cond_0

    .line 356
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 367
    :cond_3
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    if-eqz v1, :cond_4

    .line 368
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    aget-object v1, v1, v0

    .line 373
    if-eqz v1, :cond_5

    .line 374
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 371
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v0, :cond_7

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 381
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 384
    :cond_8
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    if-eqz v0, :cond_9

    .line 385
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 387
    :cond_9
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    if-eqz v0, :cond_a

    .line 388
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 393
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v0, :cond_c

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 396
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    if-eqz v0, :cond_d

    .line 397
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 399
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v0, :cond_e

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 402
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    if-eqz v0, :cond_f

    .line 403
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 405
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 406
    return-void
.end method
