.class public Lcom/android/launcher3/util/LauncherEdgeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COS:F

.field private static final SIN:F


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/LauncherEdgeEffect;->SIN:F

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/LauncherEdgeEffect;->COS:F

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 90
    iput v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDisplacement:F

    .line 91
    iput v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mTargetDisplacement:F

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    return-void
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 322
    iget-wide v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 326
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    .line 327
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 328
    iget v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDisplacement:F

    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDisplacement:F

    .line 330
    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 331
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_0
    iput v6, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    .line 334
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    .line 335
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    .line 337
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 338
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 341
    iput v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 342
    iput v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    .line 346
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    .line 347
    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    .line 349
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 350
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 353
    iput v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 354
    iput v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 357
    :pswitch_2
    iput v6, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    goto :goto_0

    .line 360
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 290
    invoke-direct {p0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->update()V

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    .line 293
    iget-object v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mRadius:F

    sub-float/2addr v3, v4

    .line 295
    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v6, v4, v2, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 297
    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDisplacement:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    .line 298
    iget-object v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 299
    iget-object v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    add-float/2addr v2, v4

    iget v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mRadius:F

    iget-object v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_0

    .line 304
    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    move v0, v1

    .line 308
    :cond_0
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    if-nez v2, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    iget v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onPull(F)V
    .locals 1

    .prologue
    .line 155
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onPull(FF)V

    .line 156
    return-void
.end method

.method public onPull(FF)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    .line 172
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 173
    iput p2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mTargetDisplacement:F

    .line 174
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    if-eq v2, v5, :cond_1

    .line 178
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 180
    :cond_1
    iput v5, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    .line 182
    iput-wide v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    .line 183
    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    .line 185
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPullDistance:F

    .line 187
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 189
    iget v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 188
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    .line 191
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPullDistance:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 192
    iput v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    .line 200
    :goto_0
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 201
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    .line 202
    return-void

    .line 194
    :cond_2
    const-wide/16 v0, 0x0

    .line 195
    iget v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPullDistance:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 194
    div-double v2, v6, v2

    sub-double v2, v6, v2

    .line 195
    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 194
    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 195
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 194
    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 197
    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    iput v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPullDistance:F

    .line 213
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mState:I

    .line 218
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaStart:F

    .line 219
    iget v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYStart:F

    .line 221
    iput v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowAlphaFinish:F

    .line 222
    iput v2, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mGlowScaleYFinish:F

    .line 224
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mStartTime:J

    .line 225
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mDuration:F

    .line 226
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    return-void
.end method

.method public setSize(II)V
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    int-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sget v2, Lcom/android/launcher3/util/LauncherEdgeEffect;->SIN:F

    div-float/2addr v1, v2

    .line 110
    sget v2, Lcom/android/launcher3/util/LauncherEdgeEffect;->COS:F

    mul-float/2addr v2, v1

    .line 111
    sub-float v2, v1, v2

    .line 112
    int-to-float v3, p2

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    sget v4, Lcom/android/launcher3/util/LauncherEdgeEffect;->SIN:F

    div-float/2addr v3, v4

    .line 113
    sget v4, Lcom/android/launcher3/util/LauncherEdgeEffect;->COS:F

    mul-float/2addr v4, v3

    .line 114
    sub-float/2addr v3, v4

    .line 116
    iput v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mRadius:F

    .line 117
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    div-float v1, v3, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :cond_0
    iput v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBaseGlowScale:F

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/launcher3/util/LauncherEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    return-void
.end method
