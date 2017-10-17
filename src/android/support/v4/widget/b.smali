.class Landroid/support/v4/widget/b;
.super Landroid/support/v4/view/a/b;
.source "SourceFile"


# instance fields
.field final synthetic Wq:Landroid/support/v4/widget/a;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/a;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Landroid/support/v4/widget/b;->Wq:Landroid/support/v4/widget/a;

    invoke-direct {p0}, Landroid/support/v4/view/a/b;-><init>()V

    .line 1235
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/support/v4/widget/b;->Wq:Landroid/support/v4/widget/a;

    .line 1242
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/a;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 1243
    invoke-static {v0}, Landroid/support/v4/view/a/a;->afq(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/support/v4/view/a/a;
    .locals 2

    .prologue
    .line 1253
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1254
    iget-object v0, p0, Landroid/support/v4/widget/b;->Wq:Landroid/support/v4/widget/a;

    invoke-static {v0}, Landroid/support/v4/widget/a;->access$100(Landroid/support/v4/widget/a;)I

    move-result v0

    .line 1255
    :goto_0
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1258
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/b;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0

    .line 1253
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/b;->Wq:Landroid/support/v4/widget/a;

    .line 1254
    invoke-static {v0}, Landroid/support/v4/widget/a;->access$000(Landroid/support/v4/widget/a;)I

    move-result v0

    goto :goto_0

    .line 1256
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/support/v4/widget/b;->Wq:Landroid/support/v4/widget/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/a;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
