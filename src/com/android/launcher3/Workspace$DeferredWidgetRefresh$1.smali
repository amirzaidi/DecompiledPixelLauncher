.class final Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$1;->this$1:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    .line 4216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4219
    instance-of v0, p2, Lcom/android/launcher3/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$1;->this$1:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-static {v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->-get0(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4220
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$1;->this$1:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v0, v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z

    .line 4221
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$1;->this$1:Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v0, v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->bindAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 4224
    :cond_0
    return v1
.end method
