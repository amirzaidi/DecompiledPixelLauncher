.class Landroid/support/v4/view/a/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/a/A;


# instance fields
.field final synthetic VL:Landroid/support/v4/view/a/v;

.field final synthetic VM:Landroid/support/v4/view/a/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/v;Landroid/support/v4/view/a/b;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Landroid/support/v4/view/a/G;->VL:Landroid/support/v4/view/a/v;

    iput-object p2, p0, Landroid/support/v4/view/a/G;->VM:Landroid/support/v4/view/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Landroid/support/v4/view/a/G;->VM:Landroid/support/v4/view/a/b;

    .line 131
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    return-object v1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Landroid/support/v4/view/a/G;->VM:Landroid/support/v4/view/a/b;

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a/b;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_0

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 124
    return-object v3

    .line 116
    :cond_0
    return-object v1

    .line 121
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/a/a;

    .line 122
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public findFocus(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Landroid/support/v4/view/a/G;->VM:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/b;->findFocus(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/support/v4/view/a/a;->aeW()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v4/view/a/G;->VM:Landroid/support/v4/view/a/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/b;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
