.class public Lcom/android/launcher3/graphics/ShadowGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    .line 58
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v2, v2

    const v3, 0x3c2aaaab

    mul-float/2addr v2, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 62
    return-void
.end method

.method public static createPillWithShadow(III)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 88
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    div-float v2, v1, v2

    .line 89
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x41800000    # 16.0f

    div-float v9, v1, v3

    .line 91
    div-int/lit8 v10, p2, 0x2

    .line 93
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 94
    new-instance v8, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v8, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 95
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 97
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 98
    int-to-float v4, v10

    add-float/2addr v2, v4

    add-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 99
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 100
    mul-int/lit8 v3, v2, 0x2

    .line 101
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 102
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    div-int/lit8 v3, p1, 0x2

    sub-int v12, v2, v3

    .line 105
    div-int/lit8 v3, p2, 0x2

    sub-int v13, v2, v3

    .line 106
    div-int/lit8 v3, p1, 0x2

    add-int v14, v2, v3

    .line 107
    div-int/lit8 v3, p2, 0x2

    add-int v15, v2, v3

    .line 110
    const/16 v2, 0x1e

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    int-to-float v2, v12

    int-to-float v3, v13

    int-to-float v4, v14

    int-to-float v5, v15

    int-to-float v6, v10

    int-to-float v7, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 114
    const/16 v2, 0x3d

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    int-to-float v2, v12

    int-to-float v3, v13

    add-float/2addr v3, v9

    int-to-float v4, v14

    int-to-float v5, v15

    add-float/2addr v5, v9

    .line 116
    int-to-float v6, v10

    int-to-float v7, v10

    .line 115
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 119
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    move/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    int-to-float v2, v12

    int-to-float v3, v13

    int-to-float v4, v14

    int-to-float v5, v15

    int-to-float v6, v10

    int-to-float v7, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    return-object v11
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 128
    sget-object v1, Lcom/android/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/launcher3/graphics/ShadowGenerator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/ShadowGenerator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 133
    sget-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getScaleForBounds(Landroid/graphics/RectF;)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, 0x3d000000    # 0.03125f

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    .line 144
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 145
    const v2, 0x3c2aaaab

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 146
    sub-float v0, v4, v1

    const v1, 0x3efaaaab

    div-float v0, v1, v0

    .line 150
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 151
    const/high16 v1, 0x3ef00000    # 0.46875f

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 153
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    monitor-enter p0

    .line 65
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    .line 66
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    iget v2, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    iget v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v0, v0, v5

    int-to-float v0, v0

    iget v5, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v5, v5

    const v6, 0x3caaaaab

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 83
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
