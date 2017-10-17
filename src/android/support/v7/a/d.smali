.class public final Landroid/support/v7/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final UO:I

.field private final UP:I

.field private final UQ:I

.field private UR:I

.field private final US:I

.field private UT:I

.field private final UU:I

.field private UV:[F

.field private UW:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UO:I

    .line 454
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UP:I

    .line 455
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->US:I

    .line 456
    iput p1, p0, Landroid/support/v7/a/d;->UQ:I

    .line 457
    iput p2, p0, Landroid/support/v7/a/d;->UU:I

    .line 458
    return-void
.end method

.method private adJ()V
    .locals 8

    .prologue
    const/high16 v3, 0x40900000    # 4.5f

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v6, 0x1

    const/high16 v5, -0x1000000

    const/4 v4, -0x1

    .line 523
    iget-boolean v0, p0, Landroid/support/v7/a/d;->UW:Z

    if-eqz v0, :cond_0

    .line 561
    :goto_0
    return-void

    .line 525
    :cond_0
    iget v0, p0, Landroid/support/v7/a/d;->UQ:I

    invoke-static {v4, v0, v3}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v0

    .line 527
    iget v1, p0, Landroid/support/v7/a/d;->UQ:I

    invoke-static {v4, v1, v7}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v1

    .line 530
    if-ne v0, v4, :cond_3

    .line 538
    :cond_1
    iget v2, p0, Landroid/support/v7/a/d;->UQ:I

    invoke-static {v5, v2, v3}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v2

    .line 540
    iget v3, p0, Landroid/support/v7/a/d;->UQ:I

    invoke-static {v5, v3, v7}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v3

    .line 543
    if-ne v2, v4, :cond_4

    .line 553
    :cond_2
    if-ne v0, v4, :cond_5

    .line 555
    invoke-static {v5, v2}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    :goto_1
    iput v0, p0, Landroid/support/v7/a/d;->UT:I

    .line 556
    if-ne v1, v4, :cond_6

    .line 558
    invoke-static {v5, v3}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    :goto_2
    iput v0, p0, Landroid/support/v7/a/d;->UR:I

    .line 559
    iput-boolean v6, p0, Landroid/support/v7/a/d;->UW:Z

    goto :goto_0

    .line 530
    :cond_3
    if-eq v1, v4, :cond_1

    .line 532
    invoke-static {v4, v0}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UT:I

    .line 533
    invoke-static {v4, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UR:I

    .line 534
    iput-boolean v6, p0, Landroid/support/v7/a/d;->UW:Z

    .line 535
    return-void

    .line 543
    :cond_4
    if-eq v3, v4, :cond_2

    .line 545
    invoke-static {v5, v2}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UT:I

    .line 546
    invoke-static {v5, v3}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/a/d;->UR:I

    .line 547
    iput-boolean v6, p0, Landroid/support/v7/a/d;->UW:Z

    .line 548
    return-void

    .line 554
    :cond_5
    invoke-static {v4, v0}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    goto :goto_1

    .line 557
    :cond_6
    invoke-static {v4, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    goto :goto_2
.end method


# virtual methods
.method public adI()[F
    .locals 4

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/v7/a/d;->UV:[F

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    iget v0, p0, Landroid/support/v7/a/d;->UO:I

    iget v1, p0, Landroid/support/v7/a/d;->UP:I

    iget v2, p0, Landroid/support/v7/a/d;->US:I

    iget-object v3, p0, Landroid/support/v7/a/d;->UV:[F

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/b/a;->arO(III[F)V

    .line 492
    iget-object v0, p0, Landroid/support/v7/a/d;->UV:[F

    return-object v0

    .line 489
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/a/d;->UV:[F

    goto :goto_0
.end method

.method public adK()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Landroid/support/v7/a/d;->UU:I

    return v0
.end method

.method public adL()I
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Landroid/support/v7/a/d;->adJ()V

    .line 509
    iget v0, p0, Landroid/support/v7/a/d;->UR:I

    return v0
.end method

.method public adM()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/support/v7/a/d;->UQ:I

    return v0
.end method

.method public adN()I
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Landroid/support/v7/a/d;->adJ()V

    .line 519
    iget v0, p0, Landroid/support/v7/a/d;->UT:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    if-eq p0, p1, :cond_1

    .line 580
    if-nez p1, :cond_2

    .line 581
    :cond_0
    return v1

    .line 578
    :cond_1
    return v0

    .line 580
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 584
    check-cast p1, Landroid/support/v7/a/d;

    .line 585
    iget v2, p0, Landroid/support/v7/a/d;->UU:I

    iget v3, p1, Landroid/support/v7/a/d;->UU:I

    if-eq v2, v3, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget v2, p0, Landroid/support/v7/a/d;->UQ:I

    iget v3, p1, Landroid/support/v7/a/d;->UQ:I

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Landroid/support/v7/a/d;->UQ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/a/d;->UU:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " [RGB: #"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/a/d;->adM()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [HSL: "

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/a/d;->adI()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Population: "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/a/d;->UU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Title Text: #"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/a/d;->adL()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [Body Text: #"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/a/d;->adN()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
