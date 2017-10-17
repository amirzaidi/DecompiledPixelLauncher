.class Landroid/support/a/u;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auY(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 213
    invoke-static {p1}, Landroid/support/v4/view/f;->agH(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public auZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 208
    invoke-static {p1, p2}, Landroid/support/v4/view/f;->agI(Landroid/view/View;F)V

    .line 209
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 205
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/u;->auZ(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 205
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/u;->auY(Landroid/view/View;)F

    move-result v0

    return v0
.end method
