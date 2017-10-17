.class Landroid/support/v4/view/a/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/C;


# instance fields
.field final synthetic VJ:Landroid/support/v4/view/a/w;

.field final synthetic VK:Landroid/support/v4/view/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/w;Landroid/support/v4/view/a/b;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v4/view/a/E;->VJ:Landroid/support/v4/view/a/w;

    iput-object p2, p0, Landroid/support/v4/view/a/E;->VK:Landroid/support/v4/view/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Landroid/support/v4/view/a/E;->VK:Landroid/support/v4/view/a/b;

    .line 82
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    return-object v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Landroid/support/v4/view/a/E;->VK:Landroid/support/v4/view/a/b;

    .line 64
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/b;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 65
    if-eqz v2, :cond_0

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 74
    return-object v3

    .line 66
    :cond_0
    return-object v1

    .line 71
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/a;

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/view/a/E;->VK:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/b;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
