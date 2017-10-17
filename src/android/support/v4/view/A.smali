.class Landroid/support/v4/view/A;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic UK:Landroid/support/v4/view/a;

.field final synthetic UL:Landroid/support/v4/view/c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/c;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Landroid/support/v4/view/A;->UL:Landroid/support/v4/view/c;

    iput-object p2, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 62
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    .line 68
    invoke-static {p2}, Landroid/support/v4/view/a/a;->aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 67
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 69
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 74
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 85
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/v4/view/A;->UK:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    return-void
.end method
