.class final Lcom/android/launcher3/folder/FolderIcon$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;

.field final synthetic val$item:Lcom/android/launcher3/ShortcutInfo;

.field final synthetic val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    iput-object p3, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$item:Lcom/android/launcher3/ShortcutInfo;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$params:Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderIcon$PreviewItemDrawingParams;->hidden:Z

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon$3;->val$item:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$3;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->invalidate()V

    .line 363
    return-void
.end method
