.class Landroid/support/v7/widget/X;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic QH:Landroid/support/v7/widget/Z;

.field final synthetic QI:Landroid/support/v7/widget/j;

.field final synthetic QJ:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Z;Landroid/support/v7/widget/j;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Landroid/support/v7/widget/X;->QH:Landroid/support/v7/widget/Z;

    iput-object p2, p0, Landroid/support/v7/widget/X;->QI:Landroid/support/v7/widget/j;

    iput-object p3, p0, Landroid/support/v7/widget/X;->QJ:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/X;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/X;->QJ:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/X;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/X;->QH:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/X;->QI:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->ace(Landroid/support/v7/widget/j;)V

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/X;->QH:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/Z;->QX:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/X;->QI:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/X;->QH:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->aaD()V

    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/X;->QH:Landroid/support/v7/widget/Z;

    iget-object v1, p0, Landroid/support/v7/widget/X;->QI:Landroid/support/v7/widget/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->abZ(Landroid/support/v7/widget/j;)V

    .line 207
    return-void
.end method
