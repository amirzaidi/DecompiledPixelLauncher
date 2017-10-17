.class public Lcom/android/launcher3/graphics/FixedScaleDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# instance fields
.field private mScaleX:F

.field private mScaleY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x3eeef1fe    # 0.46669f

    .line 25
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iput v1, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    .line 27
    iput v1, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 28
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 33
    iget v1, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    iget v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 33
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 35
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 37
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public setScale(F)V
    .locals 5

    .prologue
    const v4, 0x3eeef1fe    # 0.46669f

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/FixedScaleDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 48
    mul-float v2, p1, v4

    iput v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    .line 49
    mul-float v2, p1, v4

    iput v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    .line 50
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    .line 51
    iget v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleX:F

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 53
    iget v2, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/graphics/FixedScaleDrawable;->mScaleY:F

    goto :goto_0
.end method
