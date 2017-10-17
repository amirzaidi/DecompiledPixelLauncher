.class Landroid/support/v4/app/aT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final abU:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 3972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3973
    iput-object p1, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    .line 3974
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/I;)V
    .locals 0

    .prologue
    .line 3969
    invoke-direct {p0, p1}, Landroid/support/v4/app/aT;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3987
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3990
    :goto_0
    return-void

    .line 3988
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3995
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3998
    :goto_0
    return-void

    .line 3996
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 3979
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 3982
    :goto_0
    return-void

    .line 3980
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aT;->abU:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
