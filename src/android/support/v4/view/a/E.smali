.class Landroid/support/v4/view/a/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/C;


# instance fields
.field final synthetic Uj:Landroid/support/v4/view/a/o;

.field final synthetic Uk:Landroid/support/v4/view/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/o;Landroid/support/v4/view/a/b;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v4/view/a/E;->Uj:Landroid/support/v4/view/a/o;

    iput-object p2, p0, Landroid/support/v4/view/a/E;->Uk:Landroid/support/v4/view/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Landroid/support/v4/view/a/E;->Uk:Landroid/support/v4/view/a/b;

    .line 83
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    return-object v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Landroid/support/v4/view/a/E;->Uk:Landroid/support/v4/view/a/b;

    .line 65
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/b;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 75
    return-object v3

    .line 67
    :cond_0
    return-object v1

    .line 72
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/a;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/view/a/E;->Uk:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/b;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
