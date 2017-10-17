.class public Lcom/android/launcher3/ClickShadowView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowOffset:F

.field private final mShadowPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    .line 51
    return-void
.end method


# virtual methods
.method public alignWithIconView(Lcom/android/launcher3/BubbleTextView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 97
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    .line 98
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    .line 99
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v4

    sub-int v4, v0, v4

    .line 100
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    .line 101
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v6, v0

    .line 103
    if-eqz p3, :cond_0

    .line 105
    filled-new-array {v8, v8}, [I

    move-result-object v7

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p3, v0, v7, v8}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 108
    aget v0, v7, v8

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget v8, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v0, v8

    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 109
    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    .line 110
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v0, v3

    add-int/2addr v4, v7

    invoke-direct {v8, v0, v7, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/ClickShadowView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 117
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 116
    add-float/2addr v0, v1

    .line 118
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 116
    add-float/2addr v0, v1

    .line 119
    int-to-float v1, v5

    sub-float/2addr v1, v6

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    div-float/2addr v1, v10

    .line 116
    add-float/2addr v0, v1

    .line 120
    int-to-float v1, v3

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    sub-float v3, v11, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v10

    .line 116
    add-float/2addr v0, v1

    .line 121
    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    .line 116
    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setTranslationX(F)V

    .line 124
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 123
    add-float/2addr v0, v2

    .line 125
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    .line 123
    add-float/2addr v0, v1

    .line 126
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v2

    sub-float v2, v11, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v10

    .line 123
    add-float/2addr v0, v1

    .line 127
    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    .line 123
    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setTranslationY(F)V

    .line 129
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/launcher3/ClickShadowView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public animateShadow()V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setAlpha(F)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    const-wide/16 v2, 0x7d0

    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 89
    return-void
.end method

.method public getExtraSize()I
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    iget-object v2, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->invalidate()V

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
