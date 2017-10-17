.class Landroid/support/v4/view/d;
.super Landroid/support/v4/view/e;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v4/view/e;-><init>()V

    return-void
.end method


# virtual methods
.method public agp(Landroid/support/v4/view/c;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/q;-><init>(Landroid/support/v4/view/d;Landroid/support/v4/view/c;)V

    return-object v0
.end method

.method public agq(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 170
    if-nez v0, :cond_0

    .line 173
    return-object v1

    .line 171
    :cond_0
    new-instance v1, Landroid/support/v4/view/a/b;

    invoke-direct {v1, v0}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public agr(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
