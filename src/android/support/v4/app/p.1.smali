.class Landroid/support/v4/app/p;
.super Landroid/support/v4/app/aQ;
.source "SourceFile"


# instance fields
.field final synthetic YX:Landroid/support/v4/app/aR;

.field final synthetic YY:Landroid/support/v4/app/g;


# direct methods
.method constructor <init>(Landroid/support/v4/app/aR;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/g;)V
    .locals 1

    .prologue
    .line 1602
    iput-object p1, p0, Landroid/support/v4/app/p;->YX:Landroid/support/v4/app/aR;

    iput-object p3, p0, Landroid/support/v4/app/p;->YY:Landroid/support/v4/app/g;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/aQ;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1605
    invoke-super {p0, p1}, Landroid/support/v4/app/aQ;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1606
    iget-object v0, p0, Landroid/support/v4/app/p;->YY:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajD()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1610
    :goto_0
    return-void

    .line 1607
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->YY:Landroid/support/v4/app/g;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->akw(Landroid/view/View;)V

    .line 1608
    iget-object v0, p0, Landroid/support/v4/app/p;->YX:Landroid/support/v4/app/aR;

    iget-object v1, p0, Landroid/support/v4/app/p;->YY:Landroid/support/v4/app/g;

    iget-object v2, p0, Landroid/support/v4/app/p;->YY:Landroid/support/v4/app/g;

    invoke-virtual {v2}, Landroid/support/v4/app/g;->akU()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->apw(Landroid/support/v4/app/g;IIIZ)V

    goto :goto_0
.end method
