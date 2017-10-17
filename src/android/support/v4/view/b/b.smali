.class abstract Landroid/support/v4/view/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final VO:[F

.field private final VP:F


# direct methods
.method public constructor <init>([F)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v4/view/b/b;->VO:[F

    .line 32
    iget-object v0, p0, Landroid/support/v4/view/b/b;->VO:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Landroid/support/v4/view/b/b;->VP:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 37
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    .line 38
    return v2

    .line 40
    :cond_0
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 41
    return v1

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/b/b;->VO:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/view/b/b;->VO:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 49
    int-to-float v1, v0

    iget v2, p0, Landroid/support/v4/view/b/b;->VP:F

    mul-float/2addr v1, v2

    .line 50
    sub-float v1, p1, v1

    .line 51
    iget v2, p0, Landroid/support/v4/view/b/b;->VP:F

    div-float/2addr v1, v2

    .line 54
    iget-object v2, p0, Landroid/support/v4/view/b/b;->VO:[F

    aget v2, v2, v0

    iget-object v3, p0, Landroid/support/v4/view/b/b;->VO:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/support/v4/view/b/b;->VO:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method
