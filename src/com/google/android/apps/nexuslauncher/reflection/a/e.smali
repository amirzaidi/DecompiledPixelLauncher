.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/e;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile aH:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;


# instance fields
.field public aI:[D

.field public aJ:Ljava/lang/String;

.field public aK:[J

.field public aL:[Ljava/lang/String;

.field public aM:J

.field public aN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 843
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    .line 844
    return-void
.end method

.method public static ao([B)Lcom/google/android/apps/nexuslauncher/reflection/a/e;
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/e;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    return-object v0
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/e;
    .locals 2

    .prologue
    .line 813
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aH:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    if-nez v0, :cond_1

    .line 814
    sget-object v1, Lcom/google/protobuf/nano/d;->La:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aH:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    if-nez v0, :cond_0

    .line 817
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aH:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 821
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aH:[Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    return-object v0

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/e;
    .locals 2

    .prologue
    .line 847
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    .line 848
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    .line 849
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    .line 850
    sget-object v0, Lcom/google/protobuf/nano/f;->Lg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    .line 851
    sget-object v0, Lcom/google/protobuf/nano/f;->Lj:[D

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    .line 852
    sget-object v0, Lcom/google/protobuf/nano/f;->Lc:[J

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    .line 853
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->cachedSize:I

    .line 854
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 892
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 893
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    .line 894
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    const/4 v3, 0x2

    .line 898
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 901
    :cond_1
    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 903
    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    const/4 v1, 0x3

    .line 902
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/nano/b;->RE(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 905
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v2

    move v3, v2

    move v4, v2

    .line 908
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 909
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 910
    if-eqz v5, :cond_3

    .line 911
    add-int/lit8 v4, v4, 0x1

    .line 912
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->Rv(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 908
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    :cond_4
    add-int/2addr v0, v3

    .line 917
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 919
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v1, v1

    if-lez v1, :cond_6

    .line 920
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 921
    add-int/2addr v0, v1

    .line 922
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 924
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    .line 926
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 927
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    aget-wide v4, v3, v2

    .line 928
    invoke-static {v4, v5}, Lcom/google/protobuf/nano/b;->RH(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 926
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    :cond_7
    add-int/2addr v0, v1

    .line 932
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 934
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/e;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 942
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 943
    sparse-switch v0, :sswitch_data_0

    .line 947
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    return-object p0

    .line 945
    :sswitch_0
    return-object p0

    .line 953
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    goto :goto_0

    .line 957
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    goto :goto_0

    .line 961
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    goto :goto_0

    .line 966
    :sswitch_4
    const/16 v0, 0x22

    .line 965
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 967
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 968
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 969
    if-eqz v0, :cond_1

    .line 970
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 973
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 974
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 972
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 967
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 977
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 978
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    goto :goto_0

    .line 983
    :sswitch_5
    const/16 v0, 0x29

    .line 982
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 984
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    if-nez v0, :cond_5

    move v0, v1

    .line 985
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [D

    .line 986
    if-eqz v0, :cond_4

    .line 987
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 989
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 990
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SA()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 991
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 984
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v0, v0

    goto :goto_3

    .line 994
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SA()D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 995
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    goto/16 :goto_0

    .line 999
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    .line 1000
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->St(I)I

    move-result v2

    .line 1001
    div-int/lit8 v3, v0, 0x8

    .line 1002
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    if-nez v0, :cond_8

    move v0, v1

    .line 1003
    :goto_5
    add-int/2addr v3, v0

    new-array v3, v3, [D

    .line 1004
    if-eqz v0, :cond_7

    .line 1005
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    :cond_7
    :goto_6
    array-length v4, v3

    if-ge v0, v4, :cond_9

    .line 1008
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SA()D

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1002
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v0, v0

    goto :goto_5

    .line 1010
    :cond_9
    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    .line 1011
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/c;->Sq(I)V

    goto/16 :goto_0

    .line 1016
    :sswitch_7
    const/16 v0, 0x30

    .line 1015
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SS(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 1017
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    if-nez v0, :cond_b

    move v0, v1

    .line 1018
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 1019
    if-eqz v0, :cond_a

    .line 1020
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1022
    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    .line 1023
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1024
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1017
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v0, v0

    goto :goto_7

    .line 1027
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 1028
    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    goto/16 :goto_0

    .line 1032
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sw()I

    move-result v0

    .line 1033
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->St(I)I

    move-result v3

    .line 1036
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ss()I

    move-result v2

    move v0, v1

    .line 1037
    :goto_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sv()I

    move-result v4

    if-lez v4, :cond_d

    .line 1038
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    .line 1039
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1041
    :cond_d
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/c;->SJ(I)V

    .line 1042
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    if-nez v2, :cond_f

    move v2, v1

    .line 1043
    :goto_a
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 1044
    if-eqz v2, :cond_e

    .line 1045
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    :cond_e
    :goto_b
    array-length v4, v0

    if-ge v2, v4, :cond_10

    .line 1048
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SE()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1042
    :cond_f
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v2, v2

    goto :goto_a

    .line 1050
    :cond_10
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    .line 1051
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Sq(I)V

    goto/16 :goto_0

    .line 943
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
        0x30 -> :sswitch_7
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/e;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 860
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aJ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aN:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 866
    :cond_1
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 867
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aM:J

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Sh(IJ)V

    .line 869
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 870
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 871
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aL:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 872
    if-eqz v2, :cond_3

    .line 873
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 870
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 878
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 879
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aI:[D

    aget-wide v2, v2, v0

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/nano/b;->Rp(ID)V

    .line 878
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v0, v0

    if-lez v0, :cond_6

    .line 883
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 884
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/e;->aK:[J

    aget-wide v2, v0, v1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->Sh(IJ)V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 887
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 888
    return-void
.end method
