.class Lcom/android/launcher3/InverseZInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private zInterpolator:Lcom/android/launcher3/ZInterpolator;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/android/launcher3/ZInterpolator;

    invoke-direct {v0, p1}, Lcom/android/launcher3/ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/InverseZInterpolator;->zInterpolator:Lcom/android/launcher3/ZInterpolator;

    .line 115
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/InverseZInterpolator;->zInterpolator:Lcom/android/launcher3/ZInterpolator;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ZInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method
