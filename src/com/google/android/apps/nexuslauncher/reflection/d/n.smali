.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/n;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public bb:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 716
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/n;

    .line 717
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/n;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/google/protobuf/nano/f;->PQ:[D

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    .line 721
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->cachedSize:I

    .line 722
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 2

    .prologue
    .line 738
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 739
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v1, v1

    if-lez v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 741
    add-int/2addr v0, v1

    .line 742
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 744
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/n;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 752
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 753
    sparse-switch v0, :sswitch_data_0

    .line 757
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    return-object p0

    .line 755
    :sswitch_0
    return-object p0

    .line 764
    :sswitch_1
    const/16 v0, 0x9

    .line 763
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 765
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    if-nez v0, :cond_2

    move v0, v1

    .line 766
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [D

    .line 767
    if-eqz v0, :cond_1

    .line 768
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 771
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wv()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 772
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v0, v0

    goto :goto_1

    .line 775
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wv()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 776
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    goto :goto_0

    .line 780
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wr()I

    move-result v0

    .line 781
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Wo(I)I

    move-result v2

    .line 782
    div-int/lit8 v3, v0, 0x8

    .line 783
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    if-nez v0, :cond_5

    move v0, v1

    .line 784
    :goto_3
    add-int/2addr v3, v0

    new-array v3, v3, [D

    .line 785
    if-eqz v0, :cond_4

    .line 786
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    :cond_4
    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 789
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wv()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 783
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v0, v0

    goto :goto_3

    .line 791
    :cond_6
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    .line 792
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/c;->Wl(I)V

    goto :goto_0

    .line 753
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/n;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 728
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v1, v1

    if-lez v1, :cond_0

    .line 729
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 730
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/n;->bb:[D

    aget-wide v2, v1, v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vk(ID)V

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 734
    return-void
.end method
