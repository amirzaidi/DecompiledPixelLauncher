.class Landroid/support/a/p;
.super Landroid/support/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/i;-><init>(Ljava/lang/String;Landroid/support/a/j;)V

    return-void
.end method


# virtual methods
.method public auO(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public auP(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    return-void
.end method

.method public bridge synthetic auu(Ljava/lang/Object;F)V
    .locals 0

    .prologue
    .line 70
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/support/a/p;->auP(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic auv(Ljava/lang/Object;)F
    .locals 1

    .prologue
    .line 70
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/support/a/p;->auO(Landroid/view/View;)F

    move-result v0

    return v0
.end method
