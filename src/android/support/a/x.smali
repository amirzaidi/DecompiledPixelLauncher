.class Landroid/support/a/x;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/x;->avf(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 251
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/x;->ave(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public ave(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public avf(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 254
    float-to-int v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollY(I)V

    .line 255
    return-void
.end method
