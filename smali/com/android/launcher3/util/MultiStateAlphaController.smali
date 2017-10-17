.class public Lcom/android/launcher3/util/MultiStateAlphaController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAlphas:[F

.field private final mAm:Landroid/view/accessibility/AccessibilityManager;

.field private final mTargetView:Landroid/view/View;

.field private mZeroAlphaListenerCount:I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/util/MultiStateAlphaController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/util/MultiStateAlphaController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mZeroAlphaListenerCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/util/MultiStateAlphaController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mZeroAlphaListenerCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/util/MultiStateAlphaController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/MultiStateAlphaController;->updateAlpha()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mZeroAlphaListenerCount:I

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mTargetView:Landroid/view/View;

    .line 41
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    .line 42
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAm:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    return-void
.end method

.method private updateAlpha()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 54
    iget v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mZeroAlphaListenerCount:I

    if-lez v1, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    array-length v4, v3

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v3, v1

    .line 59
    mul-float/2addr v2, v5

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mTargetView:Landroid/view/View;

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    goto :goto_1
.end method


# virtual methods
.method public animateAlphaAtIndex(FI)Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    aget v0, v0, p2

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-array v0, v1, [F

    aput v3, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 88
    :goto_0
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;-><init>(Lcom/android/launcher3/util/MultiStateAlphaController;Lcom/android/launcher3/util/MultiStateAlphaController$ZeroAlphaAnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    :cond_0
    return-object v0

    .line 77
    :cond_1
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    aget v1, v1, p2

    aput v1, v0, v2

    aput p1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/android/launcher3/util/MultiStateAlphaController$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/util/MultiStateAlphaController$1;-><init>(Lcom/android/launcher3/util/MultiStateAlphaController;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public setAlphaAtIndex(FI)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/util/MultiStateAlphaController;->mAlphas:[F

    aput p1, v0, p2

    .line 49
    invoke-direct {p0}, Lcom/android/launcher3/util/MultiStateAlphaController;->updateAlpha()V

    .line 50
    return-void
.end method
