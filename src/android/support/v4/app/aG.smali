.class Landroid/support/v4/app/aG;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic acR:Landroid/support/v4/app/aR;

.field final synthetic acS:Landroid/view/View;

.field final synthetic acT:Landroid/support/v4/app/g;

.field final synthetic acU:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aR;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 1684
    iput-object p1, p0, Landroid/support/v4/app/aG;->acR:Landroid/support/v4/app/aR;

    iput-object p2, p0, Landroid/support/v4/app/aG;->acU:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/aG;->acS:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/aG;->acT:Landroid/support/v4/app/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Landroid/support/v4/app/aG;->acU:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/aG;->acS:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1688
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1689
    iget-object v0, p0, Landroid/support/v4/app/aG;->acT:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aG;->acT:Landroid/support/v4/app/g;

    iget-object v0, v0, Landroid/support/v4/app/g;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
