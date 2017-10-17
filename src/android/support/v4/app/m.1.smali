.class Landroid/support/v4/app/m;
.super Landroid/support/v4/app/aT;
.source "SourceFile"


# instance fields
.field final synthetic Xn:Landroid/support/v4/app/aV;

.field final synthetic Xo:Landroid/support/v4/app/e;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aV;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/e;)V
    .locals 1

    .prologue
    .line 1600
    iput-object p1, p0, Landroid/support/v4/app/m;->Xn:Landroid/support/v4/app/aV;

    iput-object p3, p0, Landroid/support/v4/app/m;->Xo:Landroid/support/v4/app/e;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/aT;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1603
    invoke-super {p0, p1}, Landroid/support/v4/app/aT;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1604
    iget-object v0, p0, Landroid/support/v4/app/m;->Xo:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->aiq()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1605
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/m;->Xo:Landroid/support/v4/app/e;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/e;->ajj(Landroid/view/View;)V

    .line 1606
    iget-object v0, p0, Landroid/support/v4/app/m;->Xn:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/m;->Xo:Landroid/support/v4/app/e;

    iget-object v2, p0, Landroid/support/v4/app/m;->Xo:Landroid/support/v4/app/e;

    invoke-virtual {v2}, Landroid/support/v4/app/e;->ajH()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->aov(Landroid/support/v4/app/e;IIIZ)V

    goto :goto_0
.end method
