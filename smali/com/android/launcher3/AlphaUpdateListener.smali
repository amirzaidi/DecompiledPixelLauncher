.class Lcom/android/launcher3/AlphaUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mCanceled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 51
    iput-boolean p2, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    .line 52
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x3c23d70a    # 0.01f

    .line 62
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    .line 74
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 80
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 57
    return-void
.end method
