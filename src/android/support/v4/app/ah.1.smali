.class Landroid/support/v4/app/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic abX:Landroid/view/View;

.field final synthetic abY:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Landroid/support/v4/app/ah;->abX:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v4/app/ah;->abY:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 228
    iget-object v0, p0, Landroid/support/v4/app/ah;->abX:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Landroid/support/v4/app/ah;->abY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 230
    :goto_0
    if-lt v1, v3, :cond_0

    .line 233
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ah;->abY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .prologue
    .line 223
    return-void
.end method
