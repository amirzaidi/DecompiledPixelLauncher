.class Landroid/support/v4/view/a/o;
.super Landroid/support/v4/view/a/p;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/view/a/p;-><init>()V

    return-void
.end method


# virtual methods
.method public aga(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    return v0
.end method

.method public agb(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 81
    return-void
.end method
