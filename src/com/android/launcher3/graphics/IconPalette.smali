.class public Lcom/android/launcher3/graphics/IconPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FOLDER_ICON_PALETTE:Lcom/android/launcher3/graphics/IconPalette;


# instance fields
.field public final backgroundColor:I

.field public final backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final dominantColor:I

.field public final saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field public final secondaryColor:I

.field public final textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/launcher3/graphics/IconPalette;

    const-string/jumbo v1, "#BDC1C6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/IconPalette;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/graphics/IconPalette;->FOLDER_ICON_PALETTE:Lcom/android/launcher3/graphics/IconPalette;

    .line 33
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 52
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 54
    iget v1, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v1, v0}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 55
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 57
    iget v1, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    const v2, 0x3f0a3d71    # 0.54f

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/IconPalette;->getMutedColor(IF)I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 58
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/IconPalette;->saturatedBackgroundColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 59
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getTextColorForBackground(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->textColor:I

    .line 60
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->backgroundColor:I

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconPalette;->getLowContrastColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconPalette;->secondaryColor:I

    .line 61
    return-void
.end method

.method private static ensureTextContrast(II)I
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x1

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v2, v3}, Lcom/android/launcher3/graphics/IconPalette;->findContrastColor(IIZD)I

    move-result v0

    return v0
.end method

.method private static findContrastColor(IIZD)I
    .locals 21

    .prologue
    .line 152
    if-eqz p2, :cond_0

    move/from16 v3, p0

    .line 153
    :goto_0
    if-eqz p2, :cond_1

    .line 154
    :goto_1
    move/from16 v0, p1

    invoke-static {v3, v0}, Landroid/support/v4/b/a;->aqN(II)D

    move-result-wide v4

    cmpl-double v2, v4, p3

    if-ltz v2, :cond_2

    .line 155
    return p0

    :cond_0
    move/from16 v3, p1

    .line 152
    goto :goto_0

    :cond_1
    move/from16 p1, p0

    .line 153
    goto :goto_1

    .line 158
    :cond_2
    const/4 v2, 0x3

    new-array v6, v2, [D

    .line 159
    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2, v6}, Landroid/support/v4/b/a;->ara(I[D)V

    .line 161
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    aget-wide v10, v6, v2

    .line 162
    const/4 v2, 0x1

    aget-wide v4, v6, v2

    const/4 v2, 0x2

    aget-wide v6, v6, v2

    .line 163
    const/4 v2, 0x0

    move v14, v2

    move/from16 v8, p1

    move v9, v3

    :goto_3
    const/16 v2, 0xf

    if-ge v14, v2, :cond_6

    sub-double v2, v10, v12

    const-wide v16, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v2, v16

    if-lez v2, :cond_6

    .line 164
    add-double v2, v12, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v2, v2, v16

    .line 165
    if-eqz p2, :cond_4

    .line 166
    invoke-static/range {v2 .. v7}, Landroid/support/v4/b/a;->aqS(DDD)I

    move-result v9

    .line 170
    :goto_4
    invoke-static {v9, v8}, Landroid/support/v4/b/a;->aqN(II)D

    move-result-wide v16

    cmpl-double v15, v16, p3

    if-lez v15, :cond_5

    move-wide/from16 v18, v10

    move-wide v10, v2

    move-wide/from16 v2, v18

    .line 163
    :goto_5
    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move-wide v12, v10

    move-wide v10, v2

    goto :goto_3

    :cond_3
    move/from16 v2, p1

    .line 159
    goto :goto_2

    .line 168
    :cond_4
    invoke-static/range {v2 .. v7}, Landroid/support/v4/b/a;->aqS(DDD)I

    move-result v8

    goto :goto_4

    :cond_5
    move-wide v10, v12

    .line 173
    goto :goto_5

    :cond_6
    move-wide v2, v12

    .line 176
    invoke-static/range {v2 .. v7}, Landroid/support/v4/b/a;->aqS(DDD)I

    move-result v2

    return v2
.end method

.method public static fromDominantColor(I)Lcom/android/launcher3/graphics/IconPalette;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/launcher3/graphics/IconPalette;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/IconPalette;-><init>(I)V

    return-object v0
.end method

.method private static getLighterOrDarkerVersionOfColor(IF)I
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v0, -0x1

    .line 193
    invoke-static {v0, p0, p1}, Landroid/support/v4/b/a;->arf(IIF)I

    move-result v1

    .line 194
    invoke-static {v3, p0, p1}, Landroid/support/v4/b/a;->arf(IIF)I

    move-result v2

    .line 196
    if-ltz v1, :cond_1

    .line 197
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    .line 203
    :cond_0
    :goto_0
    invoke-static {v0, p0}, Landroid/support/v4/b/a;->arg(II)I

    move-result v0

    return v0

    .line 198
    :cond_1
    if-ltz v2, :cond_0

    .line 199
    invoke-static {v3, v2}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    goto :goto_0
.end method

.method private static getLowContrastColor(I)I
    .locals 1

    .prologue
    .line 189
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result v0

    return v0
.end method

.method private static getMutedColor(IF)I
    .locals 2

    .prologue
    .line 180
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    .line 181
    invoke-static {v0, p0}, Landroid/support/v4/b/a;->arg(II)I

    move-result v0

    return v0
.end method

.method private static getTextColorForBackground(I)I
    .locals 1

    .prologue
    .line 185
    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {p0, v0}, Lcom/android/launcher3/graphics/IconPalette;->getLighterOrDarkerVersionOfColor(IF)I

    move-result v0

    return v0
.end method

.method private static resolveColor(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 120
    :cond_0
    return p1
.end method

.method public static resolveContrastColor(Landroid/content/Context;II)I
    .locals 2

    .prologue
    .line 94
    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/IconPalette;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 96
    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/IconPalette;->ensureTextContrast(II)I

    move-result v1

    .line 108
    return v1
.end method


# virtual methods
.method public getPreloadProgressColor(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 67
    iget v0, p0, Lcom/android/launcher3/graphics/IconPalette;->dominantColor:I

    .line 70
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 71
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 72
    const/4 v0, 0x1

    aget v0, v1, v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    .line 75
    :cond_0
    aget v0, v1, v3

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v3

    .line 76
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    goto :goto_0
.end method
