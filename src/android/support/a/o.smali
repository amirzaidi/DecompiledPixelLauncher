.class Landroid/support/a/o;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auM(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public auN(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    .line 149
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/o;->auN(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 145
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/o;->auM(Landroid/view/View;)F

    move-result v0

    return v0
.end method
