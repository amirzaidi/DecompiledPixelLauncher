.class Landroid/support/v4/app/aK;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic abA:Landroid/view/ViewGroup;

.field final synthetic abx:Landroid/support/v4/app/aV;

.field final synthetic aby:Landroid/view/View;

.field final synthetic abz:Landroid/support/v4/app/e;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aV;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Landroid/support/v4/app/aK;->abx:Landroid/support/v4/app/aV;

    iput-object p2, p0, Landroid/support/v4/app/aK;->abA:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/aK;->aby:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/aK;->abz:Landroid/support/v4/app/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Landroid/support/v4/app/aK;->abA:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/aK;->aby:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1686
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1687
    iget-object v0, p0, Landroid/support/v4/app/aK;->abz:Landroid/support/v4/app/e;

    iget-object v0, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1690
    :goto_0
    return-void

    .line 1688
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aK;->abz:Landroid/support/v4/app/e;

    iget-object v0, v0, Landroid/support/v4/app/e;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
