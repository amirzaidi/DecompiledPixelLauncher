.class Landroid/support/v4/view/m;
.super Landroid/support/v4/view/n;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1094
    invoke-direct {p0}, Landroid/support/v4/view/n;-><init>()V

    return-void
.end method


# virtual methods
.method public afM(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public afN(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 1148
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method
