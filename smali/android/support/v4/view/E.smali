.class Landroid/support/v4/view/E;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agg(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 105
    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-nez v1, :cond_0

    .line 111
    invoke-static {p1, p2}, Landroid/support/v4/view/C;->agr(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, v0}, Landroid/support/v4/view/C;->agr(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method
