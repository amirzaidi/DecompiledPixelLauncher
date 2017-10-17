.class public Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mTempCords:[I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    .line 45
    return-void
.end method

.method public static getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 172
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 173
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v1, v6

    const v0, 0x7f0c007a

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_5

    .line 175
    iget-object v1, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 177
    check-cast v1, Lcom/android/launcher3/FolderInfo;

    .line 179
    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 180
    if-eqz v2, :cond_1

    iget v4, v2, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iget v5, v1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    if-le v4, v5, :cond_2

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 185
    :cond_3
    if-eqz v2, :cond_4

    .line 186
    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    aput-object v1, v0, v6

    const v1, 0x7f0c0078

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_4
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v0, v1, v6

    const v0, 0x7f0c0077

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_5
    const-string/jumbo v0, ""

    return-object v0
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 120
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    iget-object v1, v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 127
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_3

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0c007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_3
    instance-of v0, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0079

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_4
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 160
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v3, v2, :cond_1

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 14

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v7

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v8

    .line 56
    rem-int v9, p1, v7

    .line 57
    div-int v10, p1, v7

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;

    move-result-object v0

    .line 60
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->acceptsWidget()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, -0x1

    return v0

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-ne v1, v2, :cond_a

    .line 71
    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v11, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 72
    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/ItemInfo;

    iget v12, v0, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 74
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v11, :cond_9

    .line 75
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v12, :cond_8

    .line 77
    const/4 v0, 0x1

    .line 78
    sub-int v4, v9, v6

    .line 79
    sub-int v2, v10, v5

    .line 81
    if-ltz v4, :cond_1

    if-gez v2, :cond_2

    .line 75
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    move v3, v4

    .line 83
    :goto_2
    add-int v1, v4, v11

    if-ge v3, v1, :cond_3

    .line 84
    if-nez v0, :cond_4

    .line 92
    :cond_3
    if-eqz v0, :cond_1

    .line 93
    mul-int v0, v7, v2

    add-int/2addr v0, v4

    return v0

    :cond_4
    move v1, v2

    .line 85
    :goto_3
    add-int v13, v2, v12

    if-ge v1, v13, :cond_6

    .line 86
    if-ge v3, v7, :cond_5

    if-lt v1, v8, :cond_7

    .line 87
    :cond_5
    const/4 v0, 0x0

    .line 83
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 86
    :cond_7
    iget-object v13, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v13, v3, v1}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    :cond_8
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 97
    :cond_9
    const/4 v0, -0x1

    return v0

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v9, v10}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v1, v2, :cond_c

    .line 103
    :cond_b
    return p1

    .line 104
    :cond_c
    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    sget-object v2, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$DragType;

    if-eq v0, v2, :cond_e

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 107
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-nez v1, :cond_d

    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-nez v1, :cond_d

    .line 108
    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    .line 107
    if-eqz v0, :cond_e

    .line 109
    :cond_d
    return p1

    .line 112
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aput v4, v2, v5

    aput v4, v1, v4

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/a;->aeO(Landroid/graphics/Rect;)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempCords:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->aeX(Landroid/graphics/Rect;)V

    .line 154
    return-void
.end method
