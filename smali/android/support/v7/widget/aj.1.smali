.class Landroid/support/v7/widget/aj;
.super Landroid/support/v7/widget/U;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/p;Landroid/support/v7/widget/ar;)V

    return-void
.end method


# virtual methods
.method public aac(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/p;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public aad()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public aaf(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 382
    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aag(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 374
    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aah()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    .line 415
    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public aai(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 397
    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public aaj(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 390
    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aak()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public aal()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    return v0
.end method

.method public aam()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public aan()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public aar(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/aj;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/p;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public aas()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public aat(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/aj;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->offsetChildrenVertical(I)V

    .line 363
    return-void
.end method
