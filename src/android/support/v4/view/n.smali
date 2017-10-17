.class Landroid/support/v4/view/n;
.super Landroid/support/v4/view/o;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1005
    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    return-void
.end method


# virtual methods
.method public agT(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 1043
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1044
    return-void

    .line 1040
    :cond_0
    const/4 p2, 0x2

    goto :goto_0
.end method

.method public agX(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public agY(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1032
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public agZ(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public aha(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1024
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method public ahb(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1028
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1029
    return-void
.end method

.method public ahc(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public ahd(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1017
    return-void
.end method

.method public ahe(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1065
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
