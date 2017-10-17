.class Landroid/support/v4/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic Xa:Ljava/util/ArrayList;

.field final synthetic Xb:Ljava/lang/Object;

.field final synthetic Xc:Ljava/lang/Object;

.field final synthetic Xd:Ljava/lang/Object;

.field final synthetic Xe:Ljava/util/ArrayList;

.field final synthetic Xf:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Landroid/support/v4/app/g;->Xc:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/g;->Xa:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/support/v4/app/g;->Xb:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/g;->Xe:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/g;->Xd:Ljava/lang/Object;

    iput-object p6, p0, Landroid/support/v4/app/g;->Xf:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Landroid/support/v4/app/g;->Xc:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Xb:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 449
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Xd:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 452
    :goto_2
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/g;->Xc:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/g;->Xa:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Q;->alE(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/g;->Xb:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/g;->Xe:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Q;->alE(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 450
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/g;->Xd:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/g;->Xf:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/Q;->alE(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
