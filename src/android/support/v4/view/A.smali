.class Landroid/support/v4/view/A;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic Wk:Landroid/support/v4/view/c;

.field final synthetic Wl:Landroid/support/v4/view/e;


# direct methods
.method constructor <init>(Landroid/support/v4/view/e;Landroid/support/v4/view/c;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Landroid/support/v4/view/A;->Wl:Landroid/support/v4/view/e;

    iput-object p2, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    .line 67
    invoke-static {p2}, Landroid/support/v4/view/a/a;->afw(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 66
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 68
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 84
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/view/A;->Wk:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 89
    return-void
.end method
