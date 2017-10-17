.class public final Lcom/google/android/apps/nexuslauncher/reflection/a/m;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile bw:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;


# instance fields
.field public bv:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 495
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->clear()Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    .line 496
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/a/m;
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bw:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    if-nez v0, :cond_1

    .line 478
    sget-object v1, Lcom/google/protobuf/nano/d;->La:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bw:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bw:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 485
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bw:[Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    return-object v0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/a/m;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    .line 500
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    .line 501
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->cachedSize:I

    .line 502
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 519
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 520
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    if-eqz v1, :cond_0

    .line 522
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    const/4 v2, 0x1

    .line 521
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->RF(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    const/4 v2, 0x2

    .line 525
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Sb(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 528
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/m;
    .locals 1

    .prologue
    .line 536
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v0

    .line 537
    sparse-switch v0, :sswitch_data_0

    .line 541
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->SW(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    return-object p0

    .line 539
    :sswitch_0
    return-object p0

    .line 547
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SK()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    goto :goto_0

    .line 551
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->SG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    goto :goto_0

    .line 537
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
    .line 531
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/a/m;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 508
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    if-eqz v0, :cond_0

    .line 509
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->bv:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RA(II)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/a/m;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->RY(ILjava/lang/String;)V

    .line 514
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 515
    return-void
.end method
