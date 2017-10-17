.class Landroid/support/v4/view/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ahi(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 48
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/C;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public ahj(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 62
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 63
    check-cast v0, Landroid/support/v4/view/C;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/C;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public ahk(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 81
    return v1

    .line 78
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/C;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public ahl(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 90
    return v1

    .line 87
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/C;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public ahm(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1

    .prologue
    .line 70
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/C;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public ahn(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 43
    return v1

    .line 40
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/C;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public aho(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    instance-of v0, p1, Landroid/support/v4/view/C;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    check-cast p1, Landroid/support/v4/view/C;

    invoke-interface {p1, p2}, Landroid/support/v4/view/C;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method
