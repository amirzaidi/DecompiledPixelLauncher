.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/c;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public aC:Ljava/lang/String;

.field public aD:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 614
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/c;

    .line 615
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/c;
    .locals 2

    .prologue
    .line 618
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    .line 619
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    .line 620
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->cachedSize:I

    .line 621
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 638
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 639
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 641
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    const/4 v1, 0x1

    .line 640
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->RE(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    const/4 v2, 0x2

    .line 644
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/c;
    .locals 2

    .prologue
    .line 655
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 656
    sparse-switch v0, :sswitch_data_0

    .line 660
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    return-object p0

    .line 658
    :sswitch_0
    return-object p0

    .line 666
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    goto :goto_0

    .line 670
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    goto :goto_0

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/c;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 627
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 628
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aD:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Sh(IJ)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->aC:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 633
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 634
    return-void
.end method
