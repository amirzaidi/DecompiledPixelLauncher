.class final Lcom/android/launcher3/ButtonDropTarget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ButtonDropTarget;

.field final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/ButtonDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget$2;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget$2;->this$0:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v0, v0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 230
    return-void
.end method
