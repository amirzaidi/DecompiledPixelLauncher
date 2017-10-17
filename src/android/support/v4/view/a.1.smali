.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

.field private static final IMPL:Landroid/support/v4/view/c;


# instance fields
.field final mBridge:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 191
    new-instance v0, Landroid/support/v4/view/c;

    invoke-direct {v0}, Landroid/support/v4/view/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->IMPL:Landroid/support/v4/view/c;

    .line 193
    :goto_0
    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 194
    return-void

    .line 189
    :cond_0
    new-instance v0, Landroid/support/v4/view/b;

    invoke-direct {v0}, Landroid/support/v4/view/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a;->IMPL:Landroid/support/v4/view/c;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    sget-object v0, Landroid/support/v4/view/a;->IMPL:Landroid/support/v4/view/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/c;->afl(Landroid/support/v4/view/a;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/a;->mBridge:Landroid/view/View$AccessibilityDelegate;

    .line 203
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 270
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 2

    .prologue
    .line 372
    sget-object v0, Landroid/support/v4/view/a;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/c;->afm(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/a/b;

    move-result-object v0

    return-object v0
.end method

.method getBridge()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/view/a;->mBridge:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 311
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    .prologue
    .line 329
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    .line 330
    invoke-virtual {p2}, Landroid/support/v4/view/a/a;->adU()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 329
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 331
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 291
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 354
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 392
    sget-object v0, Landroid/support/v4/view/a;->IMPL:Landroid/support/v4/view/c;

    sget-object v1, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/support/v4/view/c;->afn(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 228
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/support/v4/view/a;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 250
    return-void
.end method
