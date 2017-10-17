.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/d;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile af:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;


# instance fields
.field public ag:J

.field public key:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 594
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    .line 595
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/d/d;
    .locals 2

    .prologue
    .line 576
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->af:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    if-nez v0, :cond_1

    .line 577
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->af:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->af:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 584
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->af:[Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    return-object v0

    .line 577
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/d;
    .locals 2

    .prologue
    .line 598
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    .line 599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->cachedSize:I

    .line 601
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 618
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 619
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    if-eqz v1, :cond_0

    .line 621
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    const/4 v2, 0x1

    .line 620
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VA(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_0
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 625
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    const/4 v1, 0x2

    .line 624
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->Vz(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/d;
    .locals 2

    .prologue
    .line 635
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 636
    sparse-switch v0, :sswitch_data_0

    .line 640
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    return-object p0

    .line 638
    :sswitch_0
    return-object p0

    .line 646
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WF()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    goto :goto_0

    .line 650
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Wz()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    goto :goto_0

    .line 636
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
    .line 630
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    if-eqz v0, :cond_0

    .line 608
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->key:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->Vv(II)V

    .line 610
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 611
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;->ag:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/b;->Wc(IJ)V

    .line 613
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 614
    return-void
.end method
