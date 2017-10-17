.class final Lcom/android/launcher3/FastBitmapDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3d4ccccd    # 0.05f

    .line 49
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 50
    div-float v0, p1, v1

    return v0

    .line 51
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 52
    return v2

    .line 54
    :cond_1
    sub-float v0, v2, p1

    const v1, 0x3f333333    # 0.7f

    div-float/2addr v0, v1

    return v0
.end method
