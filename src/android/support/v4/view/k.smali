.class Landroid/support/v4/view/k;
.super Landroid/support/v4/view/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1173
    invoke-direct {p0}, Landroid/support/v4/view/l;-><init>()V

    return-void
.end method


# virtual methods
.method public agT(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1186
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1187
    return-void
.end method

.method public agU(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1201
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method
