.class public Lcom/android/launcher3/notification/Interpolators;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v2, 0x3ecccccd    # 0.4f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/notification/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/notification/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/notification/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 35
    sput-object v0, Lcom/android/launcher3/notification/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
