.class public Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mActions:Landroid/util/SparseArray;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 9

    .prologue
    const v8, 0x7f0e000d

    const v7, 0x7f0e000c

    const v1, 0x7f0c007e

    const v2, 0x7f0c007d

    .line 40
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    .line 45
    iget-object v5, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    invoke-direct {v6, v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 49
    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    invoke-direct {v5, v8, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0

    :cond_1
    move v2, v1

    .line 50
    goto :goto_1
.end method

.method private movePage(ILandroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onStartReordering()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onEndReordering()V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 79
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000d

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 92
    if-le v1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 95
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 59
    :cond_1
    const v0, 0x7f0e000d

    if-ne p2, v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    .line 61
    return v1

    .line 62
    :cond_2
    const v0, 0x7f0e000c

    if-ne p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    .line 64
    return v1
.end method
