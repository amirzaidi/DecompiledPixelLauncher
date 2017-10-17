.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

.field public actionDurationMillis:J

.field public destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

.field public elapsedContainerMillis:J

.field public elapsedSessionMillis:J

.field public isInLandscapeMode:Z

.field public isInMultiWindowMode:Z

.field public srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 662
    invoke-virtual {p0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    .line 663
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 667
    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 668
    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 669
    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 670
    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 671
    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 672
    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    .line 673
    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->cachedSize:I

    .line 675
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 720
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 721
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-eqz v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v3, 0x1

    .line 722
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v0, v2

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 726
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 727
    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v0

    .line 728
    if-eqz v3, :cond_1

    .line 730
    const/4 v4, 0x2

    .line 729
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v3

    add-int/2addr v2, v3

    .line 726
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 735
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 736
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v1

    .line 737
    if-eqz v2, :cond_4

    .line 739
    const/4 v3, 0x3

    .line 738
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v0, v2

    .line 735
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    :cond_5
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    .line 745
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const/4 v1, 0x4

    .line 744
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 747
    :cond_6
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_7

    .line 749
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    const/4 v1, 0x5

    .line 748
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_7
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_8

    .line 753
    iget-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    const/4 v1, 0x6

    .line 752
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v1, :cond_9

    .line 757
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    const/4 v2, 0x7

    .line 756
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_9
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v1, :cond_a

    .line 761
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    const/16 v2, 0x8

    .line 760
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 771
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 772
    sparse-switch v0, :sswitch_data_0

    .line 776
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    return-object p0

    .line 774
    :sswitch_0
    return-object p0

    .line 782
    :sswitch_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-nez v0, :cond_1

    .line 783
    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 790
    :sswitch_2
    const/16 v0, 0x12

    .line 789
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_3

    move v0, v1

    .line 793
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 794
    if-eqz v0, :cond_2

    .line 795
    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 798
    new-instance v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v3}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v3, v2, v0

    .line 799
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 800
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    goto :goto_1

    .line 803
    :cond_4
    new-instance v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v3}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v3, v2, v0

    .line 804
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 805
    iput-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto :goto_0

    .line 810
    :sswitch_3
    const/16 v0, 0x1a

    .line 809
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 811
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v0, :cond_6

    move v0, v1

    .line 813
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 814
    if-eqz v0, :cond_5

    .line 815
    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 818
    new-instance v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v3}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v3, v2, v0

    .line 819
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 820
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    goto :goto_3

    .line 823
    :cond_7
    new-instance v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v3}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v3, v2, v0

    .line 824
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 825
    iput-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    .line 829
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    goto/16 :goto_0

    .line 833
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    goto/16 :goto_0

    .line 837
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    goto/16 :goto_0

    .line 841
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    goto/16 :goto_0

    .line 845
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    goto/16 :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 686
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v0

    .line 687
    if-eqz v2, :cond_1

    .line 688
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 685
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 693
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 694
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v0, v1

    .line 695
    if-eqz v0, :cond_3

    .line 696
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 693
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 700
    :cond_4
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 701
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 703
    :cond_5
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 704
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 706
    :cond_6
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 707
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 709
    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v0, :cond_8

    .line 710
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 712
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v0, :cond_9

    .line 713
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 715
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 716
    return-void
.end method
