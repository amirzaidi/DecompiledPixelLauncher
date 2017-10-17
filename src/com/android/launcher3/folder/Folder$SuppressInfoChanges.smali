.class Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/Folder;)V
    .locals 1

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderInfo;->removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1640
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 1645
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->this$0:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 1646
    return-void
.end method
