.class public Lcom/android/launcher3/notification/FlingAnimationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

.field private mCachedStartGradient:F

.field private mCachedVelocityFactor:F

.field private mHighVelocityPxPerSecond:F

.field private mLinearOutSlowInX2:F

.field private mMaxLengthSeconds:F

.field private mMinVelocityPxPerSecond:F

.field private final mSpeedUpFactor:F

.field private final mY2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 6

    .prologue
    .line 65
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/notification/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFFF)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;-><init>(Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    .line 51
    iput v2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mCachedStartGradient:F

    .line 52
    iput v2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mCachedVelocityFactor:F

    .line 79
    iput p2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMaxLengthSeconds:F

    .line 80
    iput p3, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 81
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 84
    iget v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mSpeedUpFactor:F

    .line 82
    const v1, 0x3eb33333    # 0.35f

    .line 83
    const v2, 0x3f2e147b    # 0.68f

    .line 82
    invoke-static {v1, v2, v0}, Lcom/android/launcher3/notification/FlingAnimationUtils;->interpolate(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mLinearOutSlowInX2:F

    .line 88
    :goto_0
    iput p5, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mY2:F

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v0, v1

    .line 90
    iput v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x453b8000    # 3000.0f

    mul-float/2addr v0, v1

    .line 92
    iput v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    .line 94
    return-void

    .line 86
    :cond_0
    iput p4, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mLinearOutSlowInX2:F

    goto :goto_0
.end method

.method private calculateLinearOutFasterInY2(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 292
    iget v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float v0, p1, v0

    .line 293
    iget v1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mHighVelocityPxPerSecond:F

    iget v2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    sub-float/2addr v1, v2

    .line 292
    div-float/2addr v0, v1

    .line 294
    const/4 v1, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 295
    sub-float v1, v3, v0

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getDismissingProperties(FFFF)Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 253
    iget v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMaxLengthSeconds:F

    float-to-double v0, v0

    .line 254
    sub-float v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, p4

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 253
    mul-double/2addr v0, v2

    double-to-float v1, v0

    .line 255
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 256
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 257
    invoke-direct {p0, v3}, Lcom/android/launcher3/notification/FlingAnimationUtils;->calculateLinearOutFasterInY2(F)F

    move-result v0

    .line 259
    div-float v4, v0, v7

    .line 260
    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v6, v6, v7, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 261
    mul-float v0, v4, v2

    div-float/2addr v0, v3

    .line 262
    cmpg-float v4, v0, v1

    if-gtz v4, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    iput-object v5, v1, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, v1, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->duration:J

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    return-object v0

    .line 264
    :cond_0
    iget v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1

    .line 270
    new-instance v0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;-><init>(FFFLcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;)V

    .line 271
    new-instance v2, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;

    .line 272
    sget-object v3, Lcom/android/launcher3/notification/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 271
    invoke-direct {v2, v0, v5, v3}, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    iput-object v2, v0, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move v0, v1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils;->mAnimatorProperties:Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    sget-object v2, Lcom/android/launcher3/notification/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    iput-object v2, v0, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    move v0, v1

    goto :goto_0
.end method

.method private static interpolate(FFF)F
    .locals 2

    .prologue
    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public applyDismissing(Landroid/animation/Animator;FFFF)V
    .locals 4

    .prologue
    .line 225
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher3/notification/FlingAnimationUtils;->getDismissingProperties(FFFF)Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;

    move-result-object v0

    .line 227
    iget-wide v2, v0, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->duration:J

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 228
    iget-object v0, v0, Lcom/android/launcher3/notification/FlingAnimationUtils$AnimatorProperties;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    return-void
.end method
