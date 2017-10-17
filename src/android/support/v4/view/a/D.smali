.class Landroid/support/v4/view/a/D;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field final synthetic Ui:Landroid/support/v4/view/a/C;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/C;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/v4/view/a/D;->Ui:Landroid/support/v4/view/a/C;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v4/view/a/D;->Ui:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1}, Landroid/support/v4/view/a/C;->createAccessibilityNodeInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/a/D;->Ui:Landroid/support/v4/view/a/C;

    .line 53
    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/a/C;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/view/a/D;->Ui:Landroid/support/v4/view/a/C;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/a/C;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
