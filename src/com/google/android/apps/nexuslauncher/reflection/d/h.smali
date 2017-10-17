.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/h;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public aA:D

.field public aB:J

.field public az:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 716
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    .line 717
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/h;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 720
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    .line 721
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    .line 722
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    .line 723
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->cachedSize:I

    .line 724
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 746
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 747
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 749
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    const/4 v1, 0x1

    .line 748
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 752
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 751
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 754
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    const/4 v1, 0x2

    .line 753
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->VE(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_1
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 757
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 756
    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 759
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    const/4 v1, 0x3

    .line 758
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->VE(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/h;
    .locals 2

    .prologue
    .line 769
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 770
    sparse-switch v0, :sswitch_data_0

    .line 774
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    return-object p0

    .line 772
    :sswitch_0
    return-object p0

    .line 780
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    goto :goto_0

    .line 784
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wv()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    goto :goto_0

    .line 788
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wv()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    goto :goto_0

    .line 770
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/h;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 730
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 731
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aB:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 733
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 734
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 733
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 735
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->az:D

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Vk(ID)V

    .line 737
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 738
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 737
    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 739
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/h;->aA:D

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Vk(ID)V

    .line 741
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 742
    return-void
.end method
