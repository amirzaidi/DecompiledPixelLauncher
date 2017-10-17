.class Landroid/support/v7/widget/ax;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic Ue:Landroid/support/v7/widget/ai;

.field final synthetic Uf:Landroid/support/v7/widget/Z;

.field final synthetic Ug:Landroid/view/ViewPropertyAnimator;

.field final synthetic Uh:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/ai;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Landroid/support/v7/widget/ax;->Uf:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/ax;->Ue:Landroid/support/v7/widget/ai;

    iput-object p3, p0, Landroid/support/v7/widget/ax;->Ug:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/ax;->Uh:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Ug:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uh:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uh:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uh:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uf:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/ax;->Ue:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Z;->acT(Landroid/support/v7/widget/j;Z)V

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uf:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ax;->Ue:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uf:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->abF()V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/ax;->Uf:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/ax;->Ue:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TE:Landroid/support/v7/widget/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Z;->acZ(Landroid/support/v7/widget/j;Z)V

    .line 384
    return-void
.end method
