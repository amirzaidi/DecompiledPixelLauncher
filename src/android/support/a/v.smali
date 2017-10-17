.class Landroid/support/a/v;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/v;->avb(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 100
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/v;->ava(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public ava(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public avb(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 104
    return-void
.end method
