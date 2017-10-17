.class public Lcom/android/launcher3/graphics/IconPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

.field private static sFolderBadgePalette:Lcom/android/launcher3/graphics/IconPalette;


# instance fields
.field public final backgroundColor:I

.field public final backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final dominantColor:I

.field public final saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final secondaryColor:I

.field public final textColor:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 56
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    const v1, 0x3f5eb852    # 0.87f

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->getMutedColor(IF)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    .line 57
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 58
    iget v1, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v1, v0}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 59
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 60
    if-nez p2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 67
    :goto_1
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getTextColorForBackground(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->textColor:I

    .line 68
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getLowContrastColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->secondaryColor:I

    .line 69
    return-void

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    goto :goto_0

    .line 64
    :cond_1
    iget v1, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    const v2, 0x3f0a3d71    # 0.54f

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/IconPalette;->getMutedColor(IF)I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 65
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    goto :goto_1
.end method

.method private static ensureTextContrast(II)I
    .locals 2

    .prologue
    .line 172
    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->findContrastColor(IID)I

    move-result v0

    return v0
.end method

.method private static findContrastColor(IID)I
    .locals 18

    .prologue
    .line 186
    invoke-static/range {p0 .. p1}, Landroid/support/v4/b/a;->arL(II)D

    move-result-wide v2

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_0

    .line 187
    return p0

    .line 190
    :cond_0
    const/4 v2, 0x3

    new-array v6, v2, [D

    .line 191
    move/from16 v0, p1

    invoke-static {v0, v6}, Landroid/support/v4/b/a;->arY(I[D)V

    .line 192
    const/4 v2, 0x0

    aget-wide v4, v6, v2

    .line 193
    move/from16 v0, p0

    invoke-static {v0, v6}, Landroid/support/v4/b/a;->arY(I[D)V

    .line 194
    const/4 v2, 0x0

    aget-wide v2, v6, v2

    .line 195
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    const/4 v4, 0x1

    move v13, v4

    .line 197
    :goto_0
    if-eqz v13, :cond_3

    move-wide v10, v2

    :goto_1
    if-eqz v13, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 198
    :cond_1
    const/4 v4, 0x1

    aget-wide v4, v6, v4

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    .line 199
    const/4 v8, 0x0

    move v12, v8

    move-wide v8, v2

    :goto_2
    const/16 v2, 0xf

    if-ge v12, v2, :cond_7

    sub-double v2, v8, v10

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v2, v14

    if-lez v2, :cond_7

    .line 200
    add-double v2, v10, v8

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v14

    .line 201
    invoke-static/range {v2 .. v7}, Landroid/support/v4/b/a;->arQ(DDD)I

    move-result v14

    .line 202
    move/from16 v0, p1

    invoke-static {v14, v0}, Landroid/support/v4/b/a;->arL(II)D

    move-result-wide v14

    cmpl-double v14, v14, p2

    if-lez v14, :cond_5

    .line 203
    if-eqz v13, :cond_4

    move-wide v8, v10

    .line 199
    :goto_3
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move-wide v10, v8

    move-wide v8, v2

    goto :goto_2

    .line 195
    :cond_2
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 197
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v16, v8

    move-wide v8, v2

    move-wide/from16 v2, v16

    .line 203
    goto :goto_3

    .line 205
    :cond_5
    if-eqz v13, :cond_6

    move-wide/from16 v16, v8

    move-wide v8, v2

    move-wide/from16 v2, v16

    goto :goto_3

    :cond_6
    move-wide v8, v10

    goto :goto_3

    :cond_7
    move-wide v2, v10

    .line 208
    invoke-static/range {v2 .. v7}, Landroid/support/v4/b/a;->arQ(DDD)I

    move-result v2

    return v2
.end method

.method public static fromDominantColor(IZ)Lcom/android/launcher3/graphics/IconPalette;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/launcher3/graphics/IconPalette;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/graphics/IconPalette;-><init>(IZ)V

    return-object v0
.end method

.method public static getBadgePalette(Landroid/content/res/Resources;)Lcom/android/launcher3/graphics/IconPalette;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 98
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 101
    return-object v1

    .line 103
    :cond_0
    sget-object v1, Lcom/android/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    if-nez v1, :cond_1

    .line 104
    invoke-static {v0, v2}, Lcom/android/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 106
    :cond_1
    sget-object v0, Lcom/android/launcher3/graphics/IconPalette;->sBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    return-object v0
.end method

.method public static getFolderBadgePalette(Landroid/content/res/Resources;)Lcom/android/launcher3/graphics/IconPalette;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/android/launcher3/graphics/IconPalette;->sFolderBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    if-nez v0, :cond_0

    .line 114
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 115
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->fromDominantColor(IZ)Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/graphics/IconPalette;->sFolderBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    .line 117
    :cond_0
    sget-object v0, Lcom/android/launcher3/graphics/IconPalette;->sFolderBadgePalette:Lcom/android/launcher3/graphics/IconPalette;

    return-object v0
.end method

.method private static getLighterOrDarkerVersionOfColor(IF)I
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v0, -0x1

    .line 225
    invoke-static {v0, p0, p1}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v1

    .line 226
    invoke-static {v3, p0, p1}, Landroid/support/v4/b/a;->ase(IIF)I

    move-result v2

    .line 228
    if-ltz v1, :cond_1

    .line 229
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    .line 235
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroid/support/v4/b/a;->asf(II)I

    move-result v0

    return v0

    .line 230
    :cond_1
    if-ltz v2, :cond_0

    .line 231
    invoke-static {v3, v2}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    goto :goto_0
.end method

.method private static getLowContrastColor(I)I
    .locals 1

    .prologue
    .line 221
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result v0

    return v0
.end method

.method private static getMutedColor(IF)I
    .locals 2

    .prologue
    .line 212
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    .line 213
    invoke-static {v0, p0}, Landroid/support/v4/b/a;->asf(II)I

    move-result v0

    return v0
.end method

.method private static getTextColorForBackground(I)I
    .locals 1

    .prologue
    .line 217
    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result v0

    return v0
.end method

.method private static resolveColor(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 155
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 2

    .prologue
    .line 129
    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/IconPalette;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 131
    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->ensureTextContrast(II)I

    move-result v1

    .line 143
    return v1
.end method


# virtual methods
.method public getPreloadProgressColor(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 75
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 78
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 79
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 80
    const/4 v0, 0x1

    aget v0, v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 81
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    aget v0, v1, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v3

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto :goto_0
.end method
