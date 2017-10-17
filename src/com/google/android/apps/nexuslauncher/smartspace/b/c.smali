.class public final Lcom/google/android/apps/nexuslauncher/smartspace/b/c;
.super Lcom/google/protobuf/nano/a;
.source "SourceFile"


# instance fields
.field public cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

.field public cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/protobuf/nano/a;-><init>()V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    .line 366
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    .line 370
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    .line 371
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cachedSize:I

    .line 372
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    const/4 v2, 0x1

    .line 391
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    const/4 v2, 0x2

    .line 395
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->Vo(ILcom/google/protobuf/nano/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/c;
    .locals 1

    .prologue
    .line 406
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/c;->Ws()I

    move-result v0

    .line 407
    sparse-switch v0, :sswitch_data_0

    .line 411
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/f;->WR(Lcom/google/protobuf/nano/c;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-object p0

    .line 409
    :sswitch_0
    return-object p0

    .line 417
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-nez v0, :cond_1

    .line 418
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 424
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-nez v0, :cond_2

    .line 425
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/c;->Ww(Lcom/google/protobuf/nano/a;)V

    goto :goto_0

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->VK(ILcom/google/protobuf/nano/a;)V

    .line 384
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 385
    return-void
.end method
