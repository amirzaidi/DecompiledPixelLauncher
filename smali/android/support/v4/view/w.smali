.class Landroid/support/v4/view/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afZ(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 49
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/B;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public aga(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 63
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 64
    check-cast v0, Landroid/support/v4/view/B;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/B;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public agb(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 82
    return v1

    .line 79
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/B;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public agc(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 91
    return v1

    .line 88
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/B;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public agd(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/B;->onNestedPreScroll(Landroid/view/View;II[I)V

    goto :goto_0
.end method

.method public age(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 44
    return v1

    .line 41
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/B;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public agf(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    instance-of v0, p1, Landroid/support/v4/view/B;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    check-cast p1, Landroid/support/v4/view/B;

    invoke-interface {p1, p2}, Landroid/support/v4/view/B;->onStopNestedScroll(Landroid/view/View;)V

    goto :goto_0
.end method
