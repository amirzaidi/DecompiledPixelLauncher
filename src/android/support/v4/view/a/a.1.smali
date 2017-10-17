.class public Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TY:Landroid/support/v4/view/a/k;


# instance fields
.field private final TX:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public TZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 1641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 1643
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_2

    .line 1645
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 1647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 1649
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_5

    .line 1651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_6

    .line 1653
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    .line 1656
    new-instance v0, Landroid/support/v4/view/a/k;

    invoke-direct {v0}, Landroid/support/v4/view/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    .line 1658
    :goto_0
    return-void

    .line 1640
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-direct {v0}, Landroid/support/v4/view/a/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1642
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/d;

    invoke-direct {v0}, Landroid/support/v4/view/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1644
    :cond_2
    new-instance v0, Landroid/support/v4/view/a/e;

    invoke-direct {v0}, Landroid/support/v4/view/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1646
    :cond_3
    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0}, Landroid/support/v4/view/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1648
    :cond_4
    new-instance v0, Landroid/support/v4/view/a/g;

    invoke-direct {v0}, Landroid/support/v4/view/a/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1650
    :cond_5
    new-instance v0, Landroid/support/v4/view/a/h;

    invoke-direct {v0}, Landroid/support/v4/view/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1652
    :cond_6
    new-instance v0, Landroid/support/v4/view/a/i;

    invoke-direct {v0}, Landroid/support/v4/view/a/i;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0

    .line 1654
    :cond_7
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 2071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/a/a;->TZ:I

    .line 2072
    iput-object p1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2073
    return-void
.end method

