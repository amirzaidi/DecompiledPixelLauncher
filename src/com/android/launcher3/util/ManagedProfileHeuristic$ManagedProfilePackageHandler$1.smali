.class final Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;

.field final synthetic val$workFolder:Lcom/android/launcher3/FolderInfo;

.field final synthetic val$workFolderApps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->this$1:Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;

    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->val$workFolder:Lcom/android/launcher3/FolderInfo;

    iput-object p3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->val$workFolderApps:Ljava/util/ArrayList;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->val$workFolder:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->val$workFolderApps:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 180
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;->val$workFolder:Lcom/android/launcher3/FolderInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method
