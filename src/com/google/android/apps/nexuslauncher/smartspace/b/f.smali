.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/f;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public cV:Ljava/lang/String;

.field public cW:Ljava/lang/String;

.field public cX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    .line 474
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/f;
    .locals 1

    .prologue
    .line 477
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    .line 478
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    .line 479
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    .line 480
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cachedSize:I

    .line 481
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 501
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    const/4 v2, 0x1

    .line 503
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    const/4 v2, 0x2

    .line 507
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    const/4 v2, 0x3

    .line 511
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/f;
    .locals 1

    .prologue
    .line 522
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 523
    sparse-switch v0, :sswitch_data_0

    .line 527
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    return-object p0

    .line 525
    :sswitch_0
    return-object p0

    .line 533
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    goto :goto_0

    .line 537
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    goto :goto_0

    .line 541
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    goto :goto_0

    .line 523
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cV:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;->cW:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 496
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 497
    return-void
.end method
