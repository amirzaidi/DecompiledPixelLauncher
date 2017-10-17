.class public Lcom/android/launcher3/graphics/ShadowGenerator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ambientShadowAlpha:I

.field public final bounds:Landroid/graphics/RectF;

.field public final color:I

.field public keyShadowAlpha:I

.field public keyShadowDistance:F

.field public radius:F

.field public shadowBlur:F


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    .line 135
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 140
    const/16 v0, 0x3d

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 144
    iput p1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    .line 145
    return-void
.end method


# virtual methods
.method public createPill(II)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    .line 156
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 157
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    div-int/lit8 v2, p1, 0x2

    sub-int v2, v0, v2

    int-to-float v2, v2

    div-int/lit8 v3, p2, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 162
    mul-int/lit8 v0, v0, 0x2

    .line 163
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 165
    return-object v0
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 170
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 174
    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    invoke-static {v5, v3}, Landroid/support/v4/b/a;->asb(II)I

    move-result v3

    .line 173
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 175
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 179
    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    invoke-static {v5, v2}, Landroid/support/v4/b/a;->asb(II)I

    move-result v2

    .line 178
    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public setupBlurForSize(I)Lcom/android/launcher3/graphics/ShadowGenerator$Builder;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 148
    int-to-float v0, p1

    mul-float/2addr v0, v2

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 149
    int-to-float v0, p1

    mul-float/2addr v0, v2

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 150
    return-object p0
.end method
