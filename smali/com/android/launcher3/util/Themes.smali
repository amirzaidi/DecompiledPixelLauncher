.class public Lcom/android/launcher3/util/Themes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpha(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return v1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 31
    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorPrimary(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v1, 0x1010433

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V
    .locals 5

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 68
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 69
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 68
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 70
    return-void
.end method
