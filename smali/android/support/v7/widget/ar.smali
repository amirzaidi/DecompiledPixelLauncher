.class Landroid/support/v7/widget/ar;
.super Landroid/support/v7/widget/U;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/p;Landroid/support/v7/widget/ar;)V

    return-void
.end method


# virtual methods
.method public aac(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/p;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public aad()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public aaf(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 284
    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aag(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 276
    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aah()I
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    .line 317
    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public aai(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 299
    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->leftMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public aaj(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 292
    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public aak()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public aal()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    return v0
.end method

.method public aam()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public aan()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public aar(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/ar;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/p;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public aas()I
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public aat(I)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/v7/widget/ar;->mLayoutManager:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->offsetChildrenHorizontal(I)V

    .line 265
    return-void
.end method
