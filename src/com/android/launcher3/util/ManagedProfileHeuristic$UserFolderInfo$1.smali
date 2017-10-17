.class final Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method
