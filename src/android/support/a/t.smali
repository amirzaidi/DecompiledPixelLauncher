.class Landroid/support/a/t;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auW(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public auX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 119
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/t;->auX(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 115
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/t;->auW(Landroid/view/View;)F

    move-result v0

    return v0
.end method
