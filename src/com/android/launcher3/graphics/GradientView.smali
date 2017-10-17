.class public Lcom/android/launcher3/graphics/GradientView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private final mAccelerator:Landroid/view/animation/Interpolator;

.field private final mAlphaGradientMask:Landroid/graphics/Bitmap;

.field private final mAlphaMaskRect:Landroid/graphics/RectF;

.field private final mAlphaStart:F

.field private final mAppContext:Landroid/content/Context;

.field private mColor1:I

.field private mColor2:I

.field private final mDebugPaint:Landroid/graphics/Paint;

.field private final mFinalMaskRect:Landroid/graphics/RectF;

.field private mHeight:I

.field private final mMaskHeight:I

.field private final mMaskWidth:I

.field private final mPaintNoScrim:Landroid/graphics/Paint;

.field private final mPaintWithScrim:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mScrimColor:I

.field private mShowScrim:Z

.field private final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    .line 55
    iput v1, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    .line 56
    iput v1, p0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mDebugPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mAccelerator:Landroid/view/animation/Interpolator;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mAppContext:Landroid/content/Context;

    .line 75
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    .line 77
    const/high16 v0, 0x40000000    # 2.0f

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    .line 79
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    .line 81
    const v0, 0x7f010026

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    .line 82
    invoke-static {v1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 83
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->updateColors()V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->createDitheredAlphaMask()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaGradientMask:Landroid/graphics/Bitmap;

    .line 85
    return-void

    .line 80
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private createRadialShader()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x3f866666    # 1.05f

    .line 128
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v0, v8

    .line 129
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v0, v0

    sub-float v0, v3, v0

    div-float v7, v0, v3

    .line 131
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 132
    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 133
    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    .line 135
    new-array v4, v12, [I

    iget v5, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    aput v5, v4, v9

    iget v5, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    aput v5, v4, v10

    iget v5, p0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    aput v5, v4, v11

    .line 136
    new-array v5, v12, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    aput v7, v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v11

    .line 137
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 131
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asf(II)I

    move-result v5

    .line 141
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asf(II)I

    move-result v6

    .line 142
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 143
    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 144
    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    .line 146
    new-array v4, v12, [I

    aput v5, v4, v9

    aput v5, v4, v10

    aput v6, v4, v11

    .line 147
    new-array v5, v12, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    aput v7, v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v11

    .line 148
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 142
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    return-void
.end method

.method private updateColors()V
    .locals 2

    .prologue
    const/16 v1, 0xbf

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getMainColor()I

    move-result v0

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getSecondaryColor()I

    move-result v0

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    .line 110
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->createRadialShader()V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public createDitheredAlphaMask()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 185
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 186
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    new-instance v10, Landroid/graphics/Paint;

    const/4 v0, 0x4

    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 188
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v4, v2

    .line 189
    new-array v5, v7, [I

    .line 190
    const v2, 0xffffff

    const/4 v3, 0x0

    aput v2, v5, v3

    .line 191
    const/16 v2, 0xf2

    invoke-static {v6, v2}, Landroid/support/v4/b/a;->asb(II)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v5, v3

    .line 192
    const/4 v2, 0x2

    aput v6, v5, v2

    .line 193
    new-array v6, v7, [F

    fill-array-data v6, :array_0

    .line 194
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    .line 188
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 195
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 196
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v4, v0

    move-object v0, v9

    move v2, v1

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 197
    return-object v8

    .line 193
    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 97
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const v3, 0x3e947ae1    # 0.29f

    const/4 v5, 0x0

    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    .line 167
    :goto_0
    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    const v2, 0x3f35c290    # 0.71000004f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 168
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 169
    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    const/high16 v3, 0x437f0000    # 255.0f

    sub-float v2, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAccelerator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    .line 170
    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 172
    iget-object v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v1, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaGradientMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 175
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 182
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->updateColors()V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->invalidate()V

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    .line 120
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->createRadialShader()V

    .line 123
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/graphics/GradientView;->setProgress(FZ)V

    .line 154
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    .line 158
    iput-boolean p2, p0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->invalidate()V

    .line 160
    return-void
.end method
