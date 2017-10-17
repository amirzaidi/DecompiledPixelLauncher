.class final Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mDiff:F

.field private mDurationSeconds:F

.field private mVelocity:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput p1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    .line 340
    iput p2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    .line 341
    iput p3, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    .line 342
    return-void
.end method

.method synthetic constructor <init>(FFFLcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mDurationSeconds:F

    mul-float/2addr v0, p1

    .line 347
    iget v1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mVelocity:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$VelocityInterpolator;->mDiff:F

    div-float/2addr v0, v1

    return v0
.end method
