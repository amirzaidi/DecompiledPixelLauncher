.class Landroid/support/v7/widget/an;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic TK:Landroid/support/v7/widget/ai;

.field final synthetic TL:Landroid/view/ViewPropertyAnimator;

.field final synthetic TM:Landroid/support/v7/widget/Z;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/ai;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Landroid/support/v7/widget/an;->TM:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/an;->TK:Landroid/support/v7/widget/ai;

    iput-object p3, p0, Landroid/support/v7/widget/an;->TL:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/an;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/an;->TL:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/an;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/an;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/an;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/an;->TM:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/an;->TK:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Z;->acT(Landroid/support/v7/widget/j;Z)V

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/an;->TM:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->SM:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/an;->TK:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/an;->TM:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->abF()V

    .line 373
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/an;->TM:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/an;->TK:Landroid/support/v7/widget/ai;

    iget-object v1, v1, Landroid/support/v7/widget/ai;->TF:Landroid/support/v7/widget/j;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Z;->acZ(Landroid/support/v7/widget/j;Z)V

    .line 362
    return-void
.end method
