.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/g;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public cY:I

.field public cZ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    .line 592
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/g;
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    .line 596
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    .line 597
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cachedSize:I

    .line 598
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 616
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    if-eqz v1, :cond_0

    .line 618
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    const/4 v2, 0x1

    .line 617
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    const/4 v2, 0x2

    .line 621
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/g;
    .locals 1

    .prologue
    .line 632
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 633
    sparse-switch v0, :sswitch_data_0

    .line 637
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    return-object p0

    .line 635
    :sswitch_0
    return-object p0

    .line 643
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 644
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 648
    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    goto :goto_0

    .line 654
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    goto :goto_0

    .line 633
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    if-eqz v0, :cond_0

    .line 605
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 610
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 611
    return-void
.end method
