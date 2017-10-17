.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/h;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public da:J

.field public db:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 697
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    .line 698
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/h;
    .locals 2

    .prologue
    .line 701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->cachedSize:I

    .line 704
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 721
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 722
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 724
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    const/4 v1, 0x1

    .line 723
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 726
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    if-eqz v1, :cond_1

    .line 728
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    const/4 v2, 0x2

    .line 727
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 730
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/h;
    .locals 2

    .prologue
    .line 738
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 739
    sparse-switch v0, :sswitch_data_0

    .line 743
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    return-object p0

    .line 741
    :sswitch_0
    return-object p0

    .line 749
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    goto :goto_0

    .line 753
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 710
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 711
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 713
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    if-eqz v0, :cond_1

    .line 714
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->db:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 716
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 717
    return-void
.end method
