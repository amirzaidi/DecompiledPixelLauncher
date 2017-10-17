.class Landroid/support/a/q;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auQ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public auR(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 239
    float-to-int v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollX(I)V

    .line 240
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 236
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/q;->auR(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 236
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/q;->auQ(Landroid/view/View;)F

    move-result v0

    return v0
.end method
