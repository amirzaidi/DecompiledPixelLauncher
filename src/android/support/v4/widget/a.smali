.class public abstract Landroid/support/v4/widget/a;
.super Landroid/support/v4/view/c;
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

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/support/v4/widget/l;

    invoke-direct {v0}, Landroid/support/v4/widget/l;-><init>()V

    sput-object v0, Landroid/support/v4/widget/a;->NODE_ADAPTER:Landroid/support/v4/widget/d;

    .line 344
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

    .line 132
    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    .line 118
    iput v1, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 121
    iput v1, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 124
    iput v1, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 133
    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    invoke-static {p1}, Landroid/support/v4/view/f;->agA(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/f;->agC(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/widget/a;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/a;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 1002
    const/4 v0, 0x0

    return v0

    .line 996
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 997
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 998
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1000
    const/4 v0, 0x1

    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .prologue
    .line 634
    packed-switch p1, :pswitch_data_0

    .line 638
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/a;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 636
    :pswitch_0
    invoke-direct {p0, p2}, Landroid/support/v4/widget/a;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4

    .prologue
    .line 674
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 675
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/a;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v1

    .line 678
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->afg()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->aeR()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 680
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->afa()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 681
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->aft()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 682
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 683
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->afv()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 686
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 689
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/view/a/a;->afn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 696
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/a/r;->agg(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 697
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 699
    return-object v0

    .line 689
    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 690
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .prologue
    .line 650
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 651
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 652
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/a/a;
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    invoke-static {}, Landroid/support/v4/view/a/a;->aeM()Landroid/support/v4/view/a/a;

    move-result-object v3

    .line 791
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->afl(Z)V

    .line 792
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->aeT(Z)V

    .line 793
    const-string/jumbo v0, "android.view.View"

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->afd(Ljava/lang/CharSequence;)V

    .line 794
    sget-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->afi(Landroid/graphics/Rect;)V

    .line 795
    sget-object v0, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeX(Landroid/graphics/Rect;)V

    .line 796
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeU(Landroid/view/View;)V

    .line 799
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/a;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 802
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->afg()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 807
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeO(Landroid/graphics/Rect;)V

    .line 808
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 813
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->afu()I

    move-result v0

    .line 814
    and-int/lit8 v4, v0, 0x40

    if-nez v4, :cond_4

    .line 818
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5

    .line 824
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->afb(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v0, p1}, Landroid/support/v4/view/a/a;->afc(Landroid/view/View;I)V

    .line 828
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_6

    .line 832
    invoke-virtual {v3, v1}, Landroid/support/v4/view/a/a;->afp(Z)V

    .line 833
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeY(I)V

    .line 837
    :goto_0
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_7

    move v0, v1

    .line 838
    :goto_1
    if-nez v0, :cond_8

    .line 840
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->aff()Z

    move-result v4

    if-nez v4, :cond_9

    .line 843
    :goto_2
    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->afo(Z)V

    .line 845
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v4/widget/a;->mTempGlobalRect:[I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 849
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeV(Landroid/graphics/Rect;)V

    .line 850
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 875
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

    .line 802
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/view/a/a;->aeR()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_6
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->afp(Z)V

    .line 830
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeY(I)V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 837
    goto :goto_1

    .line 839
    :cond_8
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/a/a;->aeY(I)V

    goto :goto_2

    .line 841
    :cond_9
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->aeY(I)V

    goto :goto_2

    .line 851
    :cond_a
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeO(Landroid/graphics/Rect;)V

    .line 854
    iget v0, v3, Landroid/support/v4/view/a/a;->Vz:I

    if-ne v0, v7, :cond_b

    .line 871
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

    .line 872
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    .line 871
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 855
    :cond_b
    invoke-static {}, Landroid/support/v4/view/a/a;->aeM()Landroid/support/v4/view/a/a;

    move-result-object v4

    .line 857
    iget v0, v3, Landroid/support/v4/view/a/a;->Vz:I

    .line 858
    :goto_6
    if-ne v0, v7, :cond_c

    .line 868
    invoke-virtual {v4}, Landroid/support/v4/view/a/a;->afe()V

    goto :goto_5

    .line 861
    :cond_c
    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroid/support/v4/view/a/a;->afs(Landroid/view/View;I)V

    .line 862
    sget-object v5, Landroid/support/v4/widget/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/a/a;->afi(Landroid/graphics/Rect;)V

    .line 864
    invoke-virtual {p0, v0, v4}, Landroid/support/v4/widget/a;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 865
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/a/a;->aeO(Landroid/graphics/Rect;)V

    .line 866
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 859
    iget v0, v4, Landroid/support/v4/view/a/a;->Vz:I

    goto :goto_6

    .line 876
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

    .line 877
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    .line 876
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 879
    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/a/a;->aeX(Landroid/graphics/Rect;)V

    .line 882
    iget-object v0, p0, Landroid/support/v4/widget/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v3, v2}, Landroid/support/v4/view/a/a;->afj(Z)V

    goto/16 :goto_4
.end method

.method private createNodeForHost()Landroid/support/v4/view/a/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 731
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/a/a;->afk(Landroid/view/View;)Landroid/support/v4/view/a/a;

    move-result-object v2

    .line 732
    iget-object v1, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v1, v2}, Landroid/support/v4/view/f;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 735
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/a;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 738
    invoke-virtual {v2}, Landroid/support/v4/view/a/a;->getChildCount()I

    move-result v1

    .line 739
    if-gtz v1, :cond_1

    .line 743
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    .line 747
    return-object v2

    .line 739
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/support/v4/view/a/a;->aeL(Landroid/view/View;I)V

    .line 743
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
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

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

    .line 966
    :cond_0
    return v1

    .line 965
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_2

    .line 984
    return v1

    .line 971
    :cond_2
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 976
    :goto_0
    iput p1, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    .line 979
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 980
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 982
    const/4 v0, 0x1

    return v0

    .line 972
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/a;->clearAccessibilityFocus(I)Z

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2

    .prologue
    .line 609
    iget v0, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 613
    iget v0, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 614
    iput p1, p0, Landroid/support/v4/widget/a;->mHoveredVirtualViewId:I

    .line 618
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 619
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 621
    return-void

    .line 610
    :cond_0
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 1048
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 1050
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1051
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1053
    const/4 v0, 0x1

    return v0

    .line 1045
    :cond_0
    return v1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/high16 v4, -0x80000000

    const/4 v0, 0x0

    .line 179
    iget-object v2, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    :cond_0
    return v0

    .line 179
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 196
    :pswitch_0
    return v0

    .line 186
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/a;->getVirtualViewAt(FF)I

    move-result v2

    .line 187
    invoke-direct {p0, v2}, Landroid/support/v4/widget/a;->updateHoveredVirtualView(I)V

    .line 188
    if-ne v2, v4, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 190
    :pswitch_2
    iget v2, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v2, v4, :cond_3

    .line 194
    return v0

    .line 191
    :cond_3
    invoke-direct {p0, v4}, Landroid/support/v4/widget/a;->updateHoveredVirtualView(I)V

    .line 192
    return v1

    .line 183
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
    .line 287
    iget v0, p0, Landroid/support/v4/widget/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/b;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Landroid/support/v4/widget/b;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/b;-><init>(Landroid/support/v4/widget/a;)V

    iput-object v0, p0, Landroid/support/v4/widget/a;->mNodeProvider:Landroid/support/v4/widget/b;

    goto :goto_0
.end method

.method public getFocusedVirtualView()I
    .locals 1

    .prologue
    .line 586
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
    .line 716
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 720
    invoke-direct {p0, p1}, Landroid/support/v4/widget/a;->createNodeForChild(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0

    .line 717
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/a;->createNodeForHost()Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 657
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 660
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 661
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .prologue
    .line 752
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/c;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 755
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/a;->onPopulateNodeForHost(Landroid/support/v4/view/a/a;)V

    .line 756
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 1112
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/a/a;)V
    .locals 0

    .prologue
    .line 1202
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0

    .prologue
    .line 598
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

    .line 1013
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    .line 1023
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    .line 1027
    :goto_0
    iput p1, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    .line 1029
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1030
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/a;->sendEventForVirtualView(II)Z

    .line 1032
    return v2

    .line 1013
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1015
    return v1

    .line 1020
    :cond_2
    return v1

    .line 1024
    :cond_3
    iget v0, p0, Landroid/support/v4/widget/a;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/a;->clearKeyboardFocusForVirtualView(I)Z

    goto :goto_0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 502
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 503
    :cond_0
    return v1

    .line 502
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_2

    .line 511
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 512
    iget-object v2, p0, Landroid/support/v4/widget/a;->mHost:Landroid/view/View;

    invoke-static {v0, v2, v1}, Landroid/support/v4/view/D;->ahH(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 508
    :cond_2
    return v1
.end method
