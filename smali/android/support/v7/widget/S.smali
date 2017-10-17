.class Landroid/support/v7/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Qq:I

.field Qr:Z

.field Qs:Z

.field final synthetic Qt:Landroid/support/v7/widget/N;

.field mPosition:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/N;)V
    .locals 0

    .prologue
    .line 2359
    iput-object p1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    invoke-virtual {p0}, Landroid/support/v7/widget/S;->reset()V

    .line 2361
    return-void
.end method


# virtual methods
.method public ZW(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2444
    iget-boolean v0, p0, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v0, :cond_0

    .line 2448
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    .line 2451
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2452
    return-void

    .line 2445
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2446
    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aap()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    goto :goto_0
.end method

.method ZX(Landroid/view/View;Landroid/support/v7/widget/e;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2392
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2393
    :goto_0
    return v0

    .line 2392
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v2

    if-ltz v2, :cond_0

    .line 2393
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method ZY()V
    .locals 1

    .prologue
    .line 2375
    iget-boolean v0, p0, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v0, :cond_0

    .line 2376
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2377
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    .line 2378
    return-void

    .line 2375
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2376
    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v0

    goto :goto_0
.end method

.method public ZZ(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2397
    iget-object v0, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v0, v0, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aap()I

    move-result v0

    .line 2398
    if-gez v0, :cond_1

    .line 2402
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/N;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2403
    iget-boolean v1, p0, Landroid/support/v7/widget/S;->Qr:Z

    if-nez v1, :cond_2

    .line 2423
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v1

    .line 2424
    iget-object v2, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v2, v2, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aak()I

    move-result v2

    sub-int v2, v1, v2

    .line 2425
    iput v1, p0, Landroid/support/v7/widget/S;->Qq:I

    .line 2426
    if-gtz v2, :cond_3

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2399
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/S;->ZW(Landroid/view/View;)V

    .line 2400
    return-void

    .line 2404
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aas()I

    move-result v1

    sub-int v0, v1, v0

    .line 2405
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v1

    .line 2406
    sub-int/2addr v0, v1

    .line 2407
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aas()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/S;->Qq:I

    .line 2409
    if-lez v0, :cond_0

    .line 2410
    iget-object v1, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v1, v1, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v1

    .line 2411
    iget v2, p0, Landroid/support/v7/widget/S;->Qq:I

    sub-int v1, v2, v1

    .line 2412
    iget-object v2, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v2, v2, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aak()I

    move-result v2

    .line 2413
    iget-object v3, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 2415
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 2416
    sub-int/2addr v1, v2

    .line 2417
    if-gez v1, :cond_0

    .line 2419
    iget v2, p0, Landroid/support/v7/widget/S;->Qq:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    goto :goto_0

    .line 2427
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2428
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2429
    iget-object v3, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3}, Landroid/support/v7/widget/U;->aas()I

    move-result v3

    sub-int v0, v3, v0

    .line 2431
    iget-object v3, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 2432
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 2433
    iget-object v3, p0, Landroid/support/v7/widget/S;->Qt:Landroid/support/v7/widget/N;

    iget-object v3, v3, Landroid/support/v7/widget/N;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3}, Landroid/support/v7/widget/U;->aas()I

    move-result v3

    .line 2434
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v3, v0

    .line 2435
    sub-int/2addr v0, v1

    .line 2436
    if-gez v0, :cond_0

    .line 2437
    iget v1, p0, Landroid/support/v7/widget/S;->Qq:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2364
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/S;->mPosition:I

    .line 2365
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/S;->Qq:I

    .line 2366
    iput-boolean v1, p0, Landroid/support/v7/widget/S;->Qr:Z

    .line 2367
    iput-boolean v1, p0, Landroid/support/v7/widget/S;->Qs:Z

    .line 2368
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2382
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

    iget v1, p0, Landroid/support/v7/widget/S;->Qq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/S;->Qr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/S;->Qs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
