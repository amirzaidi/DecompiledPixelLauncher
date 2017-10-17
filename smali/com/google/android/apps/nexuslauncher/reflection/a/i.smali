.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/i;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

.field public ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

.field public bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

.field public bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

.field public bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

.field public be:I

.field public bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    .line 428
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/i;
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    .line 432
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 433
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 434
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 435
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 436
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;->emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->cachedSize:I

    .line 439
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 497
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    if-eqz v2, :cond_0

    .line 499
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    const/4 v3, 0x1

    .line 498
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->RF(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 502
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v3, v3, v0

    .line 504
    if-eqz v3, :cond_1

    .line 506
    const/4 v4, 0x2

    .line 505
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 502
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 510
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 511
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 512
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v3, v3, v0

    .line 513
    if-eqz v3, :cond_4

    .line 515
    const/4 v4, 0x3

    .line 514
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 511
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 519
    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    .line 520
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 521
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v3, v3, v0

    .line 522
    if-eqz v3, :cond_7

    .line 524
    const/4 v4, 0x4

    .line 523
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 520
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    .line 528
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-lez v2, :cond_c

    move v2, v0

    move v0, v1

    .line 529
    :goto_3
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 530
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v3, v3, v0

    .line 531
    if-eqz v3, :cond_a

    .line 533
    const/4 v4, 0x5

    .line 532
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 529
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v2

    .line 537
    :cond_c
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-lez v2, :cond_e

    .line 538
    :goto_4
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 539
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v2, v2, v1

    .line 540
    if-eqz v2, :cond_d

    .line 542
    const/4 v3, 0x6

    .line 541
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v0, v2

    .line 538
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 546
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    if-eqz v1, :cond_f

    .line 548
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    const/4 v2, 0x7

    .line 547
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Rt(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    :cond_f
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/i;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 559
    sparse-switch v0, :sswitch_data_0

    .line 563
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    return-object p0

    .line 561
    :sswitch_0
    return-object p0

    .line 569
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SK()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    goto :goto_0

    .line 574
    :sswitch_2
    const/16 v0, 0x12

    .line 573
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-nez v0, :cond_2

    move v0, v1

    .line 577
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 578
    if-eqz v0, :cond_1

    .line 579
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 581
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 582
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 583
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 584
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    goto :goto_1

    .line 587
    :cond_3
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 588
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 589
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    goto :goto_0

    .line 594
    :sswitch_3
    const/16 v0, 0x1a

    .line 593
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 595
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-nez v0, :cond_5

    move v0, v1

    .line 597
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 598
    if-eqz v0, :cond_4

    .line 599
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 602
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 603
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 604
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    goto :goto_3

    .line 607
    :cond_6
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 608
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 609
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    goto/16 :goto_0

    .line 614
    :sswitch_4
    const/16 v0, 0x22

    .line 613
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 615
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-nez v0, :cond_8

    move v0, v1

    .line 617
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 618
    if-eqz v0, :cond_7

    .line 619
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 622
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 623
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 615
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    goto :goto_5

    .line 627
    :cond_9
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 628
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 629
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    goto/16 :goto_0

    .line 634
    :sswitch_5
    const/16 v0, 0x2a

    .line 633
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 635
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-nez v0, :cond_b

    move v0, v1

    .line 637
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 638
    if-eqz v0, :cond_a

    .line 639
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 642
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 643
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 644
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 635
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    goto :goto_7

    .line 647
    :cond_c
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 648
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 649
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    goto/16 :goto_0

    .line 654
    :sswitch_6
    const/16 v0, 0x32

    .line 653
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 655
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-nez v0, :cond_e

    move v0, v1

    .line 657
    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    .line 658
    if-eqz v0, :cond_d

    .line 659
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    .line 662
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 663
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 664
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 655
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    goto :goto_9

    .line 667
    :cond_f
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/h;-><init>()V

    aput-object v3, v2, v0

    .line 668
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    .line 669
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    goto/16 :goto_0

    .line 673
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    if-nez v0, :cond_10

    .line 674
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    .line 676
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->SB(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 559
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/i;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 445
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->be:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RA(II)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->ba:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v2, v2, v0

    .line 451
    if-eqz v2, :cond_1

    .line 452
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 449
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 457
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 458
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bb:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v2, v2, v0

    .line 459
    if-eqz v2, :cond_3

    .line 460
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 457
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 464
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    .line 465
    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 466
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bd:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v2, v2, v0

    .line 467
    if-eqz v2, :cond_5

    .line 468
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 465
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 473
    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 474
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bf:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v2, v2, v0

    .line 475
    if-eqz v2, :cond_7

    .line 476
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 473
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 480
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 481
    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->bc:[Lcom/google/android/apps/nexuslauncher/reflection/a/h;

    aget-object v0, v0, v1

    .line 483
    if-eqz v0, :cond_9

    .line 484
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 481
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 488
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    if-eqz v0, :cond_b

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/i;->aZ:Lcom/google/android/apps/nexuslauncher/reflection/a/j;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RP(ILcom/google/protobuf/nano/a;)V

    .line 491
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 492
    return-void
.end method
