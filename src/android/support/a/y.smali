.class Landroid/support/a/y;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/y;->avh(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 85
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/y;->avg(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public avg(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Landroid/support/v4/view/f;->agx(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public avh(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 88
    invoke-static {p1, p2}, Landroid/support/v4/view/f;->agK(Landroid/view/View;F)V

    .line 89
    return-void
.end method
