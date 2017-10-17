.class Landroid/support/v4/view/j;
.super Landroid/support/v4/view/k;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1204
    invoke-direct {p0}, Landroid/support/v4/view/k;-><init>()V

    return-void
.end method


# virtual methods
.method public afI(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1214
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public afJ(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1278
    return-void
.end method
