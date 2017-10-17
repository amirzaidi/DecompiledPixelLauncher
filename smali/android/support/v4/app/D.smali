.class Landroid/support/v4/app/D;
.super Landroid/support/v4/app/aT;
.source "SourceFile"


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 4008
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/aT;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V

    .line 4009
    iput-object p1, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    .line 4010
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4025
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/f;->afC(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4026
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/ag;

    invoke-direct {v1, p0}, Landroid/support/v4/app/ag;-><init>(Landroid/support/v4/app/D;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4035
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/aT;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 4036
    return-void

    .line 4025
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 4033
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
