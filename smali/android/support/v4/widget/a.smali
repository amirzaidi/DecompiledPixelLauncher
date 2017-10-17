.class public abstract Landroid/support/v4/widget/a;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# static fields
.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/d;

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/c;


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/b;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 334
    new-instance v0, Landroid/support/v4/widget/l;

    invoke-direct {v0}, Landroid/support/v4/widget/l;-><init>()V

    sput-object v0, Landroid/support/v4/widget/a;->NODE_ADAPTER:Landroid/support/v4/widget/d;

    .line 346
    new-instance v0, Landroid/support/v4/widget/i;

    invoke-direct {v0}, Landroid/support/v4/widget/i;-><init>()V

    sput-object v0, Landroid/support/v4/widget/a;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/c;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 133
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    .line 119
    iput v1, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 122
    iput v1, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 125
    iput v1, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 134
    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 146
    invoke-static {p1}, Landroid/support/v4/view/f;->afy(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/f;->afA(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/widget/a;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/a;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 1003
    const/4 v0, 0x0

    return v0

    .line 997
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 998
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 999
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1001
    const/4 v0, 0x1

    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_0

    .line 640
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/a;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 638
    :pswitch_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/a;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .prologue
    .line 676
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 677
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/a;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 680
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->aee()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->adP()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->adY()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 683
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->aer()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 684
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 685
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->aet()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 688
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 691
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 697
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->ael()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/a/v;->aff(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 699
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 701
    return-object v0

    .line 691
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .prologue
    .line 652
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 653
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/f;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 654
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/a/a;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 790
    invoke-static {}, Landroid/support/v4/view/a/a;->adK()Landroid/support/v4/view/a/a;

    move-result-object v3

    .line 793
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->aej(Z)V

    .line 794
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->adR(Z)V

    .line 795
    const-string/jumbo v0, "android.view.View"

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeb(Ljava/lang/CharSequence;)V

    .line 796
    sget-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeg(Landroid/graphics/Rect;)V

    .line 797
    sget-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adV(Landroid/graphics/Rect;)V

    .line 798
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adS(Landroid/view/View;)V

    .line 801
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/a;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 804
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->aee()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 809
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adM(Landroid/graphics/Rect;)V

    .line 810
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 815
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->aes()I

    move-result v0

    .line 816
    and-int/lit8 v4, v0, 0x40

    if-nez v4, :cond_4

    .line 820
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5

    .line 826
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adZ(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0, p1}, Landroid/support/v4/view/a/a;->aea(Landroid/view/View;I)V

    .line 830
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_6

    .line 834
    invoke-virtual {v3, v1}, Landroid/support/v4/view/a/a;->aen(Z)V

    .line 835
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adW(I)V

    .line 839
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_7

    move v0, v1

    .line 840
    :goto_1
    if-nez v0, :cond_8

    .line 842
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->aed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 845
    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aem(Z)V

    .line 847
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 851
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adT(Landroid/graphics/Rect;)V

    .line 852
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 877
    :goto_3
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 888
    :cond_1
    :goto_4
    return-object v3

    .line 804
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->adP()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_6
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->aen(Z)V

    .line 832
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adW(I)V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 839
    goto :goto_1

    .line 841
    :cond_8
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/a/a;->adW(I)V

    goto :goto_2

    .line 843
    :cond_9
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->adW(I)V

    goto :goto_2

    .line 853
    :cond_a
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adM(Landroid/graphics/Rect;)V

    .line 856
    iget v0, v3, Landroid/support/v4/view/a/a;->TZ:I

    if-ne v0, v7, :cond_b

    .line 873
    :goto_5
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    aget v4, v4, v1

    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    .line 874
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 873
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 857
    :cond_b
    invoke-static {}, Landroid/support/v4/view/a/a;->adK()Landroid/support/v4/view/a/a;

    move-result-object v4

    .line 859
    iget v0, v3, Landroid/support/v4/view/a/a;->TZ:I

    .line 860
    :goto_6
    if-ne v0, v7, :cond_c

    .line 870
    invoke-virtual {v4}, Landroid/support/v4/view/a/a;->aec()V

    goto :goto_5

    .line 863
    :cond_c
    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroid/support/v4/view/a/a;->aeq(Landroid/view/View;I)V

    .line 864
    sget-object v5, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/a/a;->aeg(Landroid/graphics/Rect;)V

    .line 866
    invoke-virtual {p0, v0, v4}, Landroid/support/v4/widget/a;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 867
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/a/a;->adM(Landroid/graphics/Rect;)V

    .line 868
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 861
    iget v0, v4, Landroid/support/v4/view/a/a;->TZ:I

    goto :goto_6

    .line 878
    :cond_d
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    aget v1, v4, v1

    iget-object v4, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    aget v4, v4, v2

    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    .line 879
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 878
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 880
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 881
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->adV(Landroid/graphics/Rect;)V

    .line 883
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->aeh(Z)V

    goto/16 :goto_4
.end method

.method private createNodeForHost()Landroid/support/v4/view/a/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 733
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/a/a;->aei(Landroid/view/View;)Landroid/support/v4/view/a/a;

    move-result-object v2

    .line 734
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1, v2}, Landroid/support/v4/view/f;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 737
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 738
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/a;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 740
    invoke-virtual {v2}, Landroid/support/v4/view/a/a;->getChildCount()I

    move-result v1

    .line 741
    if-gtz v1, :cond_1

    .line 745
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    .line 749
    return-object v2

    .line 741
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 742
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/support/v4/view/a/a;->adJ(Landroid/view/View;I)V

    .line 745
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 929
    if-nez p1, :cond_1

    .line 930
    :cond_0
    return v1

    .line 929
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 939
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 940
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_3

    .line 949
    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    return v0

    .line 935
    :cond_2
    return v1

    .line 941
    :cond_3
    check-cast v0, Landroid/view/View;

    .line 942
    invoke-static {v0}, Landroid/support/v4/view/f;->afG(Landroid/view/View;)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 945
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v3, v1

    .line 942
    goto :goto_2

    .line 943
    :cond_5
    return v1

    :cond_6
    move v0, v2

    .line 949
    goto :goto_1
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 905
    sparse-switch p2, :sswitch_data_0

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 907
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/a;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 909
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/a;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 911
    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 913
    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 905
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/f;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 965
    iget-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    :cond_0
    return v1

    .line 965
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 966
    invoke-static {v0}, Landroid/support/v4/view/a/H;->afk(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_2

    .line 985
    return v1

    .line 972
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 977
    :goto_0
    iput p1, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 980
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 981
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 983
    const/4 v0, 0x1

    return v0

    .line 973
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a;->clearAccessibilityFocus(I)Z

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 615
    iget v0, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 616
    iput p1, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 620
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 621
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 623
    return-void

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1044
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 1049
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 1051
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1052
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1054
    const/4 v0, 0x1

    return v0

    .line 1046
    :cond_0
    return v1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/high16 v4, -0x80000000

    const/4 v0, 0x0

    .line 180
    iget-object v2, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    :cond_0
    return v0

    .line 180
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 181
    invoke-static {v2}, Landroid/support/v4/view/a/H;->afk(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 198
    :pswitch_0
    return v0

    .line 188
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/a;->getVirtualViewAt(FF)I

    move-result v2

    .line 189
    invoke-direct {p0, v2}, Landroid/support/v4/widget/a;->updateHoveredVirtualView(I)V

    .line 190
    if-ne v2, v4, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 192
    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v2, v4, :cond_3

    .line 196
    return v0

    .line 193
    :cond_3
    invoke-direct {p0, v4}, Landroid/support/v4/widget/a;->updateHoveredVirtualView(I)V

    .line 194
    return v1

    .line 185
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    return-object v0

    .line 156
    :cond_0
    new-instance v0, Landroid/support/v4/widget/b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/b;-><init>(Landroid/support/v4/widget/a;)V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    goto :goto_0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/support/v4/widget/a;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 1

    .prologue
    .line 718
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 722
    invoke-direct {p0, p1}, Landroid/support/v4/widget/a;->createNodeForChild(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0

    .line 719
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/a;->createNodeForHost()Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 659
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 662
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .prologue
    .line 754
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 757
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/a;->onPopulateNodeForHost(Landroid/support/v4/view/a/a;)V

    .line 758
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1125
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1113
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/a/a;)V
    .locals 0

    .prologue
    .line 1203
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 892
    packed-switch p1, :pswitch_data_0

    .line 896
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/a;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 894
    :pswitch_0
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/a;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 892
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1014
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    .line 1024
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 1028
    :goto_0
    iput p1, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 1030
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1031
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1033
    return v2

    .line 1014
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    return v1

    .line 1021
    :cond_2
    return v1

    .line 1025
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 504
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 505
    :cond_0
    return v1

    .line 504
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_2

    .line 513
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 514
    iget-object v2, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0, v2, v1}, Landroid/support/v4/view/D;->agy(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 510
    :cond_2
    return v1
.end method
