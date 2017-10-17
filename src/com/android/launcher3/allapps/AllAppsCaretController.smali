.class public Lcom/android/launcher3/allapps/AllAppsCaretController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCaretAnimator:Landroid/animation/ObjectAnimator;

.field private mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

.field private mLastCaretProgress:F

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mThresholdCrossed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/pageindicators/CaretDrawable;Lcom/android/launcher3/Launcher;)V
    .locals 8

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    .line 44
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    const v1, 0x7f0d0016

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 47
    const v2, 0x10c000d

    .line 46
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    const-string/jumbo v4, "caretProgress"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    .line 51
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    return-void
.end method

.method private animateCaretToProgress(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLastCaretProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 101
    :cond_1
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLastCaretProgress:F

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [F

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 104
    return-void
.end method

.method private getThreshold()F
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->useVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    if-eqz v0, :cond_1

    const v0, 0x3c75c28f    # 0.015f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDragStart()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    .line 121
    return-void
.end method

.method public updateCaret(FFZ)V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    sub-float v0, v1, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->useVerticalBarLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 66
    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mThresholdCrossed:Z

    .line 71
    const v0, 0x3f333333    # 0.7f

    div-float v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mCaretDrawable:Lcom/android/launcher3/pageindicators/CaretDrawable;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/pageindicators/CaretDrawable;->setCaretProgress(F)V

    .line 76
    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsCaretController;->mLastCaretProgress:F

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-nez p3, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 83
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsCaretController;->getThreshold()F

    move-result v0

    sub-float v0, v1, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 85
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsCaretController;->animateCaretToProgress(F)V

    goto :goto_0
.end method
