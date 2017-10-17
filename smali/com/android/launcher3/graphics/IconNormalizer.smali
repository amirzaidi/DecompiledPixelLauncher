.class public Lcom/android/launcher3/graphics/IconNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sIconNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;


# instance fields
.field private final mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private mAdaptiveIconScale:F

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapARGB:Landroid/graphics/Bitmap;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCanvasARGB:Landroid/graphics/Canvas;

.field private mDir:Ljava/io/File;

.field private mFileId:I

.field private final mLeftBorder:[F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxSize:I

.field private mPaintIcon:Landroid/graphics/Paint;

.field private final mPaintMaskShape:Landroid/graphics/Paint;

.field private final mPaintMaskShapeOutline:Landroid/graphics/Paint;

.field private final mPixels:[B

.field private final mPixelsARGB:[I

.field private mRandom:Ljava/util/Random;

.field private final mRightBorder:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/IconNormalizer;->LOCK:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    .line 97
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 99
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixels:[B

    .line 100
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixelsARGB:[I

    .line 101
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mLeftBorder:[F

    .line 102
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mRightBorder:[F

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 107
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmapARGB:Landroid/graphics/Bitmap;

    .line 108
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmapARGB:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvasARGB:Landroid/graphics/Canvas;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintIcon:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintIcon:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    .line 125
    iget v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    iget v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconScale:F

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mDir:Ljava/io/File;

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mRandom:Ljava/util/Random;

    .line 130
    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .locals 10

    .prologue
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    .line 368
    array-length v0, p0

    .line 370
    add-int/lit8 v0, v0, -0x1

    new-array v5, v0, [F

    .line 373
    const/4 v0, -0x1

    .line 377
    add-int/lit8 v2, p2, 0x1

    move v1, v4

    :goto_0
    if-gt v2, p3, :cond_5

    .line 378
    aget v3, p0, v2

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v3, v3, v6

    if-gtz v3, :cond_0

    move v9, v1

    move v1, v0

    move v0, v9

    .line 377
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_0

    .line 383
    :cond_0
    cmpl-float v3, v1, v4

    if-nez v3, :cond_2

    move v0, p2

    .line 402
    :cond_1
    :goto_2
    aget v1, p0, v2

    aget v3, p0, v0

    sub-float/2addr v1, v3

    sub-int v3, v2, v0

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v3, v0

    .line 404
    :goto_3
    if-ge v3, v2, :cond_4

    .line 405
    aput v1, v5, v3

    .line 406
    aget v6, p0, v0

    sub-int v7, v3, v0

    int-to-float v7, v7

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    aput v6, p0, v3

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 386
    :cond_2
    aget v3, p0, v2

    aget v6, p0, v0

    sub-float/2addr v3, v6

    sub-int v6, v2, v0

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 390
    sub-float v1, v3, v1

    int-to-float v3, p1

    mul-float/2addr v1, v3

    cmpg-float v1, v1, v8

    if-gez v1, :cond_1

    .line 391
    :cond_3
    if-le v0, p2, :cond_1

    .line 392
    add-int/lit8 v0, v0, -0x1

    .line 393
    aget v1, p0, v2

    aget v3, p0, v0

    sub-float/2addr v1, v3

    sub-int v3, v2, v0

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 394
    aget v3, v5, v0

    sub-float/2addr v1, v3

    int-to-float v3, p1

    mul-float/2addr v1, v3

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_3

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v2

    .line 408
    goto :goto_1

    .line 410
    :cond_5
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;
    .locals 2

    .prologue
    .line 413
    sget-object v1, Lcom/android/launcher3/graphics/IconNormalizer;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    sget-object v0, Lcom/android/launcher3/graphics/IconNormalizer;->sIconNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/android/launcher3/graphics/IconNormalizer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/IconNormalizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/graphics/IconNormalizer;->sIconNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 418
    sget-object v0, Lcom/android/launcher3/graphics/IconNormalizer;->sIconNormalizer:Lcom/android/launcher3/graphics/IconNormalizer;

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isShape(Landroid/graphics/Path;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 141
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 145
    return v3

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mFileId:I

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmapARGB:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvasARGB:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintIcon:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvasARGB:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvasARGB:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmapARGB:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/IconNormalizer;->isTransparentBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 185
    if-nez v0, :cond_1

    .line 189
    return v3

    .line 191
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isTransparentBitmap(Landroid/graphics/Bitmap;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixelsARGB:[I

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p1

    move v6, v3

    .line 200
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v2

    move v0, v2

    .line 205
    :goto_0
    mul-int v4, v3, v7

    if-ge v1, v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixelsARGB:[I

    aget v4, v4, v1

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v5, 0x28

    if-le v4, v5, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 211
    const v1, 0x3ba3d70a    # 0.005f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v2, 0x1

    .line 215
    :cond_2
    return v2
.end method


# virtual methods
.method public declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F
    .locals 17

    .prologue
    monitor-enter p0

    .line 234
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_1

    .line 235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 236
    if-eqz p2, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 241
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 243
    if-lez v3, :cond_2

    if-gtz v2, :cond_9

    .line 244
    :cond_2
    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    if-le v3, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    .line 245
    :cond_4
    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    if-le v2, v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    :cond_6
    move v11, v2

    move v12, v3

    .line 252
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 253
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixels:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 261
    const/4 v9, -0x1

    .line 262
    const/4 v8, -0x1

    .line 263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    add-int/lit8 v6, v2, 0x1

    .line 264
    const/4 v5, -0x1

    .line 271
    const/4 v10, 0x0

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    sub-int v13, v2, v12

    .line 277
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_d

    .line 278
    const/4 v4, -0x1

    const/4 v2, -0x1

    .line 279
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v12, :cond_c

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mPixels:[B

    aget-byte v14, v14, v10

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x28

    if-le v14, v15, :cond_8

    .line 281
    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move v2, v3

    :cond_7
    move v4, v3

    .line 286
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 246
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    if-gt v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    if-le v2, v4, :cond_b

    .line 247
    :cond_a
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 248
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    mul-int/2addr v3, v5

    div-int/2addr v3, v4

    .line 249
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mMaxSize:I

    mul-int/2addr v2, v5

    div-int/2addr v2, v4

    move v11, v2

    move v12, v3

    goto :goto_0

    :cond_b
    move v11, v2

    move v12, v3

    .line 246
    goto :goto_0

    .line 288
    :cond_c
    add-int/2addr v10, v13

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mLeftBorder:[F

    int-to-float v14, v2

    aput v14, v3, v7

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mRightBorder:[F

    int-to-float v14, v4

    aput v14, v3, v7

    .line 294
    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 296
    const/4 v3, -0x1

    if-ne v9, v3, :cond_17

    move v8, v7

    .line 300
    :goto_3
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 301
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    move v4, v7

    move v5, v8

    .line 277
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v6, v3

    move v8, v4

    move v9, v5

    move v5, v2

    goto :goto_1

    .line 305
    :cond_d
    const/4 v2, -0x1

    if-eq v9, v2, :cond_e

    const/4 v2, -0x1

    if-ne v5, v2, :cond_f

    .line 307
    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    monitor-exit p0

    return v2

    .line 310
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mLeftBorder:[F

    const/4 v3, 0x1

    invoke-static {v2, v3, v9, v8}, Lcom/android/launcher3/graphics/IconNormalizer;->convertToConvexArray([FIII)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mRightBorder:[F

    const/4 v3, -0x1

    invoke-static {v2, v3, v9, v8}, Lcom/android/launcher3/graphics/IconNormalizer;->convertToConvexArray([FIII)V

    .line 314
    const/4 v3, 0x0

    .line 315
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_5
    if-ge v3, v11, :cond_11

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mLeftBorder:[F

    aget v4, v4, v3

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_10

    .line 315
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 319
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mRightBorder:[F

    aget v4, v4, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mLeftBorder:[F

    aget v7, v7, v3

    sub-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    add-float/2addr v2, v4

    goto :goto_6

    .line 323
    :cond_11
    add-int/lit8 v3, v8, 0x1

    sub-int/2addr v3, v9

    add-int/lit8 v4, v5, 0x1

    sub-int/2addr v4, v6

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 324
    div-float v3, v2, v3

    .line 327
    const v4, 0x3f490fdb

    cmpg-float v4, v3, v4

    if-gez v4, :cond_15

    .line 328
    const v3, 0x3f28e38e

    .line 332
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 338
    if-eqz p2, :cond_12

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v12

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 340
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    int-to-float v7, v12

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    .line 341
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    int-to-float v8, v11

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    .line 339
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 344
    :cond_12
    if-eqz p4, :cond_13

    move-object/from16 v0, p4

    array-length v4, v0

    if-lez v4, :cond_13

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->isShape(Landroid/graphics/Path;)Z

    move-result v4

    const/4 v5, 0x0

    aput-boolean v4, p4, v5

    .line 347
    :cond_13
    mul-int v4, v12, v11

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 349
    cmpl-float v4, v2, v3

    if-lez v4, :cond_16

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 350
    :goto_8
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_14

    .line 351
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_14

    .line 352
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconScale:F

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/graphics/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    monitor-exit p0

    .line 355
    return v2

    .line 330
    :cond_15
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    const v4, 0x3d25ae4f

    mul-float/2addr v3, v4

    const v4, 0x3f26aaab

    add-float/2addr v3, v4

    goto/16 :goto_7

    .line 349
    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_8

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_17
    move v8, v9

    goto/16 :goto_3

    :cond_18
    move v2, v5

    move v3, v6

    move v4, v8

    move v5, v9

    goto/16 :goto_4
.end method
