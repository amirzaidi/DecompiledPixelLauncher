.class final Lcom/android/launcher3/Workspace$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$8;->val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$8;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    .line 2648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 2652
    iget-object v1, p0, Lcom/android/launcher3/Workspace$8;->val$hostView:Lcom/android/launcher3/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$8;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->addResizeFrame(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2654
    :cond_0
    return-void
.end method