.method private static adH(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3802
    sparse-switch p0, :sswitch_data_0

    .line 3840
    const-string/jumbo v0, "ACTION_UNKNOWN"

    return-object v0

    .line 3804
    :sswitch_0
    const-string/jumbo v0, "ACTION_FOCUS"

    return-object v0

    .line 3806
    :sswitch_1
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    .line 3808
    :sswitch_2
    const-string/jumbo v0, "ACTION_SELECT"

    return-object v0

    .line 3810
    :sswitch_3
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    .line 3812
    :sswitch_4
    const-string/jumbo v0, "ACTION_CLICK"

    return-object v0

    .line 3814
    :sswitch_5
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    return-object v0

    .line 3816
    :sswitch_6
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 3818
    :sswitch_7
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    .line 3820
    :sswitch_8
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 3822
    :sswitch_9
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    .line 3824
    :sswitch_a
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    .line 3826
    :sswitch_b
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    .line 3828
    :sswitch_c
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    .line 3830
    :sswitch_d
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    .line 3832
    :sswitch_e
    const-string/jumbo v0, "ACTION_CUT"

    return-object v0

    .line 3834
    :sswitch_f
    const-string/jumbo v0, "ACTION_COPY"

    return-object v0

    .line 3836
    :sswitch_10
    const-string/jumbo v0, "ACTION_PASTE"

    return-object v0

    .line 3838
    :sswitch_11
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    return-object v0

    .line 3802
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method public static adK()Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 2134
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static aei(Landroid/view/View;)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 2110
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static aeo(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static aeu(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 2082
    new-instance v0, Landroid/support/v4/view/a/a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/a;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method


# virtual methods
.method public adF(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3093
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast p1, Landroid/support/v4/view/a/m;

    iget-object v2, p1, Landroid/support/v4/view/a/m;->Ud:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/a/k;->aeE(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V

    .line 3094
    return-void
.end method

.method public adG()Landroid/support/v4/view/a/l;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3107
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/k;->aeB(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 3108
    if-eqz v0, :cond_0

    .line 3109
    new-instance v1, Landroid/support/v4/view/a/l;

    invoke-direct {v1, v0}, Landroid/support/v4/view/a/l;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 3108
    :cond_0
    return-object v2
.end method

.method public adI()Z
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public adJ(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2278
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/k;->aeM(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 2279
    return-void
.end method

.method public adL(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3097
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast p1, Landroid/support/v4/view/a/l;

    iget-object v2, p1, Landroid/support/v4/view/a/l;->Uc:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/a/k;->aeD(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/Object;)V

    .line 3098
    return-void
.end method

.method public adM(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 2516
    return-void
.end method

.method public adN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3009
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/k;->aeH(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public adO()Z
    .locals 1

    .prologue
    .line 2709
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public adP()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public adQ(Z)V
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2845
    return-void
.end method

.method public adR(Z)V
    .locals 1

    .prologue
    .line 2626
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2627
    return-void
.end method

.method public adS(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2483
    return-void
.end method

.method public adT(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2540
    return-void
.end method

.method public adU()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public adV(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2555
    return-void
.end method

.method public adW(I)V
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2339
    return-void
.end method

.method public adX(Z)V
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2749
    return-void
.end method

.method public adY()Z
    .locals 1

    .prologue
    .line 2829
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public adZ(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2896
    return-void
.end method

.method public aea(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2177
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/k;->aeL(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 2178
    return-void
.end method

.method public aeb(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2919
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2920
    return-void
.end method

.method public aec()V
    .locals 1

    .prologue
    .line 2978
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2979
    return-void
.end method

.method public aed()Z
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public aee()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public aef()Z
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public aeg(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2531
    return-void
.end method

.method public aeh(Z)V
    .locals 2

    .prologue
    .line 2675
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/k;->aeI(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 2676
    return-void
.end method

.method public aej(Z)V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2797
    return-void
.end method

.method public aek()Z
    .locals 1

    .prologue
    .line 2635
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public ael()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2904
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public aem(Z)V
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 2651
    return-void
.end method

.method public aen(Z)V
    .locals 2

    .prologue
    .line 2700
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/a/k;->aeK(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 2701
    return-void
.end method

.method public aep()Z
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public aeq(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 2505
    iput p2, p0, Landroid/support/v4/view/a/a;->TZ:I

    .line 2506
    sget-object v0, Landroid/support/v4/view/a/a;->TY:Landroid/support/v4/view/a/k;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/view/a/k;->aeJ(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;I)V

    .line 2507
    return-void
.end method

.method public aer()Z
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public aes()I
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public aet()Z
    .locals 1

    .prologue
    .line 2587
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3737
    if-eq p0, p1, :cond_1

    .line 3740
    if-eqz p1, :cond_2

    .line 3743
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 3746
    check-cast p1, Landroid/support/v4/view/a/a;

    .line 3747
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_4

    .line 3751
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p1, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3754
    :cond_0
    return v3

    .line 3738
    :cond_1
    return v3

    .line 3741
    :cond_2
    return v2

    .line 3744
    :cond_3
    return v2

    .line 3748
    :cond_4
    iget-object v0, p1, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    .line 3749
    return v2

    .line 3752
    :cond_5
    return v2
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 3732
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2967
    iget-object v0, p0, Landroid/support/v4/view/a/a;->TX:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2968
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3760
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3764
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->adM(Landroid/graphics/Rect;)V

    .line 3765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3767
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->adT(Landroid/graphics/Rect;)V

    .line 3768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3770
    const-string/jumbo v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3771
    const-string/jumbo v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->ael()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3772
    const-string/jumbo v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aee()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3773
    const-string/jumbo v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->adP()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3774
    const-string/jumbo v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->adN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    const-string/jumbo v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->adI()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3777
    const-string/jumbo v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aet()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3778
    const-string/jumbo v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3779
    const-string/jumbo v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aek()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3780
    const-string/jumbo v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->adO()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3781
    const-string/jumbo v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aef()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3782
    const-string/jumbo v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aep()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3783
    const-string/jumbo v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3784
    const-string/jumbo v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aer()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->adY()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3787
    const-string/jumbo v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3788
    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->aes()I

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3796
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3789
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 3790
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    .line 3791
    invoke-static {v2}, Landroid/support/v4/view/a/a;->adH(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    if-eqz v0, :cond_0

    .line 3793
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
