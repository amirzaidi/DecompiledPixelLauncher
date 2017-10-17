.class public final Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->clear()Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;

    .line 337
    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;->emptyArray()[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->cachedSize:I

    .line 342
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aget-object v2, v2, v0

    .line 365
    if-eqz v2, :cond_0

    .line 367
    const/4 v3, 0x1

    .line 366
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v2

    add-int/2addr v1, v2

    .line 363
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 379
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 380
    sparse-switch v0, :sswitch_data_0

    .line 384
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    return-object p0

    .line 382
    :sswitch_0
    return-object p0

    .line 391
    :sswitch_1
    const/16 v0, 0xa

    .line 390
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WN(Lcom/google/protobuf/nano/c;I)I

    move-result v2

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-nez v0, :cond_2

    move v0, v1

    .line 394
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    .line 395
    if-eqz v0, :cond_1

    .line 396
    iget-object v3, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 399
    new-instance v3, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v3}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    aput-object v3, v2, v0

    .line 400
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 401
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v0, v0

    goto :goto_1

    .line 404
    :cond_3
    new-instance v3, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    invoke-direct {v3}, Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;-><init>()V

    aput-object v3, v2, v0

    .line 405
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    .line 406
    iput-object v2, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    goto :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/model/nano/LauncherDumpProto$LauncherImpression;->targets:[Lcom/android/launcher3/model/nano/LauncherDumpProto$DumpTarget;

    aget-object v1, v1, v0

    .line 351
    if-eqz v1, :cond_0

    .line 352
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 357
    return-void
.end method
