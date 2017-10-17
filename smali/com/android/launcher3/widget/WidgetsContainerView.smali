.class public Lcom/android/launcher3/widget/WidgetsContainerView;
.super Lcom/android/launcher3/BaseContainerView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/DragSource;


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 77
    new-instance v0, Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    .line 81
    return-void
.end method

.method private beginDragging(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 153
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcom/android/launcher3/widget/WidgetCell;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    const-string/jumbo v0, "WidgetsContainerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected dragging view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->enterSpringLoadedDragMode()V

    .line 167
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private beginDraggingWidget(Lcom/android/launcher3/widget/WidgetCell;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    const v0, 0x7f0e006d

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/widget/WidgetImageView;

    .line 176
    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    return v6

    .line 180
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 183
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    .line 184
    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v3

    .line 185
    new-instance v4, Landroid/graphics/Point;

    aget v6, v5, v6

    aget v5, v5, v7

    invoke-direct {v4, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v6}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v5, p0

    .line 183
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 186
    return v7
.end method


# virtual methods
.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x5

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 256
    return-void
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegateTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    return-object v0
.end method

.method public getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->copyWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public handleLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->beginDragging(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 246
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 113
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    xor-int/lit8 v0, v0, 0x1

    .line 111
    if-eqz v0, :cond_1

    .line 113
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->handleClick()V

    .line 116
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    if-nez p3, :cond_0

    xor-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 219
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    xor-int/lit8 v0, v0, 0x1

    .line 218
    if-eqz v0, :cond_1

    .line 219
    instance-of v0, p1, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v0, v0, 0x1

    .line 218
    if-eqz v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 223
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->unlockScreenOrientation(Z)V

    .line 227
    if-nez p4, :cond_2

    .line 228
    iput-boolean v4, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 230
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/launcher3/BaseContainerView;->onFinishInflate()V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setAdapter(Landroid/support/v7/widget/q;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    new-instance v1, Landroid/support/v7/widget/N;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/N;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/p;)V

    .line 94
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWidgetsViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsContainerView;->handleLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mRecyclerView:Lcom/android/launcher3/widget/WidgetsRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->scrollToPosition(I)V

    .line 102
    return-void
.end method

.method public setWidgets(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->setWidgets(Lcom/android/launcher3/util/MultiHashMap;)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsContainerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetsListAdapter;->notifyDataSetChanged()V

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 243
    :cond_0
    return-void
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method
