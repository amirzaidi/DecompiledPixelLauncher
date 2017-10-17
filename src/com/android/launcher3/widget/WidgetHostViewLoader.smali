.class public Lcom/android/launcher3/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInflateWidgetRunnable:Ljava/lang/Runnable;

.field final mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

.field mLauncher:Lcom/android/launcher3/Launcher;

.field final mView:Landroid/view/View;

.field mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 28
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 46
    return-void
.end method

.method public static getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 157
    iget v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 159
    iget-object v1, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    .line 158
    invoke-static {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 162
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    .line 163
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 165
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string/jumbo v4, "appWidgetMinWidth"

    .line 167
    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    .line 166
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string/jumbo v4, "appWidgetMinHeight"

    .line 169
    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v1

    .line 168
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string/jumbo v4, "appWidgetMaxWidth"

    .line 171
    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, v5, v3

    .line 170
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string/jumbo v3, "appWidgetMaxHeight"

    .line 173
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 172
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-object v2
.end method

.method private preloadWidget()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 88
    iget-boolean v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v1, :cond_0

    .line 89
    return v3

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-static {v1, v2}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 96
    return v3

    .line 99
    :cond_1
    new-instance v2, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v1, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onDragEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    iget v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-eq v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 68
    iput v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v3, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 80
    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z

    .line 51
    return-void
.end method
