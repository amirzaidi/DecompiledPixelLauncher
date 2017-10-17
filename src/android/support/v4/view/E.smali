.class Landroid/support/v4/view/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ahp(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-nez v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Landroid/support/v4/view/B;->ahA(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Landroid/support/v4/view/B;->ahA(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
