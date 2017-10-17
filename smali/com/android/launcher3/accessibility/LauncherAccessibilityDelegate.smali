.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field protected final mActions:Landroid/util/SparseArray;

.field private mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

.field final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 8

    .prologue
    const v7, 0x7f0e000a

    const v6, 0x7f0e0009

    const v5, 0x7f0e0008

    const v4, 0x7f0e0007

    const v3, 0x7f0e0006

    .line 75
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 79
    const v2, 0x7f0c0035

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 78
    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 81
    const v2, 0x7f0c0037

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 80
    invoke-direct {v1, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 83
    const v2, 0x7f0c0036

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 82
    invoke-direct {v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 85
    const v2, 0x7f0c0065

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 84
    invoke-direct {v1, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 87
    const v2, 0x7f0c0069

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 86
    invoke-direct {v1, v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 89
    const v2, 0x7f0c0073

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 88
    const v3, 0x7f0e000b

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    const v2, 0x7f0e000b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 91
    const v2, 0x7f0c0077

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 90
    const v3, 0x7f0e000e

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    const v2, 0x7f0e000e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 93
    const v2, 0x7f0c007d

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 92
    const v3, 0x7f0e000f

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    const v2, 0x7f0e000f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    return-void
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 243
    if-nez v2, :cond_0

    .line 244
    return-object v1

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 248
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 249
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v0, v3, v4, v6, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    .line 249
    if-eqz v3, :cond_2

    .line 251
    :cond_1
    const v3, 0x7f0c0078

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    if-le v3, v4, :cond_3

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    if-le v3, v6, :cond_3

    .line 255
    const v3, 0x7f0c007a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_3
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 260
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    .line 260
    if-eqz v0, :cond_5

    .line 262
    :cond_4
    const v0, 0x7f0c0079

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_5
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    if-le v0, v2, :cond_6

    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    if-le v0, v6, :cond_6

    .line 266
    const v0, 0x7f0c007b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_6
    return-object v1
.end method


# virtual methods
.method public addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 6

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 108
    if-nez p3, :cond_1

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000f

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 112
    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/DeleteDropTarget;->supportsAccessibleDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0006

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 115
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/UninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0007

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/InfoDropTarget;->supportsDrop(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 123
    :cond_4
    if-nez p3, :cond_6

    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_5

    .line 124
    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 123
    if-nez v1, :cond_5

    .line 125
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    .line 123
    if-eqz v1, :cond_6

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000a

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 128
    iget-wide v2, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000b

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 137
    :cond_6
    :goto_0
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_7

    instance-of v0, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_8

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 140
    :cond_8
    return-void

    .line 130
    :cond_9
    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 131
    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000e

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0
.end method

.method announceConfirmation(I)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method announceConfirmation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 355
    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    invoke-direct {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p2, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    .line 358
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v2, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 359
    instance-of v1, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v2, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 365
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v2, p1, p2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 367
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 368
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 369
    iget-object v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/dragndrop/DragController;->prepareAccessibleDrag(II)V

    .line 371
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 374
    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 379
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 381
    new-instance v1, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 382
    iput-boolean v5, v1, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    .line 383
    if-eqz v0, :cond_2

    .line 384
    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    .line 388
    :goto_2
    return-void

    .line 361
    :cond_1
    instance-of v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v2, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_0

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J
    .locals 8

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    .line 406
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v5

    .line 410
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    .line 411
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 412
    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 414
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, p2, v1, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 415
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->hasCustomContent()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 416
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 417
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 418
    invoke-virtual {v4, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 419
    iget v6, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v0, p2, v6, v7}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 423
    :cond_1
    if-eqz v0, :cond_2

    .line 424
    return-wide v2

    .line 427
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 428
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v0

    .line 429
    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 430
    iget v3, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    .line 432
    if-nez v2, :cond_3

    .line 433
    const-string/jumbo v2, "LauncherAccessibilityDelegate"

    const-string/jumbo v3, "Not enough space on an empty screen"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    return-wide v0
.end method

.method public getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    return-object v0
.end method

.method public handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 338
    if-nez p2, :cond_2

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 347
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragController;->completeAccessibleDrag([I)V

    .line 349
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 352
    :cond_1
    return-void

    .line 342
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, v0, v2

    .line 343
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    aput v1, v0, v3

    goto :goto_0
.end method

.method public isInAccessibleDrag()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 399
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 100
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 152
    const v0, 0x7f0e0006

    if-ne p3, v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p2, p1}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    .line 154
    return v7

    .line 155
    :cond_0
    const v0, 0x7f0e0008

    if-ne p3, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z

    .line 157
    return v7

    .line 158
    :cond_1
    const v0, 0x7f0e0007

    if-ne p3, v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p2}, Lcom/android/launcher3/UninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    return v0

    .line 160
    :cond_2
    const v0, 0x7f0e000a

    if-ne p3, v0, :cond_4

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 236
    :cond_3
    :goto_0
    return v8

    .line 162
    :cond_4
    const v0, 0x7f0e0009

    if-ne p3, v0, :cond_5

    .line 163
    new-array v6, v2, [I

    .line 164
    invoke-virtual {p0, p2, v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v4

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;J[I)V

    invoke-virtual {v0, v7, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)Z

    .line 188
    return v7

    .line 189
    :cond_5
    const v0, 0x7f0e000b

    if-ne p3, v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v7}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    move-object v1, p2

    .line 192
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 193
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 195
    new-array v9, v2, [I

    .line 196
    invoke-virtual {p0, p2, v9}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/ItemInfo;[I)J

    move-result-wide v4

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    .line 198
    const-wide/16 v2, -0x64

    .line 199
    aget v6, v9, v8

    aget v7, v9, v7

    .line 197
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$2;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 213
    :cond_6
    const v0, 0x7f0e000e

    if-ne p3, v0, :cond_8

    .line 214
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/CharSequence;

    move v1, v8

    .line 217
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 218
    iget-object v4, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v1

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 221
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    const v1, 0x7f0c0077

    .line 221
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$3;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 221
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    return v7

    .line 233
    :cond_8
    const v0, 0x7f0e000f

    if-ne p3, v0, :cond_3

    .line 234
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_9

    move v8, v7

    :cond_9
    return v8
.end method

.method performResizeAction(ILandroid/view/View;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 275
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 277
    const v2, 0x7f0c0078

    if-ne p1, v2, :cond_4

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 279
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    .line 278
    if-nez v2, :cond_1

    .line 280
    :cond_0
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v2, v3

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 278
    if-eqz v2, :cond_2

    .line 281
    :cond_1
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 282
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    .line 284
    :cond_2
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 285
    iget v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 301
    :cond_3
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 302
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 303
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v0, p2

    .line 304
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 305
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 304
    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 306
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 307
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 308
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0c007c

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 309
    return-void

    .line 286
    :cond_4
    const v2, 0x7f0c007a

    if-ne p1, v2, :cond_5

    .line 287
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 288
    iget v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 289
    :cond_5
    const v2, 0x7f0c0079

    if-ne p1, v2, :cond_7

    .line 290
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v2

    if-nez v2, :cond_6

    .line 291
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 292
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->cellY:I

    .line 294
    :cond_6
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 295
    iget v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_0

    .line 296
    :cond_7
    const v2, 0x7f0c007b

    if-ne p1, v2, :cond_3

    .line 297
    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 298
    iget v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_0
.end method
