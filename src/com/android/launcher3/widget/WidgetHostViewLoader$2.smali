.class final Lcom/android/launcher3/widget/WidgetHostViewLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field final synthetic val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-ne v0, v6, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/LauncherAppWidgetHost;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget v2, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 129
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput v6, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 131
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v2, v2, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;ZZ)[I

    move-result-object v1

    .line 135
    new-instance v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    aget v3, v1, v4

    .line 136
    aget v1, v1, v5

    .line 135
    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 137
    iput v4, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iput v4, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 138
    iput-boolean v5, v2, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 139
    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
