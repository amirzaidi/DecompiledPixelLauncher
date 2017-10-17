.class public final Lcom/google/android/apps/nexuslauncher/reflection/d/l;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# static fields
.field private static volatile aS:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;


# instance fields
.field public aR:Ljava/lang/String;

.field public aT:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->clear()Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    .line 312
    return-void
.end method

.method public static emptyArray()[Lcom/google/android/apps/nexuslauncher/reflection/d/l;
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aS:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    if-nez v0, :cond_1

    .line 294
    sget-object v1, Lcom/google/protobuf/nano/d;->PH:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aS:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aS:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 301
    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aS:[Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/reflection/d/l;
    .locals 1

    .prologue
    .line 315
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->cachedSize:I

    .line 318
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    const/4 v2, 0x1

    .line 338
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->VW(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 342
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 341
    if-eq v1, v2, :cond_1

    .line 344
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    const/4 v2, 0x2

    .line 343
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vy(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/l;
    .locals 1

    .prologue
    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 355
    sparse-switch v0, :sswitch_data_0

    .line 359
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    return-object p0

    .line 357
    :sswitch_0
    return-object p0

    .line 365
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    goto :goto_0

    .line 369
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->WH()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    goto :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/reflection/d/l;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aR:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VT(ILjava/lang/String;)V

    .line 327
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 328
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 327
    if-eq v0, v1, :cond_1

    .line 329
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/l;->aT:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VS(IF)V

    .line 331
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 332
    return-void
.end method
