.class final Lcom/android/launcher3/folder/FolderIcon$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/FolderIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->beginExternalDrag()V

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon$2;->this$0:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    .line 264
    return-void
.end method
