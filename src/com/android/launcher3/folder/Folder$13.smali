.class final Lcom/android/launcher3/folder/Folder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic val$isFlingToDelete:Z

.field final synthetic val$success:Z

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$13;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$13;->val$target:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/folder/Folder$13;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean p4, p0, Lcom/android/launcher3/folder/Folder$13;->val$isFlingToDelete:Z

    iput-boolean p5, p0, Lcom/android/launcher3/folder/Folder$13;->val$success:Z

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$13;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$13;->val$target:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder$13;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v3, p0, Lcom/android/launcher3/folder/Folder$13;->val$isFlingToDelete:Z

    iget-boolean v4, p0, Lcom/android/launcher3/folder/Folder$13;->val$success:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/folder/Folder;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V

    .line 985
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$13;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/folder/Folder;->mDeferredAction:Ljava/lang/Runnable;

    .line 986
    return-void
.end method
