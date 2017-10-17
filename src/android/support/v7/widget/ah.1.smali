.class Landroid/support/v7/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field TA:J

.field TB:Landroid/support/v7/widget/ah;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    return-void
.end method

.method private acp()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-eqz v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0}, Landroid/support/v7/widget/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    goto :goto_0
.end method


# virtual methods
.method acm(I)V
    .locals 6

    .prologue
    .line 421
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 426
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->acm(I)V

    goto :goto_0
.end method

.method acn(I)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 474
    shl-long v4, v12, p1

    .line 475
    iget-wide v6, p0, Landroid/support/v7/widget/ah;->TA:J

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    move v0, v1

    .line 476
    :goto_0
    iget-wide v6, p0, Landroid/support/v7/widget/ah;->TA:J

    xor-long v8, v4, v10

    and-long/2addr v6, v8

    iput-wide v6, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 477
    sub-long/2addr v4, v12

    .line 478
    iget-wide v6, p0, Landroid/support/v7/widget/ah;->TA:J

    and-long/2addr v6, v4

    .line 480
    iget-wide v8, p0, Landroid/support/v7/widget/ah;->TA:J

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    .line 481
    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 482
    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-nez v1, :cond_2

    .line 488
    :goto_1
    return v0

    .line 471
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ah;->acp()V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->acn(I)Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    .line 475
    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 486
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ah;->acn(I)Z

    goto :goto_1

    .line 484
    :cond_3
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ah;->acr(I)V

    goto :goto_2
.end method

.method aco(IZ)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    const/16 v0, 0x40

    if-ge p1, v0, :cond_1

    .line 452
    iget-wide v4, p0, Landroid/support/v7/widget/ah;->TA:J

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move v0, v1

    .line 453
    :goto_0
    shl-long v4, v8, p1

    sub-long/2addr v4, v8

    .line 454
    iget-wide v6, p0, Landroid/support/v7/widget/ah;->TA:J

    and-long/2addr v6, v4

    .line 455
    iget-wide v8, p0, Landroid/support/v7/widget/ah;->TA:J

    const-wide/16 v10, -0x1

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    shl-long/2addr v4, v1

    .line 456
    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 457
    if-nez p2, :cond_3

    .line 460
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ah;->acm(I)V

    .line 462
    :goto_1
    if-eqz v0, :cond_4

    .line 463
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ah;->acp()V

    .line 464
    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/ah;->aco(IZ)V

    .line 467
    :goto_2
    return-void

    .line 449
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/ah;->acp()V

    .line 450
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/ah;->aco(IZ)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 452
    goto :goto_0

    .line 458
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ah;->acr(I)V

    goto :goto_1

    .line 462
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-nez v1, :cond_0

    goto :goto_2
.end method

.method acq(I)I
    .locals 6

    .prologue
    const/16 v1, 0x40

    const-wide/16 v4, 0x1

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-eqz v0, :cond_0

    .line 499
    if-lt p1, v1, :cond_2

    .line 502
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->acq(I)I

    move-result v0

    iget-wide v2, p0, Landroid/support/v7/widget/ah;->TA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 494
    :cond_0
    if-ge p1, v1, :cond_1

    .line 497
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 495
    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    .line 500
    :cond_2
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    shl-long v2, v4, p1

    sub-long/2addr v2, v4

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

.method acr(I)V
    .locals 4

    .prologue
    .line 406
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 410
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ah;->acp()V

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->acr(I)V

    goto :goto_0
.end method

.method get(I)Z
    .locals 4

    .prologue
    .line 432
    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    .line 436
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ah;->acp()V

    .line 434
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    add-int/lit8 v1, p1, -0x40

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v0

    return v0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    .line 442
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->reset()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/ah;->TB:Landroid/support/v7/widget/ah;

    .line 509
    invoke-virtual {v1}, Landroid/support/v7/widget/ah;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/ah;->TA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 508
    :cond_0
    iget-wide v0, p0, Landroid/support/v7/widget/ah;->TA:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
