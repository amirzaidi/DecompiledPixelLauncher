.class public Lcom/android/launcher3/pageindicators/CaretDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mCaretPaint:Landroid/graphics/Paint;

.field private mCaretProgress:F

.field private final mCaretSizePx:I

.field private mPath:Landroid/graphics/Path;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mUseShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretProgress:F

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 47
    const v2, 0x7f0b0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 49
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    const v4, 0x7f01002c

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a0019

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const v4, 0x10104bf

    invoke-static {p1, v4}, Lcom/android/launcher3/util/Themes;->getAlpha(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 64
    const v1, 0x7f01002b

    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mUseShadow:Z

    .line 65
    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretSizePx:I

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float/2addr v1, v2

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    .line 92
    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v1, v4

    .line 93
    mul-float/2addr v4, v6

    sub-float/2addr v1, v4

    .line 95
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 96
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v5

    sub-float v5, v7, v5

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    div-float v5, v0, v6

    add-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    iget-object v4, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v2

    sub-float v2, v7, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mUseShadow:Z

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public getCaretProgress()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretProgress:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretSizePx:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretSizePx:I

    return v0
.end method

.method public getNormalizedCaretProgress()F
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    sub-float/2addr v0, v1

    .line 133
    const/high16 v1, 0x40000000    # 2.0f

    .line 132
    div-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->invalidateSelf()V

    .line 146
    return-void
.end method

.method public setCaretProgress(F)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/android/launcher3/pageindicators/CaretDrawable;->mCaretProgress:F

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->invalidateSelf()V

    .line 115
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method
