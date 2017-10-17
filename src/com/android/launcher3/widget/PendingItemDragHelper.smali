.class public Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mPreview:Landroid/widget/RemoteViews;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    .line 58
    return-void
.end method


# virtual methods
.method public createDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 164
    iget v2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    add-int/2addr v1, v2

    .line 165
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 164
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 171
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 173
    iget v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    div-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 179
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v0, v1, v7, v7}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I

    move-result-object v0

    .line 186
    aget v1, v0, v7

    .line 187
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 188
    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 189
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    iget v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 193
    iget v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->blurSizeOutline:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 192
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 194
    iget-object v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 195
    iget-object v6, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 196
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 199
    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v3, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    return-object v2
.end method

.method public setPreview(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    .line 62
    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 10

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 78
    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 86
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I

    move-result-object v0

    .line 88
    int-to-float v3, p2

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    const/4 v5, 0x0

    aget v0, v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 90
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreview:Landroid/widget/RemoteViews;

    .line 94
    iget-object v4, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 93
    invoke-static {v1, v0, v4, v3, v5}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->generateFromRemoteViews(Lcom/android/launcher3/BaseActivity;Landroid/widget/RemoteViews;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    :goto_0
    if-nez v0, :cond_0

    .line 97
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    .line 98
    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    const/4 v4, 0x0

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/WidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/BaseActivity;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;ILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    :cond_0
    const/4 v2, 0x0

    aget v2, v5, v2

    if-ge v2, p2, :cond_2

    .line 103
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    .line 104
    if-le p2, p3, :cond_1

    .line 105
    mul-int/2addr v2, p3

    div-int/2addr v2, p2

    .line 108
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 109
    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 112
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mView:Landroid/view/View;

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 114
    const/4 v6, 0x0

    .line 115
    const/4 v7, 0x0

    move-object v4, v0

    .line 145
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->prepareDragWithProvider(Lcom/android/launcher3/graphics/DragPreviewProvider;)V

    .line 147
    iget v0, p4, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 147
    add-int/2addr v2, v0

    .line 149
    iget v0, p4, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    .line 150
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 149
    add-int/2addr v3, v0

    .line 152
    iput-object v4, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 154
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object v1, v4

    move-object v4, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 156
    return-void

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 118
    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createScaledBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 121
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    .line 123
    new-instance v6, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->previewPadding:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 127
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I

    move-result-object v2

    .line 128
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 129
    iget v4, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 131
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 132
    const v7, 0x7f0b0047

    .line 131
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 133
    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v5

    iput v7, p1, Landroid/graphics/Rect;->left:I

    .line 134
    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 136
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 137
    const/4 v5, 0x0

    aget v5, v2, v5

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 138
    iget v5, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 139
    const/4 v5, 0x1

    aget v2, v2, v5

    sub-int/2addr v2, v4

    iget v5, v3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v2, v5

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 140
    iget v2, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    move-object v4, v0

    goto/16 :goto_1

    :cond_4
    move-object v0, v4

    goto/16 :goto_0
.end method
