.class Landroid/support/v4/view/q;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic Wf:Landroid/support/v4/view/c;

.field final synthetic Wg:Landroid/support/v4/view/d;


# direct methods
.method constructor <init>(Landroid/support/v4/view/d;Landroid/support/v4/view/c;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Landroid/support/v4/view/q;->Wg:Landroid/support/v4/view/d;

    iput-object p2, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    .line 154
    invoke-virtual {v1, p1}, Landroid/support/v4/view/c;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/b;

    move-result-object v1

    .line 155
    if-nez v1, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/a/b;->afx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 121
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    .line 127
    invoke-static {p2}, Landroid/support/v4/view/a/a;->afw(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 126
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 128
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 133
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/c;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/v4/view/q;->Wf:Landroid/support/v4/view/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/c;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 149
    return-void
.end method
