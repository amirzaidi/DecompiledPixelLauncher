.class Landroid/support/a/s;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auU(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public auV(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 194
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/s;->auV(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 190
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/s;->auU(Landroid/view/View;)F

    move-result v0

    return v0
.end method
