.class Landroid/support/a/A;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 160
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/A;->avl(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 160
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/A;->avk(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public avk(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public avl(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 164
    return-void
.end method
