.class final Lcom/android/launcher3/folder/Folder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 596
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->-get0(Lcom/android/launcher3/folder/Folder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 597
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$8;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 598
    return-void
.end method
