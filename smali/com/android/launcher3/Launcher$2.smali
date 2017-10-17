.class final Lcom/android/launcher3/Launcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    .line 1553
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1557
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearResizeFrame()V

    .line 1562
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->-get1(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher$2;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->-set1(Lcom/android/launcher3/Launcher;Z)Z

    .line 1570
    :cond_1
    return-void
.end method
