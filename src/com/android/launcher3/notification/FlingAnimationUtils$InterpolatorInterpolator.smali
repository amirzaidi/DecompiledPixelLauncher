.class final Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mCrossfader:Landroid/view/animation/Interpolator;

.field private mInterpolator1:Landroid/view/animation/Interpolator;

.field private mInterpolator2:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    .line 317
    iput-object p2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    .line 318
    iput-object p3, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    .line 319
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mCrossfader:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 324
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    .line 325
    iget-object v2, p0, Lcom/android/launcher3/notification/FlingAnimationUtils$InterpolatorInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 324
    add-float/2addr v0, v1

    return v0
.end method
