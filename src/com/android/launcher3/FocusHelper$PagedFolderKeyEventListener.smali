.class public Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mFolder:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 82
    return-void
.end method


# virtual methods
.method public handleNoopKey(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 188
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->requestFocus()Z

    .line 190
    invoke-static {p1, p2}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 192
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    .line 86
    invoke-static {p2}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v9

    .line 87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    return v9

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-nez v0, :cond_1

    .line 99
    const/4 v0, 0x0

    return v0

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 105
    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 107
    invoke-virtual {v6, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 108
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/folder/FolderPagedView;

    .line 110
    invoke-virtual {v8, v7}, Lcom/android/launcher3/folder/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 111
    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v4

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    .line 114
    invoke-static {v7}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v1

    move v0, p2

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v2

    .line 118
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    .line 120
    return v9

    .line 123
    :cond_2
    const/4 v0, 0x0

    .line 125
    packed-switch v2, :pswitch_data_0

    .line 175
    invoke-virtual {v6, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 180
    invoke-static {p2, p1}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 184
    :goto_1
    return v9

    .line 128
    :pswitch_0
    add-int/lit8 v4, v3, -0x1

    invoke-static {v8, v4}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 131
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 133
    const/4 v0, -0x5

    if-ne v2, v0, :cond_4

    const/4 v0, 0x1

    .line 134
    :goto_2
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    .line 133
    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 134
    const/4 v0, 0x0

    .line 132
    :goto_3
    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 134
    :cond_5
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 139
    :pswitch_1
    add-int/lit8 v1, v3, -0x1

    invoke-static {v8, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 142
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_2
    add-int/lit8 v2, v3, -0x1

    invoke-static {v8, v2}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_3

    .line 148
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 149
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_3
    add-int/lit8 v1, v3, 0x1

    invoke-static {v8, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_3

    .line 155
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 156
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_4
    add-int/lit8 v1, v3, 0x1

    invoke-static {v8, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_3

    .line 163
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)V

    .line 164
    invoke-static {v1, p1, v2}, Lcom/android/launcher3/util/FocusLogic;->getAdjacentChildInNextFolderPage(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :pswitch_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :pswitch_6
    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    :cond_6
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
