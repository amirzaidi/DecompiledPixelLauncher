.class Landroid/support/v4/app/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic Wb:Landroid/support/v4/app/aV;

.field final synthetic Wc:Landroid/view/View;

.field final synthetic Wd:Landroid/support/v4/app/e;

.field final synthetic We:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aV;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 1619
    iput-object p1, p0, Landroid/support/v4/app/b;->Wb:Landroid/support/v4/app/aV;

    iput-object p2, p0, Landroid/support/v4/app/b;->We:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/b;->Wc:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/b;->Wd:Landroid/support/v4/app/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1622
    iget-object v0, p0, Landroid/support/v4/app/b;->We:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1625
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/b;->Wd:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1629
    :goto_1
    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/b;->We:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/b;->Wc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    goto :goto_0

    .line 1626
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/b;->Wd:Landroid/support/v4/app/e;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/e;->aje(Landroid/animation/Animator;)V

    .line 1627
    iget-object v0, p0, Landroid/support/v4/app/b;->Wb:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/b;->Wd:Landroid/support/v4/app/e;

    iget-object v2, p0, Landroid/support/v4/app/b;->Wd:Landroid/support/v4/app/e;

    invoke-virtual {v2}, Landroid/support/v4/app/e;->ajH()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto :goto_1
.end method
