.class public Lcom/android/launcher3/graphics/TintedDrawableSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "SourceFile"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOldTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    .line 37
    iget-object v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 52
    iget v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    if-eq v1, v0, :cond_0

    .line 53
    iput v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mOldTint:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/text/style/DynamicDrawableSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    if-nez p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 43
    :goto_0
    iget v0, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/android/launcher3/graphics/TintedDrawableSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 45
    invoke-super/range {v0 .. v5}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0

    :cond_0
    move-object v5, p5

    .line 42
    goto :goto_0
.end method
