.class Landroid/support/v4/app/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final ado:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 3893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3894
    iput-object p1, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    .line 3895
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3890
    invoke-direct {p0, p1}, Landroid/support/v4/app/aQ;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3908
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3911
    :goto_0
    return-void

    .line 3909
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3916
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3919
    :goto_0
    return-void

    .line 3917
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3900
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3903
    :goto_0
    return-void

    .line 3901
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aQ;->ado:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
