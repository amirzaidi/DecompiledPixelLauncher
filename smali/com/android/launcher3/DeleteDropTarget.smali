.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public static removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public static supportsAccessibleDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v0, :cond_0

    .line 55
    instance-of v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 54
    if-nez v0, :cond_0

    .line 56
    instance-of v0, p0, Lcom/android/launcher3/FolderInfo;

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 77
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/folder/Folder;

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/view/View;)V

    .line 80
    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 49
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setTextBasedOnDragSource(Lcom/android/launcher3/DragSource;)V

    .line 50
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeleteDropTarget;->mHoverColor:I

    .line 43
    const v0, 0x7f020042

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setDrawable(I)V

    .line 44
    return-void
.end method

.method public setTextBasedOnDragSource(Lcom/android/launcher3/DragSource;)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/android/launcher3/DragSource;->supportsDeleteDropTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0035

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->setText(I)V

    .line 72
    :cond_0
    return-void

    .line 70
    :cond_1
    const/high16 v0, 0x1040000

    goto :goto_0
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
