.class final Lcom/android/launcher3/Workspace$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic val$dragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field final synthetic val$isFlingToDelete:Z

.field final synthetic val$success:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout$CellInfo;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$12;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$12;->val$dragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$12;->val$target:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/Workspace$12;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean p5, p0, Lcom/android/launcher3/Workspace$12;->val$isFlingToDelete:Z

    iput-boolean p6, p0, Lcom/android/launcher3/Workspace$12;->val$success:Z

    .line 3492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$12;->val$dragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-static {v0, v1}, Lcom/android/launcher3/Workspace;->-set0(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout$CellInfo;)Lcom/android/launcher3/CellLayout$CellInfo;

    .line 3495
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$12;->val$target:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$12;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v3, p0, Lcom/android/launcher3/Workspace$12;->val$isFlingToDelete:Z

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace$12;->val$success:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Workspace;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    .line 3496
    iget-object v0, p0, Lcom/android/launcher3/Workspace$12;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mDeferredAction:Ljava/lang/Runnable;

    .line 3497
    return-void
.end method
