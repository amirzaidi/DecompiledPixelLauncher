.class Landroid/support/v4/view/m;
.super Landroid/support/v4/view/n;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Landroid/support/v4/view/n;-><init>()V

    return-void
.end method


# virtual methods
.method public agV(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public agW(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method
