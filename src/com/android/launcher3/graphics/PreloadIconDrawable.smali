.class public Lcom/android/launcher3/graphics/PreloadIconDrawable;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"


# static fields
.field private static final INTERNAL_STATE:Landroid/util/Property;

.field private static final sShadowCache:Landroid/util/SparseArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentAnim:Landroid/animation/ObjectAnimator;

.field private mIconScale:F

.field private mIndicatorColor:I

.field private mInternalStateProgress:F

.field private final mPathMeasure:Landroid/graphics/PathMeasure;

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressPath:Landroid/graphics/Path;

.field private mRanFinishAnimation:Z

.field private final mScaledProgressPath:Landroid/graphics/Path;

.field private final mScaledTrackPath:Landroid/graphics/Path;

.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTrackAlpha:I

.field private mTrackLength:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/graphics/PreloadIconDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "internalStateProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Path;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 77
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    .line 108
    iput-object p3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPath:Landroid/graphics/Path;

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 118
    return-void
.end method

.method private getShadowBitmap(IIF)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 143
    shl-int/lit8 v0, p1, 0x10

    or-int v2, v0, p2

    .line 144
    sget-object v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 145
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 146
    :goto_0
    if-eqz v0, :cond_1

    .line 147
    return-object v0

    :cond_0
    move-object v0, v1

    .line 145
    goto :goto_0

    .line 149
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 151
    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x55000000

    invoke-virtual {v4, p3, v6, v6, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 152
    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const v5, 0x77eeeeee

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    iget-object v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 156
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    sget-object v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->sShadowCache:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    return-object v0
.end method

.method private setInternalProgress(F)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 264
    iput p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    .line 265
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_2

    .line 266
    iput v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 268
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 269
    invoke-virtual {p0, v6}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 275
    :cond_0
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    cmpl-float v0, p1, v3

    if-lez v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v1, v2, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 277
    iput v4, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 278
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 279
    invoke-virtual {p0, v6}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 294
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->invalidateSelf()V

    .line 295
    return-void

    .line 270
    :cond_2
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getIconPalette()Lcom/android/launcher3/graphics/IconPalette;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/IconPalette;->getPreloadProgressColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    goto :goto_0

    .line 280
    :cond_3
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1

    .line 281
    invoke-virtual {p0, v5}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setIsDisabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 283
    sub-float v0, p1, v2

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    .line 285
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_4

    .line 287
    iput v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    .line 288
    iput v5, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    goto :goto_1

    .line 290
    :cond_4
    sub-float v1, v2, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    .line 291
    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    goto :goto_1
.end method

.method private updateInternalState(FZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 214
    iput-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 217
    :cond_0
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    .line 218
    return-void

    .line 220
    :cond_1
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    move p2, v0

    .line 223
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v1, :cond_4

    .line 224
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 241
    :goto_0
    return-void

    .line 226
    :cond_4
    sget-object v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;->INTERNAL_STATE:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput p1, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    .line 228
    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    sub-float v1, p1, v1

    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    if-eqz p3, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;-><init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mCurrentAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 180
    iget v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    iget v3, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mIconScale:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 181
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 183
    return-void
.end method

.method public hasNotCompleted()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mRanFinishAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 202
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    .line 204
    :cond_0
    const v0, 0x3fa66666    # 1.3f

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 205
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 122
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v6

    sub-float/2addr v1, v5

    div-float/2addr v1, v7

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    sub-float/2addr v2, v5

    div-float/2addr v2, v7

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 127
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 128
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mProgressPaint:Landroid/graphics/Paint;

    mul-float v2, v4, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 135
    mul-float/2addr v0, v3

    .line 134
    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getShadowBitmap(IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mScaledTrackPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mTrackLength:F

    .line 139
    iget v0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setInternalProgress(F)V

    .line 140
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    int-to-float v0, p1

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0, v2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 192
    return v1

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0
.end method
