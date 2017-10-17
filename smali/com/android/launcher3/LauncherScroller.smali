.class public Lcom/android/launcher3/LauncherScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v13, 0x3e333333    # 0.175f

    const/4 v4, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v0, v2

    sput v0, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    .line 73
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    .line 74
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    .line 85
    const/4 v0, 0x0

    move v5, v0

    move v0, v4

    :goto_0
    if-ge v5, v12, :cond_4

    .line 86
    int-to-float v2, v5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v2, v3

    move v2, v0

    move v0, v1

    .line 91
    :goto_1
    sub-float v3, v0, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v3, v7

    add-float/2addr v3, v2

    .line 92
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v3

    sub-float v8, v1, v3

    mul-float/2addr v7, v8

    .line 93
    sub-float v8, v1, v3

    mul-float/2addr v8, v13

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v3, v3

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    .line 94
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_0

    .line 98
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    sub-float v8, v1, v3

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v3

    mul-float/2addr v7, v8

    mul-float v8, v3, v3

    mul-float/2addr v3, v8

    add-float/2addr v3, v7

    aput v3, v0, v5

    move v0, v1

    move v3, v4

    .line 103
    :goto_2
    sub-float v4, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float/2addr v4, v3

    .line 104
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v4

    sub-float v8, v1, v4

    mul-float/2addr v7, v8

    .line 105
    sub-float v8, v1, v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    mul-float/2addr v8, v7

    mul-float v9, v4, v4

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    .line 106
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_2

    .line 110
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    sub-float v6, v1, v4

    mul-float/2addr v6, v13

    const v8, 0x3eb33334    # 0.35000002f

    mul-float/2addr v8, v4

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    aput v4, v0, v5

    .line 85
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v4, v3

    move v0, v2

    goto :goto_0

    .line 95
    :cond_0
    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v2, v3

    .line 96
    goto :goto_1

    .line 107
    :cond_2
    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v3, v4

    .line 108
    goto :goto_2

    .line 112
    :cond_4
    sget-object v0, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    sget-object v2, Lcom/android/launcher3/LauncherScroller;->SPLINE_TIME:[F

    aput v1, v2, v12

    aput v1, v0, v12

    .line 115
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    .line 117
    sput v1, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 118
    invoke-static {v1}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 142
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 153
    iput-object p2, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    .line 155
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    .line 156
    iput-boolean p3, p0, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    .line 158
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherScroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    .line 159
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mPpi:F

    .line 174
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3

    .prologue
    .line 459
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 470
    sget v2, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 471
    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(F)I
    .locals 6

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 464
    sget v2, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 465
    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5

    .prologue
    const v2, 0x3ebc5ab2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 476
    sget v0, Lcom/android/launcher3/LauncherScroller;->sViscousFluidScale:F

    mul-float/2addr v0, p0

    .line 477
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 478
    neg-float v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 484
    :goto_0
    sget v1, Lcom/android/launcher3/LauncherScroller;->sViscousFluidNormalize:F

    mul-float/2addr v0, v1

    .line 485
    return v0

    .line 481
    :cond_0
    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v4, v0

    .line 482
    const v1, 0x3f21d2a7

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 497
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 499
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    .line 278
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 284
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    if-ge v0, v1, :cond_4

    .line 285
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 335
    :cond_1
    :goto_0
    return v6

    .line 287
    :pswitch_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    mul-float/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_2

    .line 290
    invoke-static {v0}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v0

    .line 294
    :goto_1
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 295
    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1

    .line 298
    :pswitch_1
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 299
    mul-float v0, v5, v2

    float-to-int v3, v0

    .line 300
    const/high16 v1, 0x3f800000    # 1.0f

    .line 301
    const/4 v0, 0x0

    .line 302
    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    .line 303
    int-to-float v0, v3

    div-float v1, v0, v5

    .line 304
    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 305
    sget-object v4, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v4, v4, v3

    .line 306
    sget-object v5, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    .line 307
    sub-float/2addr v3, v4

    sub-float/2addr v0, v1

    div-float v0, v3, v0

    .line 308
    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    .line 311
    :cond_3
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    .line 313
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 315
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 316
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 318
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 320
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 321
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 323
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    if-ne v0, v1, :cond_1

    .line 324
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    goto/16 :goto_0

    .line 331
    :cond_4
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    .line 332
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    .line 333
    iput-boolean v6, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    goto/16 :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 10

    .prologue
    .line 406
    iget-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->getCurrVelocity()F

    move-result v2

    .line 409
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 410
    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v5, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 411
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v5, v6

    .line 413
    div-float/2addr v3, v5

    .line 414
    div-float/2addr v4, v5

    .line 416
    mul-float/2addr v3, v2

    .line 417
    mul-float/2addr v2, v4

    .line 418
    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 419
    int-to-float v4, p4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 420
    int-to-float v4, p3

    add-float/2addr v3, v4

    float-to-int p3, v3

    .line 421
    int-to-float v3, p4

    add-float/2addr v2, v3

    float-to-int p4, v2

    .line 425
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    .line 426
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 428
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v4, v2

    .line 430
    iput v4, p0, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    .line 431
    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherScroller;->getSplineFlingDuration(F)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 432
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    .line 433
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    .line 434
    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    .line 436
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    .line 437
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 439
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/launcher3/LauncherScroller;->getSplineFlingDistance(F)D

    move-result-wide v6

    .line 440
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    .line 442
    iput p5, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    .line 443
    move/from16 v0, p6

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    .line 444
    move/from16 v0, p7

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    .line 445
    move/from16 v0, p8

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    .line 447
    float-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 449
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 450
    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v4, p0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 452
    float-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, p2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 454
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 455
    iget v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, p0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 456
    return-void

    .line 436
    :cond_1
    int-to-float v2, p3

    div-float/2addr v2, v4

    move v3, v2

    goto :goto_0

    .line 437
    :cond_2
    int-to-float v2, p4

    div-float/2addr v2, v4

    goto :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 197
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 233
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    .line 233
    :goto_0
    return v0

    .line 234
    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    return v0
.end method

.method public setFinalX(I)V
    .locals 2

    .prologue
    .line 533
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 534
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 536
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 127
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    .line 372
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 373
    iput p5, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    .line 375
    iput p1, p0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    .line 376
    iput p2, p0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    .line 377
    add-int v0, p1, p3

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    .line 378
    add-int v0, p2, p4

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 379
    int-to-float v0, p3

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    .line 380
    int-to-float v0, p4

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    .line 381
    iget v0, p0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    .line 382
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
