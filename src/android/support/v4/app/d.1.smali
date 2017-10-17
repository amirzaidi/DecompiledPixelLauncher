.class Landroid/support/v4/app/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic XL:Landroid/support/v4/app/aR;

.field final synthetic XM:Landroid/view/View;

.field final synthetic XN:Landroid/support/v4/app/g;

.field final synthetic XO:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aR;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/g;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Landroid/support/v4/app/d;->XL:Landroid/support/v4/app/aR;

    iput-object p2, p0, Landroid/support/v4/app/d;->XO:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/d;->XM:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/d;->XN:Landroid/support/v4/app/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1624
    iget-object v0, p0, Landroid/support/v4/app/d;->XO:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1627
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/d;->XN:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1631
    :goto_1
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/d;->XO:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/d;->XM:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_0

    .line 1628
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/d;->XN:Landroid/support/v4/app/g;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/g;->akr(Landroid/animation/Animator;)V

    .line 1629
    iget-object v0, p0, Landroid/support/v4/app/d;->XL:Landroid/support/v4/app/aR;

    iget-object v1, p0, Landroid/support/v4/app/d;->XN:Landroid/support/v4/app/g;

    iget-object v2, p0, Landroid/support/v4/app/d;->XN:Landroid/support/v4/app/g;

    invoke-virtual {v2}, Landroid/support/v4/app/g;->akU()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_1
.end method
