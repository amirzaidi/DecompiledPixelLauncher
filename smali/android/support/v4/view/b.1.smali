.class Landroid/support/v4/view/b;
.super Landroid/support/v4/view/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public afl(Landroid/support/v4/view/a;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/support/v4/view/q;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/q;-><init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V

    return-object v0
.end method

.method public afm(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 171
    if-nez v0, :cond_0

    .line 174
    return-object v1

    .line 172
    :cond_0
    new-instance v1, Landroid/support/v4/view/a/b;

    invoke-direct {v1, v0}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public afn(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
