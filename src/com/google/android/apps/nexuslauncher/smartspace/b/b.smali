.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/b;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile cI:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;


# instance fields
.field public cA:I

.field public cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

.field public cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

.field public cD:J

.field public cE:J

.field public cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

.field public cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

.field public cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

.field public cJ:I

.field public cK:J

.field public cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

.field public cy:Z

.field public cz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 826
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 827
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;
    .locals 2

    .prologue
    .line 775
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cI:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-nez v0, :cond_1

    .line 776
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cI:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cI:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 783
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cI:[Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    return-object v0

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/b;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 830
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    .line 831
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    .line 832
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    .line 833
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 834
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 835
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 836
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    .line 837
    iput v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    .line 838
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    .line 839
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    .line 840
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    .line 841
    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    .line 842
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cachedSize:I

    .line 844
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 894
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 895
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    if-eqz v1, :cond_0

    .line 897
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    const/4 v2, 0x1

    .line 896
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VL(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    if-eqz v1, :cond_1

    .line 901
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    const/4 v2, 0x2

    .line 900
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v1, :cond_2

    .line 905
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v2, 0x3

    .line 904
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v1, :cond_3

    .line 909
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v2, 0x4

    .line 908
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 911
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v1, :cond_4

    .line 913
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v2, 0x5

    .line 912
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 915
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    if-eqz v1, :cond_5

    .line 917
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    const/4 v2, 0x6

    .line 916
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 919
    :cond_5
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    if-eqz v1, :cond_6

    .line 921
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    const/4 v2, 0x7

    .line 920
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 923
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    if-eqz v1, :cond_7

    .line 925
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    const/16 v2, 0x8

    .line 924
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 927
    :cond_7
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 929
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    const/16 v1, 0x9

    .line 928
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 931
    :cond_8
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 933
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    const/16 v1, 0xa

    .line 932
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 935
    :cond_9
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 937
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    const/16 v1, 0xb

    .line 936
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 939
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    if-eqz v1, :cond_b

    .line 941
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    const/16 v2, 0xc

    .line 940
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_b
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    if-eqz v1, :cond_c

    .line 945
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    const/16 v2, 0xd

    .line 944
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_c
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/b;
    .locals 2

    .prologue
    .line 955
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 956
    sparse-switch v0, :sswitch_data_0

    .line 960
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    return-object p0

    .line 958
    :sswitch_0
    return-object p0

    .line 966
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    goto :goto_0

    .line 970
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    goto :goto_0

    .line 974
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-nez v0, :cond_1

    .line 975
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 981
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-nez v0, :cond_2

    .line 982
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 988
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-nez v0, :cond_3

    .line 989
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 991
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 995
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    if-nez v0, :cond_4

    .line 996
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    .line 998
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 1002
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 1003
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1011
    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    goto :goto_0

    .line 1017
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    if-nez v0, :cond_5

    .line 1018
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    .line 1020
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 1024
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    goto/16 :goto_0

    .line 1028
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    goto/16 :goto_0

    .line 1032
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    goto/16 :goto_0

    .line 1036
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    if-nez v0, :cond_6

    .line 1037
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    .line 1039
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto/16 :goto_0

    .line 1043
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    .line 1044
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1048
    :pswitch_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    goto/16 :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1044
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 950
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 850
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    if-eqz v0, :cond_0

    .line 851
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cy:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VG(IZ)V

    .line 853
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    if-eqz v0, :cond_1

    .line 854
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cJ:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v0, :cond_4

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 865
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    if-eqz v0, :cond_5

    .line 866
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cx:Lcom/google/android/apps/nexuslauncher/smartspace/b/f;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 868
    :cond_5
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    if-eqz v0, :cond_6

    .line 869
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cA:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    if-eqz v0, :cond_7

    .line 872
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 874
    :cond_7
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    .line 875
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cK:J

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 877
    :cond_8
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 878
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 880
    :cond_9
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 881
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 883
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    if-eqz v0, :cond_b

    .line 884
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 886
    :cond_b
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    if-eqz v0, :cond_c

    .line 887
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cz:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 889
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 890
    return-void
.end method
