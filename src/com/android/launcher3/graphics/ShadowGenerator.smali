.class public Lcom/android/launcher3/graphics/ShadowGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mIconSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    iput v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    .line 60
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v1, v1

    const v2, 0x3c2aaaab

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;
    .locals 2

    .prologue
    .line 102
    sget-object v1, Lcom/android/launcher3/graphics/ShadowGenerator;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/launcher3/graphics/ShadowGenerator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/ShadowGenerator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 107
    sget-object v0, Lcom/android/launcher3/graphics/ShadowGenerator;->sShadowGenerator:Lcom/android/launcher3/graphics/ShadowGenerator;

    return-object v0

    .line 102
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

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 119
    const v2, 0x3c2aaaab

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 120
    sub-float v0, v4, v1

    const v1, 0x3efaaaab

    div-float v0, v1, v0

    .line 124
    :cond_0
    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 125
    const/high16 v1, 0x3ef00000    # 0.46875f

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v4, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 127
    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    const/4 v2, 0x1

    const/16 v4, 0x1e

    .line 68
    const/16 v5, 0x3d

    move-object v0, p0

    move-object v1, p1

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;ZLandroid/graphics/BlurMaskFilter;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recreateIcon(Landroid/graphics/Bitmap;ZLandroid/graphics/BlurMaskFilter;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    monitor-enter p0

    .line 73
    if-eqz p2, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    move v1, v0

    .line 74
    :goto_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    .line 75
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 77
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 78
    iget-object v3, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 79
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    aget v4, v2, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mIconSize:I

    int-to-float v5, v5

    const v6, 0x3caaaaab

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowGenerator;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 95
    return-object v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
