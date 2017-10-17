.class Landroid/support/v4/view/q;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field final synthetic UF:Landroid/support/v4/view/a;

.field final synthetic UG:Landroid/support/v4/view/b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Landroid/support/v4/view/q;->UG:Landroid/support/v4/view/b;

    iput-object p2, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    .line 155
    invoke-virtual {v1, p1}, Landroid/support/v4/view/a;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/b;

    move-result-object v1

    .line 156
    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/a/b;->aev()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 122
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    .line 128
    invoke-static {p2}, Landroid/support/v4/view/a/a;->aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 127
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 129
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 134
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 145
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v4/view/q;->UF:Landroid/support/v4/view/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 150
    return-void
.end method
