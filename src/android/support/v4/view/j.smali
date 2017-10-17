.class Landroid/support/v4/view/j;
.super Landroid/support/v4/view/k;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Landroid/support/v4/view/k;-><init>()V

    return-void
.end method


# virtual methods
.method public agM(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public agN(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public agO(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1216
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public agP(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1236
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1237
    return-void
.end method

.method public agQ(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1386
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method

.method public agR(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 1391
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    .line 1392
    return-void
.end method

.method public agS(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1279
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1280
    return-void
.end method
