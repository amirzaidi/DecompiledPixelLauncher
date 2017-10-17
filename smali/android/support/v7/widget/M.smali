.class public Landroid/support/v7/widget/M;
.super Landroid/support/v7/widget/N;
.source "SourceFile"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroid/support/v7/widget/Q;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/N;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/M;->mPendingSpanCountChange:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/P;

    invoke-direct {v0}, Landroid/support/v7/widget/P;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/M;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method private assignSpans(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;IIZ)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 770
    if-nez p5, :cond_0

    .line 775
    add-int/lit8 v1, p3, -0x1

    move p3, v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    move v3, v2

    move v2, v0

    .line 780
    :goto_1
    if-ne v2, p3, :cond_1

    .line 787
    return-void

    .line 773
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aget-object v4, v0, v2

    .line 782
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/O;

    .line 783
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/M;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/M;->getSpanSize(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/O;->Qe:I

    .line 784
    iput v3, v0, Landroid/support/v7/widget/O;->Qd:I

    .line 785
    iget v0, v0, Landroid/support/v7/widget/O;->Qe:I

    add-int/2addr v3, v0

    .line 780
    add-int v0, v2, v1

    move v2, v0

    goto :goto_1
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getChildCount()I

    move-result v2

    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 196
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/M;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/O;

    .line 192
    invoke-virtual {v0}, Landroid/support/v7/widget/O;->Xd()I

    move-result v3

    .line 193
    iget-object v4, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/O;->ZP()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/support/v7/widget/O;->ZO()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private calculateItemBorders(I)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/M;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    .line 310
    return-void
.end method

.method static calculateItemBorders([III)[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 322
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 324
    :goto_0
    aput v2, p0, v2

    .line 325
    div-int v1, p2, p1

    .line 326
    rem-int v5, p2, p1

    .line 329
    const/4 v0, 0x1

    move v3, v0

    move v4, v2

    :goto_1
    if-le v3, p1, :cond_2

    .line 339
    return-object p0

    .line 320
    :cond_1
    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 331
    :cond_2
    add-int/2addr v2, v5

    .line 332
    if-gtz v2, :cond_4

    :cond_3
    move v0, v1

    .line 336
    :goto_2
    add-int/2addr v4, v0

    .line 337
    aput v4, p0, v3

    .line 329
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 332
    :cond_4
    sub-int v0, p1, v2

    if-ge v0, v5, :cond_3

    .line 333
    add-int/lit8 v0, v1, 0x1

    .line 334
    sub-int/2addr v2, p1

    goto :goto_2
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 386
    if-eq p4, v1, :cond_2

    .line 388
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/S;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/M;->getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v1

    .line 389
    if-nez v0, :cond_4

    .line 397
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 398
    iget v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    move v2, v0

    move v0, v1

    .line 400
    :goto_1
    if-lt v2, v3, :cond_5

    .line 409
    :cond_0
    iput v2, p3, Landroid/support/v7/widget/S;->mPosition:I

    .line 411
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 386
    goto :goto_0

    .line 392
    :cond_3
    iget v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    .line 393
    iget v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/M;->getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v1

    .line 391
    :cond_4
    if-lez v1, :cond_1

    iget v0, p3, Landroid/support/v7/widget/S;->mPosition:I

    if-gtz v0, :cond_3

    goto :goto_2

    .line 401
    :cond_5
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/M;->getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v1

    .line 402
    if-le v1, v0, :cond_0

    .line 403
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 408
    goto :goto_1
.end method

.method private ensureViewSet()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    if-nez v0, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/s;->Xl(I)I

    move-result v0

    .line 454
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 462
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    iget v2, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/Q;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/Q;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot find span size for pre layout position. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GridLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return v2
.end method

.method private getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 466
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 470
    if-ne v0, v1, :cond_1

    .line 473
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/s;->Xl(I)I

    move-result v0

    .line 474
    if-eq v0, v1, :cond_2

    .line 483
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    iget v2, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/Q;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/Q;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 471
    :cond_1
    return v0

    .line 479
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GridLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return v2
.end method

.method private getSpanSize(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 487
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/v7/widget/M;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 491
    if-ne v0, v1, :cond_1

    .line 494
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/s;->Xl(I)I

    move-result v0

    .line 495
    if-eq v0, v1, :cond_2

    .line 504
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v0

    return v0

    .line 488
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v0

    return v0

    .line 492
    :cond_1
    return v0

    .line 500
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "GridLayoutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method private guessMeasurement(FI)V
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 747
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/M;->calculateItemBorders(I)V

    .line 748
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/O;

    .line 712
    iget-object v1, v0, Landroid/support/v7/widget/O;->mDecorInsets:Landroid/graphics/Rect;

    .line 713
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/O;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/O;->bottomMargin:I

    add-int/2addr v2, v3

    .line 715
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/O;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/O;->rightMargin:I

    add-int/2addr v3, v1

    .line 717
    iget v1, v0, Landroid/support/v7/widget/O;->Qd:I

    iget v4, v0, Landroid/support/v7/widget/O;->Qe:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/M;->getSpaceForSpanRange(II)I

    move-result v1

    .line 720
    iget v4, p0, Landroid/support/v7/widget/M;->mOrientation:I

    if-eq v4, v5, :cond_0

    .line 726
    iget v4, v0, Landroid/support/v7/widget/O;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 728
    iget-object v2, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2}, Landroid/support/v7/widget/U;->aah()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getWidthMode()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/O;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 731
    :goto_0
    invoke-direct {p0, p1, v1, v0, p3}, Landroid/support/v7/widget/M;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 732
    return-void

    .line 721
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/O;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 723
    iget-object v3, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3}, Landroid/support/v7/widget/U;->aah()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getHeightMode()I

    move-result v4

    iget v0, v0, Landroid/support/v7/widget/O;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 754
    if-nez p4, :cond_0

    .line 757
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/M;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z

    move-result v0

    .line 759
    :goto_0
    if-nez v0, :cond_1

    .line 762
    :goto_1
    return-void

    .line 755
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/M;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/i;)Z

    move-result v0

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method private updateMeasurements()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/M;->calculateItemBorders(I)V

    .line 281
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public checkLayoutParams(Landroid/support/v7/widget/i;)Z
    .locals 1

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/O;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/I;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 510
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    move v2, v0

    move v0, v1

    .line 512
    :goto_0
    iget v3, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-lt v0, v3, :cond_1

    .line 520
    :cond_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/R;->ZU(Landroid/support/v7/widget/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 513
    iget v3, p2, Landroid/support/v7/widget/R;->Qk:I

    .line 514
    iget v4, p2, Landroid/support/v7/widget/R;->Qn:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/I;->Yk(II)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/Q;->getSpanSize(I)I

    move-result v3

    .line 516
    sub-int/2addr v2, v3

    .line 517
    iget v3, p2, Landroid/support/v7/widget/R;->Qk:I

    iget v4, p2, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/R;->Qk:I

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method findReferenceChild(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->ensureLayoutState()V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aak()I

    move-result v5

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0}, Landroid/support/v7/widget/U;->aas()I

    move-result v6

    .line 421
    if-gt p4, p3, :cond_0

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 423
    :goto_1
    if-ne p3, p4, :cond_1

    .line 445
    if-nez v2, :cond_a

    :goto_2
    return-object v4

    .line 421
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/M;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 425
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/M;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 426
    if-gez v0, :cond_3

    :cond_2
    move-object v0, v2

    move-object v3, v4

    .line 423
    :goto_3
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 426
    :cond_3
    if-ge v0, p5, :cond_2

    .line 427
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/M;->getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v0

    .line 428
    if-nez v0, :cond_5

    .line 431
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v0

    if-nez v0, :cond_6

    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->aai(Landroid/view/View;)I

    move-result v0

    if-lt v0, v6, :cond_8

    .line 437
    :cond_4
    if-eqz v2, :cond_9

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    :cond_5
    move-object v0, v2

    move-object v3, v4

    .line 429
    goto :goto_3

    .line 432
    :cond_6
    if-eqz v4, :cond_7

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 433
    goto :goto_3

    .line 435
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    .line 436
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/U;->aaj(Landroid/view/View;)I

    move-result v0

    if-lt v0, v5, :cond_4

    .line 441
    return-object v3

    :cond_9
    move-object v0, v3

    move-object v3, v4

    .line 438
    goto :goto_3

    :cond_a
    move-object v4, v2

    .line 445
    goto :goto_2
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/i;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/M;->mOrientation:I

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/O;-><init>(II)V

    return-object v0

    .line 227
    :cond_0
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/O;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/i;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i;
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/support/v7/widget/O;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/O;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Landroid/support/v7/widget/O;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/O;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Landroid/support/v7/widget/M;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 139
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/M;->getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 132
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    return v0

    .line 135
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget v0, p0, Landroid/support/v7/widget/M;->mOrientation:I

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 125
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/M;->getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 118
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    return v0

    .line 121
    :cond_1
    return v2
.end method

.method getSpaceForSpanRange(II)I
    .locals 3

    .prologue
    .line 343
    iget v0, p0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 343
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/R;Landroid/support/v7/widget/T;)V
    .locals 13

    .prologue
    .line 525
    iget-object v1, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1}, Landroid/support/v7/widget/U;->aam()I

    move-result v11

    .line 526
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v11, v1, :cond_1

    const/4 v1, 0x0

    move v7, v1

    .line 527
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    move v8, v1

    .line 531
    :goto_1
    if-nez v7, :cond_3

    .line 534
    :goto_2
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/R;->Qp:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v6, 0x0

    .line 536
    :goto_3
    const/4 v4, 0x0

    .line 537
    const/4 v5, 0x0

    .line 538
    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    .line 539
    if-eqz v6, :cond_5

    .line 544
    :goto_4
    iget v2, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-lt v4, v2, :cond_6

    .line 565
    :cond_0
    if-eqz v4, :cond_8

    .line 570
    const/4 v10, 0x0

    .line 571
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 574
    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/M;->assignSpans(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;IIZ)V

    .line 575
    const/4 v1, 0x0

    move v5, v1

    move v3, v9

    move v1, v10

    :goto_5
    if-lt v5, v4, :cond_9

    .line 604
    if-nez v7, :cond_f

    move v2, v1

    .line 621
    :goto_6
    const/4 v1, 0x0

    move v5, v1

    :goto_7
    if-lt v5, v4, :cond_12

    .line 648
    move-object/from16 v0, p4

    iput v2, v0, Landroid/support/v7/widget/T;->Qu:I

    .line 650
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 651
    iget v7, p0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    .line 660
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/R;->Ql:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_17

    .line 664
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 665
    add-int/2addr v2, v3

    move v12, v5

    move v5, v3

    move v3, v12

    .line 668
    :goto_8
    const/4 v6, 0x0

    move v10, v1

    move v9, v2

    move v8, v3

    move v7, v5

    move v2, v6

    :goto_9
    if-lt v2, v4, :cond_18

    .line 698
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 699
    return-void

    .line 526
    :cond_1
    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    aget v1, v1, v2

    move v8, v1

    goto :goto_1

    .line 532
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/M;->updateMeasurements()V

    goto :goto_2

    .line 534
    :cond_4
    const/4 v6, 0x1

    goto :goto_3

    .line 540
    :cond_5
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/R;->Qk:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/M;->getSpanIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v1

    .line 541
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/R;->Qk:I

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/M;->getSpanSize(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v2

    .line 542
    add-int/2addr v1, v2

    goto :goto_4

    .line 544
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/R;->ZU(Landroid/support/v7/widget/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 545
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/R;->Qk:I

    .line 546
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/M;->getSpanSize(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v3

    .line 547
    iget v9, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-gt v3, v9, :cond_7

    .line 552
    sub-int/2addr v1, v3

    .line 553
    if-ltz v1, :cond_0

    .line 556
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/R;->ZR(Landroid/support/v7/widget/s;)Landroid/view/View;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_0

    .line 560
    add-int/2addr v5, v3

    .line 561
    iget-object v3, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aput-object v2, v3, v4

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 548
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Item at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/T;->mFinished:Z

    .line 567
    return-void

    .line 576
    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aget-object v9, v2, v5

    .line 577
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    if-eqz v2, :cond_b

    .line 584
    if-nez v6, :cond_d

    .line 587
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/M;->addDisappearingView(Landroid/view/View;I)V

    .line 590
    :goto_a
    iget-object v2, p0, Landroid/support/v7/widget/M;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/M;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    const/4 v2, 0x0

    invoke-direct {p0, v9, v11, v2}, Landroid/support/v7/widget/M;->measureChild(Landroid/view/View;IZ)V

    .line 593
    iget-object v2, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v2

    .line 594
    if-gt v2, v1, :cond_a

    move v2, v1

    .line 597
    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/O;

    .line 598
    iget-object v10, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v10, v9}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v1, v1, Landroid/support/v7/widget/O;->Qe:I

    int-to-float v1, v1

    div-float v1, v9, v1

    .line 600
    cmpl-float v9, v1, v3

    if-lez v9, :cond_e

    .line 575
    :goto_b
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v1

    move v1, v2

    goto/16 :goto_5

    .line 578
    :cond_b
    if-nez v6, :cond_c

    .line 581
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2}, Landroid/support/v7/widget/M;->addView(Landroid/view/View;I)V

    goto :goto_a

    .line 579
    :cond_c
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/M;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 585
    :cond_d
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/M;->addDisappearingView(Landroid/view/View;)V

    goto :goto_a

    :cond_e
    move v1, v3

    .line 600
    goto :goto_b

    .line 606
    :cond_f
    invoke-direct {p0, v3, v8}, Landroid/support/v7/widget/M;->guessMeasurement(FI)V

    .line 608
    const/4 v2, 0x0

    .line 609
    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    :goto_c
    if-lt v3, v4, :cond_10

    move v2, v1

    goto/16 :goto_6

    .line 610
    :cond_10
    iget-object v2, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aget-object v2, v2, v3

    .line 611
    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {p0, v2, v6, v5}, Landroid/support/v7/widget/M;->measureChild(Landroid/view/View;IZ)V

    .line 612
    iget-object v5, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v2

    .line 613
    if-gt v2, v1, :cond_11

    .line 609
    :goto_d
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_11
    move v1, v2

    .line 614
    goto :goto_d

    .line 622
    :cond_12
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aget-object v6, v1, v5

    .line 623
    iget-object v1, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/U;->aag(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_13

    .line 621
    :goto_e
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_7

    .line 624
    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/O;

    .line 625
    iget-object v3, v1, Landroid/support/v7/widget/O;->mDecorInsets:Landroid/graphics/Rect;

    .line 626
    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/O;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/support/v7/widget/O;->bottomMargin:I

    add-int/2addr v7, v8

    .line 628
    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/O;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Landroid/support/v7/widget/O;->rightMargin:I

    add-int/2addr v3, v8

    .line 630
    iget v8, v1, Landroid/support/v7/widget/O;->Qd:I

    iget v9, v1, Landroid/support/v7/widget/O;->Qe:I

    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/M;->getSpaceForSpanRange(II)I

    move-result v8

    .line 633
    iget v9, p0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_14

    .line 639
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 641
    iget v1, v1, Landroid/support/v7/widget/O;->height:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10, v7, v1, v9}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v1

    .line 644
    :goto_f
    const/4 v7, 0x1

    invoke-direct {p0, v6, v3, v1, v7}, Landroid/support/v7/widget/M;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_e

    .line 634
    :cond_14
    iget v1, v1, Landroid/support/v7/widget/O;->width:I

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v8, v10, v3, v1, v9}, Landroid/support/v7/widget/M;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 636
    sub-int v1, v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_f

    .line 652
    :cond_15
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/R;->Ql:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_16

    .line 656
    move-object/from16 v0, p3

    iget v5, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 657
    add-int v1, v5, v2

    move v2, v3

    move v3, v5

    move v5, v6

    goto/16 :goto_8

    .line 653
    :cond_16
    move-object/from16 v0, p3

    iget v1, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 654
    sub-int v2, v1, v2

    move v5, v6

    move v12, v2

    move v2, v3

    move v3, v12

    goto/16 :goto_8

    .line 661
    :cond_17
    move-object/from16 v0, p3

    iget v3, v0, Landroid/support/v7/widget/R;->mOffset:I

    .line 662
    sub-int v2, v3, v2

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_8

    .line 669
    :cond_18
    iget-object v1, p0, Landroid/support/v7/widget/M;->mSet:[Landroid/view/View;

    aget-object v6, v1, v2

    .line 670
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/O;

    .line 671
    iget v3, p0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    .line 680
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingTop()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v8, v1, Landroid/support/v7/widget/O;->Qd:I

    aget v5, v5, v8

    add-int v8, v3, v5

    .line 681
    iget-object v3, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v3

    add-int v10, v8, v3

    :goto_10
    move-object v5, p0

    .line 685
    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/M;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 693
    invoke-virtual {v1}, Landroid/support/v7/widget/O;->Xf()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 694
    :cond_19
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/T;->Qv:Z

    .line 696
    :goto_11
    move-object/from16 v0, p4

    iget-boolean v1, v0, Landroid/support/v7/widget/T;->Qw:Z

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    or-int/2addr v1, v3

    move-object/from16 v0, p4

    iput-boolean v1, v0, Landroid/support/v7/widget/T;->Qw:Z

    .line 668
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_9

    .line 672
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->isLayoutRTL()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 676
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v7, v1, Landroid/support/v7/widget/O;->Qd:I

    aget v5, v5, v7

    add-int v7, v3, v5

    .line 677
    iget-object v3, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v3

    add-int v9, v7, v3

    goto :goto_10

    .line 673
    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingLeft()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget v7, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    iget v9, v1, Landroid/support/v7/widget/O;->Qd:I

    sub-int/2addr v7, v9

    aget v5, v5, v7

    add-int v9, v3, v5

    .line 674
    iget-object v3, p0, Landroid/support/v7/widget/M;->mOrientationHelper:Landroid/support/v7/widget/U;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/U;->aaf(Landroid/view/View;)I

    move-result v3

    sub-int v7, v9, v3

    goto :goto_10

    .line 693
    :cond_1c
    invoke-virtual {v1}, Landroid/support/v7/widget/O;->Xe()Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_11
.end method

.method onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V
    .locals 1

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/N;->onAnchorReady(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/M;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/M;->ensureViewSet()V

    .line 360
    return-void

    .line 356
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/M;->ensureAnchorIsInCorrectSpan(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/support/v7/widget/S;I)V

    goto :goto_0
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;
    .locals 28

    .prologue
    .line 994
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/M;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 995
    if-eqz v18, :cond_2

    .line 998
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/O;

    .line 999
    iget v0, v4, Landroid/support/v7/widget/O;->Qd:I

    move/from16 v19, v0

    .line 1000
    iget v5, v4, Landroid/support/v7/widget/O;->Qd:I

    iget v4, v4, Landroid/support/v7/widget/O;->Qe:I

    add-int v20, v5, v4

    .line 1001
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/N;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v4

    .line 1002
    if-eqz v4, :cond_3

    .line 1007
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/M;->convertFocusDirectionToLayoutDirection(I)I

    move-result v4

    .line 1008
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/widget/M;->mShouldReverseLayout:Z

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    .line 1010
    :goto_1
    if-nez v4, :cond_6

    .line 1015
    const/4 v6, 0x0

    .line 1016
    const/4 v5, 0x1

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/M;->getChildCount()I

    move-result v4

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    .line 1019
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    :cond_0
    const/4 v7, 0x0

    .line 1024
    :goto_3
    const/4 v14, 0x0

    .line 1025
    const/4 v13, -0x1

    .line 1026
    const/4 v12, 0x0

    .line 1034
    const/4 v10, 0x0

    .line 1035
    const/4 v9, -0x1

    .line 1036
    const/4 v8, 0x0

    .line 1043
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Landroid/support/v7/widget/M;->getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v21

    move/from16 v17, v4

    .line 1044
    :goto_4
    move/from16 v0, v17

    if-ne v0, v5, :cond_8

    .line 1111
    :cond_1
    if-nez v14, :cond_1a

    :goto_5
    return-object v10

    .line 996
    :cond_2
    const/4 v4, 0x0

    return-object v4

    .line 1003
    :cond_3
    const/4 v4, 0x0

    return-object v4

    .line 1008
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 1011
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/M;->getChildCount()I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    .line 1012
    const/4 v5, -0x1

    .line 1013
    const/4 v4, -0x1

    move/from16 v26, v4

    move v4, v6

    move v6, v5

    move/from16 v5, v26

    goto :goto_2

    .line 1019
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/M;->isLayoutRTL()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_3

    .line 1045
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/M;->getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v4

    .line 1046
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/M;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1047
    move-object/from16 v0, v18

    if-eq v11, v0, :cond_1

    .line 1051
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-nez v15, :cond_d

    .line 1062
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/O;

    .line 1063
    iget v0, v4, Landroid/support/v7/widget/O;->Qd:I

    move/from16 v22, v0

    .line 1064
    iget v15, v4, Landroid/support/v7/widget/O;->Qd:I

    iget v0, v4, Landroid/support/v7/widget/O;->Qe:I

    move/from16 v16, v0

    add-int v23, v15, v16

    .line 1065
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-nez v15, :cond_e

    .line 1069
    :cond_a
    const/4 v15, 0x0

    .line 1070
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_f

    .line 1071
    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 1074
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1075
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 1076
    sub-int v16, v24, v16

    .line 1077
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v24

    if-nez v24, :cond_12

    .line 1085
    if-eqz v14, :cond_15

    .line 1097
    :cond_c
    :goto_7
    if-nez v15, :cond_18

    move v4, v8

    move v11, v13

    move v8, v9

    move-object v9, v10

    move v10, v12

    move-object v12, v14

    .line 1044
    :goto_8
    add-int v13, v17, v6

    move/from16 v17, v13

    move-object v14, v12

    move v12, v10

    move v13, v11

    move-object v10, v9

    move v9, v8

    move v8, v4

    goto/16 :goto_4

    .line 1051
    :cond_d
    move/from16 v0, v21

    if-eq v4, v0, :cond_9

    .line 1056
    if-nez v14, :cond_1

    move v4, v8

    move v11, v13

    move v8, v9

    move-object v9, v10

    move v10, v12

    move-object v12, v14

    goto :goto_8

    .line 1065
    :cond_e
    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move/from16 v0, v23

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1067
    return-object v11

    .line 1070
    :cond_f
    if-nez v14, :cond_b

    .line 1072
    :cond_10
    const/4 v15, 0x1

    goto :goto_7

    .line 1071
    :cond_11
    if-eqz v10, :cond_10

    goto :goto_6

    .line 1078
    :cond_12
    move/from16 v0, v16

    if-gt v0, v12, :cond_13

    .line 1080
    move/from16 v0, v16

    if-ne v0, v12, :cond_c

    move/from16 v0, v22

    if-gt v0, v13, :cond_14

    const/16 v16, 0x0

    :goto_9
    move/from16 v0, v16

    if-ne v7, v0, :cond_c

    .line 1083
    const/4 v15, 0x1

    goto :goto_7

    .line 1079
    :cond_13
    const/4 v15, 0x1

    goto :goto_7

    .line 1080
    :cond_14
    const/16 v16, 0x1

    goto :goto_9

    .line 1086
    :cond_15
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Landroid/support/v7/widget/M;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1087
    move/from16 v0, v16

    if-gt v0, v8, :cond_16

    .line 1089
    move/from16 v0, v16

    if-ne v0, v8, :cond_c

    move/from16 v0, v22

    if-gt v0, v9, :cond_17

    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    if-ne v7, v0, :cond_c

    .line 1092
    const/4 v15, 0x1

    goto :goto_7

    .line 1088
    :cond_16
    const/4 v15, 0x1

    goto :goto_7

    .line 1089
    :cond_17
    const/16 v16, 0x1

    goto :goto_a

    .line 1098
    :cond_18
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v15

    if-nez v15, :cond_19

    .line 1105
    iget v8, v4, Landroid/support/v7/widget/O;->Qd:I

    .line 1106
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1107
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v9, v11

    move v10, v12

    move v11, v13

    move-object v12, v14

    goto/16 :goto_8

    .line 1100
    :cond_19
    iget v12, v4, Landroid/support/v7/widget/O;->Qd:I

    .line 1101
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1102
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int/2addr v4, v13

    move/from16 v26, v8

    move v8, v9

    move-object v9, v10

    move v10, v4

    move/from16 v4, v26

    move/from16 v27, v12

    move-object v12, v11

    move/from16 v11, v27

    goto/16 :goto_8

    :cond_1a
    move-object v10, v14

    .line 1111
    goto/16 :goto_5
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 8

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/O;

    if-eqz v1, :cond_1

    move-object v6, v0

    .line 150
    check-cast v6, Landroid/support/v7/widget/O;

    .line 151
    invoke-virtual {v6}, Landroid/support/v7/widget/O;->Xd()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/M;->getSpanGroupIndex(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;I)I

    move-result v2

    .line 152
    iget v0, p0, Landroid/support/v7/widget/M;->mOrientation:I

    if-eqz v0, :cond_2

    .line 158
    const/4 v3, 0x1

    .line 160
    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZO()I

    move-result v4

    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZP()I

    move-result v5

    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    .line 161
    :cond_0
    const/4 v6, 0x0

    .line 158
    :goto_0
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/a/l;->aeO(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->adL(Ljava/lang/Object;)V

    .line 163
    :goto_1
    return-void

    .line 147
    :cond_1
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/N;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 148
    return-void

    .line 154
    :cond_2
    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZO()I

    move-result v0

    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZP()I

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    .line 156
    :cond_3
    const/4 v4, 0x0

    .line 153
    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/l;->aeO(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->adL(Ljava/lang/Object;)V

    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZP()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v6}, Landroid/support/v7/widget/O;->ZP()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 201
    return-void
.end method

.method public onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 206
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 222
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 211
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 217
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/support/v7/widget/e;->WN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/N;->onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V

    .line 174
    invoke-direct {p0}, Landroid/support/v7/widget/M;->clearPreLayoutSpanMappingCache()V

    .line 175
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/M;->cachePreLayoutSpanMapping()V

    goto :goto_0
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/e;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/N;->onLayoutCompleted(Landroid/support/v7/widget/e;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/M;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/M;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/M;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/M;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/M;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    if-eqz v0, :cond_0

    .line 289
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    iget v2, p0, Landroid/support/v7/widget/M;->mOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    .line 298
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/M;->chooseSize(III)I

    move-result v0

    .line 299
    iget-object v2, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getMinimumHeight()I

    move-result v2

    .line 299
    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/M;->chooseSize(III)I

    move-result v1

    .line 302
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/M;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 286
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/N;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    .line 293
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getMinimumHeight()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/M;->chooseSize(III)I

    move-result v1

    .line 294
    iget-object v2, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    iget-object v3, p0, Landroid/support/v7/widget/M;->mCachedBorders:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->getMinimumWidth()I

    move-result v2

    .line 294
    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/M;->chooseSize(III)I

    move-result v0

    goto :goto_1
.end method

.method public setSpanCount(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 809
    iget v0, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    if-eq p1, v0, :cond_0

    .line 812
    iput-boolean v1, p0, Landroid/support/v7/widget/M;->mPendingSpanCountChange:Z

    .line 813
    if-lt p1, v1, :cond_1

    .line 817
    iput p1, p0, Landroid/support/v7/widget/M;->mSpanCount:I

    .line 818
    iget-object v0, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    invoke-virtual {v0}, Landroid/support/v7/widget/Q;->invalidateSpanIndexCache()V

    .line 819
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->requestLayout()V

    .line 820
    return-void

    .line 810
    :cond_0
    return-void

    .line 814
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Landroid/support/v7/widget/Q;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/widget/M;->mSpanSizeLookup:Landroid/support/v7/widget/Q;

    .line 262
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1116
    iget-object v1, p0, Landroid/support/v7/widget/M;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/M;->mPendingSpanCountChange:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
