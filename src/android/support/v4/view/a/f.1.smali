.class Landroid/support/v4/view/a/f;
.super Landroid/support/v4/view/a/g;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1432
    invoke-direct {p0}, Landroid/support/v4/view/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public afA(IIIIZZ)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1475
    invoke-static/range {p1 .. p6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public afy(IIZI)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1448
    invoke-static {p1, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public afz(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1481
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v0

    return v0
.end method
