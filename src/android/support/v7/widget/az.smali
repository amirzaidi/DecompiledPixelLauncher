.class Landroid/support/v7/widget/az;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic SA:Landroid/support/v7/widget/Z;

.field final synthetic SB:Landroid/support/v7/widget/j;

.field final synthetic SC:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/v7/widget/az;->SA:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/az;->SB:Landroid/support/v7/widget/j;

    iput-object p3, p0, Landroid/support/v7/widget/az;->val$view:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v7/widget/az;->SC:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/az;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 242
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/az;->SC:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/az;->SA:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/az;->SB:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->abV(Landroid/support/v7/widget/j;)V

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/az;->SA:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->QU:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/az;->SB:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Landroid/support/v7/widget/az;->SA:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->aaD()V

    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/az;->SA:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/az;->SB:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->abX(Landroid/support/v7/widget/j;)V

    .line 237
    return-void
.end method
