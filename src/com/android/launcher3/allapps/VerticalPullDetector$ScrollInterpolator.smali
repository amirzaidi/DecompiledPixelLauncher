.class public Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field mSteeper:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 298
    sub-float v1, p1, v3

    .line 299
    mul-float v0, v1, v1

    mul-float/2addr v0, v1

    .line 300
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->mSteeper:Z

    if-eqz v2, :cond_0

    .line 301
    mul-float/2addr v1, v1

    mul-float/2addr v0, v1

    .line 303
    :cond_0
    add-float/2addr v0, v3

    return v0
.end method

.method public setVelocityAtZero(F)V
    .locals 1

    .prologue
    .line 294
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/VerticalPullDetector$ScrollInterpolator;->mSteeper:Z

    .line 295
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
