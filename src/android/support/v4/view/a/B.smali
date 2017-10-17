.class Landroid/support/v4/view/a/B;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field final synthetic VH:Landroid/support/v4/view/a/A;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/A;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Landroid/support/v4/view/a/B;->VH:Landroid/support/v4/view/a/A;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/v4/view/a/B;->VH:Landroid/support/v4/view/a/A;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/A;->createAccessibilityNodeInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v4/view/a/B;->VH:Landroid/support/v4/view/a/A;

    .line 54
    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/A;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/view/a/B;->VH:Landroid/support/v4/view/a/A;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/A;->findFocus(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/support/v4/view/a/B;->VH:Landroid/support/v4/view/a/A;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/A;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
