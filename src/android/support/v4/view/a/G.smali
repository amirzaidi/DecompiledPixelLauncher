.class Landroid/support/v4/view/a/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/A;


# instance fields
.field final synthetic Ul:Landroid/support/v4/view/a/n;

.field final synthetic Um:Landroid/support/v4/view/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/n;Landroid/support/v4/view/a/b;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Landroid/support/v4/view/a/G;->Ul:Landroid/support/v4/view/a/n;

    iput-object p2, p0, Landroid/support/v4/view/a/G;->Um:Landroid/support/v4/view/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Landroid/support/v4/view/a/G;->Um:Landroid/support/v4/view/a/b;

    .line 132
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    return-object v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Landroid/support/v4/view/a/G;->Um:Landroid/support/v4/view/a/b;

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/b;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_0

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 121
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 125
    return-object v3

    .line 117
    :cond_0
    return-object v1

    .line 122
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/a;

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public findFocus(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Landroid/support/v4/view/a/G;->Um:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->findFocus(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/v4/view/a/G;->Um:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/b;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
