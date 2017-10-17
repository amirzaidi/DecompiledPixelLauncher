.class Landroid/support/v7/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field RX:I

.field RY:Z

.field RZ:Z

.field final synthetic Sa:Landroid/support/v7/widget/N;

.field mPosition:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/N;)V
    .locals 0

    .prologue
    .line 2377
    iput-object p1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2378
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->reset()V

    .line 2379
    return-void
.end method


# virtual methods
.method public aaY(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2462
    iget-boolean v0, p0, Landroid/support/v7/widget/S;->RY:Z

    if-nez v0, :cond_0

    .line 2466
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    .line 2469
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2470
    return-void

    .line 2463
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2464
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abr()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    goto :goto_0
.end method

.method aaZ(Landroid/view/View;Landroid/support/v7/widget/e;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2409
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2410
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yf()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2411
    :goto_0
    return v0

    .line 2410
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v2

    if-ltz v2, :cond_0

    .line 2411
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method aba()V
    .locals 1

    .prologue
    .line 2393
    iget-boolean v0, p0, Landroid/support/v7/widget/S;->RY:Z

    if-nez v0, :cond_0

    .line 2394
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2395
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abm()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    .line 2396
    return-void

    .line 2393
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2394
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abu()I

    move-result v0

    goto :goto_0
.end method

.method public abb(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2415
    iget-object v0, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->abr()I

    move-result v0

    .line 2416
    if-gez v0, :cond_1

    .line 2420
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2421
    iget-boolean v1, p0, Landroid/support/v7/widget/S;->RY:Z

    if-nez v1, :cond_2

    .line 2441
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v1

    .line 2442
    iget-object v2, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v2, v2, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abm()I

    move-result v2

    sub-int v2, v1, v2

    .line 2443
    iput v1, p0, Landroid/support/v7/widget/S;->RX:I

    .line 2444
    if-gtz v2, :cond_3

    .line 2459
    :cond_0
    :goto_0
    return-void

    .line 2417
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/S;->aaY(Landroid/view/View;)V

    .line 2418
    return-void

    .line 2422
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abu()I

    move-result v1

    sub-int v0, v1, v0

    .line 2423
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v1

    .line 2424
    sub-int/2addr v0, v1

    .line 2425
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->abu()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/S;->RX:I

    .line 2427
    if-lez v0, :cond_0

    .line 2428
    iget-object v1, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v1

    .line 2429
    iget v2, p0, Landroid/support/v7/widget/S;->RX:I

    sub-int v1, v2, v1

    .line 2430
    iget-object v2, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v2, v2, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->abm()I

    move-result v2

    .line 2431
    iget-object v3, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->abk(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2433
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2434
    sub-int/2addr v1, v2

    .line 2435
    if-gez v1, :cond_0

    .line 2437
    iget v2, p0, Landroid/support/v7/widget/S;->RX:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    goto :goto_0

    .line 2445
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2446
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->abi(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2447
    iget-object v3, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3}, Landroid/support/v7/widget/U;->abu()I

    move-result v3

    sub-int v0, v3, v0

    .line 2449
    iget-object v3, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2450
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->abl(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2451
    iget-object v3, p0, Landroid/support/v7/widget/S;->Sa:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3}, Landroid/support/v7/widget/U;->abu()I

    move-result v3

    .line 2452
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2453
    sub-int/2addr v0, v1

    .line 2454
    if-gez v0, :cond_0

    .line 2455
    iget v1, p0, Landroid/support/v7/widget/S;->RX:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2382
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2383
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/S;->RX:I

    .line 2384
    iput-boolean v1, p0, Landroid/support/v7/widget/S;->RY:Z

    .line 2385
    iput-boolean v1, p0, Landroid/support/v7/widget/S;->RZ:Z

    .line 2386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/S;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/S;->RX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/S;->RY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/S;->RZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
