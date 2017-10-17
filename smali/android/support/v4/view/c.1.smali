.class Landroid/support/v4/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afl(Landroid/support/v4/view/a;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/support/v4/view/A;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/A;-><init>(Landroid/support/v4/view/c;Landroid/support/v4/view/a;)V

    return-object v0
.end method

.method public afm(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public afn(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
