.class Landroid/support/v4/view/n;
.super Landroid/support/v4/view/o;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Landroid/support/v4/view/o;-><init>()V

    return-void
.end method


# virtual methods
.method public afK(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1037
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 1041
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1042
    return-void

    .line 1038
    :cond_0
    const/4 p2, 0x2

    goto :goto_0
.end method

.method public afO(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public afP(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public afQ(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1084
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method

.method public afR(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1022
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1023
    return-void
.end method

.method public afS(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 1027
    return-void
.end method

.method public afT(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public afU(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1015
    return-void
.end method

.method public afV(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
