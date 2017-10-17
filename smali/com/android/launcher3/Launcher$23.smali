.class final Lcom/android/launcher3/Launcher$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/Launcher$23;->val$successfulDrop:Z

    iput-object p3, p0, Lcom/android/launcher3/Launcher$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 3061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3064
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher$23;->val$successfulDrop:Z

    if-eqz v0, :cond_0

    .line 3070
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWidgetsView:Lcom/android/launcher3/widget/WidgetsContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsContainerView;->setVisibility(I)V

    .line 3071
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$23;->val$onCompleteRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Launcher;->showWorkspace(ZLjava/lang/Runnable;)Z

    .line 3075
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/Launcher;->-set0(Lcom/android/launcher3/Launcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3076
    return-void

    .line 3073
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher$23;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method
