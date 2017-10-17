.class public Landroid/support/v4/view/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Uw:Landroid/support/v4/view/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1579
    invoke-static {}, Landroid/support/v4/os/a;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 1583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 1585
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 1587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 1589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_5

    .line 1591
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_6

    .line 1593
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    .line 1595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_8

    .line 1598
    new-instance v0, Landroid/support/v4/view/p;

    invoke-direct {v0}, Landroid/support/v4/view/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    .line 1600
    :goto_0
    return-void

    .line 1580
    :cond_0
    new-instance v0, Landroid/support/v4/view/g;

    invoke-direct {v0}, Landroid/support/v4/view/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1582
    :cond_1
    new-instance v0, Landroid/support/v4/view/h;

    invoke-direct {v0}, Landroid/support/v4/view/h;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1584
    :cond_2
    new-instance v0, Landroid/support/v4/view/i;

    invoke-direct {v0}, Landroid/support/v4/view/i;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1586
    :cond_3
    new-instance v0, Landroid/support/v4/view/j;

    invoke-direct {v0}, Landroid/support/v4/view/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1588
    :cond_4
    new-instance v0, Landroid/support/v4/view/k;

    invoke-direct {v0}, Landroid/support/v4/view/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1590
    :cond_5
    new-instance v0, Landroid/support/v4/view/l;

    invoke-direct {v0}, Landroid/support/v4/view/l;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1592
    :cond_6
    new-instance v0, Landroid/support/v4/view/m;

    invoke-direct {v0}, Landroid/support/v4/view/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1594
    :cond_7
    new-instance v0, Landroid/support/v4/view/n;

    invoke-direct {v0}, Landroid/support/v4/view/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0

    .line 1596
    :cond_8
    new-instance v0, Landroid/support/v4/view/o;

    invoke-direct {v0}, Landroid/support/v4/view/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afA(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1929
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/p;->afK(Landroid/view/View;I)V

    .line 1930
    return-void
.end method

.method public static afB(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2454
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afV(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static afC(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3455
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afL(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static afD(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2465
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afO(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static afE(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1869
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/p;->afR(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1870
    return-void
.end method

.method public static afF(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1813
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afT(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static afG(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2028
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static afH(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .prologue
    .line 3549
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afN(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static afr(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2164
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afM(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static afs(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3072
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afJ(Landroid/view/View;)V

    .line 3073
    return-void
.end method

.method public static aft(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1791
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/p;->afX(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1792
    return-void
.end method

.method public static afu(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2792
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afI(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static afv(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1886
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/p;->afS(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1887
    return-void
.end method

.method public static afw(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afU(Landroid/view/View;)V

    .line 1838
    return-void
.end method

.method public static afx(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1801
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afY(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static afy(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1905
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afP(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static afz(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2945
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/p;->afQ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1736
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1737
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 1

    .prologue
    .line 1766
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/p;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 1767
    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1987
    sget-object v0, Landroid/support/v4/view/f;->Uw:Landroid/support/v4/view/p;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/p;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
