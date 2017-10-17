.class Landroid/support/v4/app/E;
.super Landroid/support/v4/app/aQ;
.source "SourceFile"


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .prologue
    .line 3929
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/aQ;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V

    .line 3930
    iput-object p1, p0, Landroid/support/v4/app/E;->mView:Landroid/view/View;

    .line 3931
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3946
    iget-object v0, p0, Landroid/support/v4/app/E;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/f;->agE(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3947
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/E;->mView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/ag;

    invoke-direct {v1, p0}, Landroid/support/v4/app/ag;-><init>(Landroid/support/v4/app/E;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3956
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/aQ;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3957
    return-void

    .line 3946
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 3954
    iget-object v0, p0, Landroid/support/v4/app/E;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method
