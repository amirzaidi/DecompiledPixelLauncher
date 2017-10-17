.class Landroid/support/v4/app/aN;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4045
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4046
    iput-object p1, p0, Landroid/support/v4/app/aN;->mView:Landroid/view/View;

    .line 4047
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 4056
    iget-object v0, p0, Landroid/support/v4/app/aN;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4057
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4058
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 4051
    iget-object v0, p0, Landroid/support/v4/app/aN;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4052
    return-void
.end method
