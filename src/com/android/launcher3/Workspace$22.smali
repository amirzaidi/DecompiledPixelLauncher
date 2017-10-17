.class final Lcom/android/launcher3/Workspace$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$folderIds:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$22;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$22;->val$folderIds:Ljava/util/HashSet;

    .line 3910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 3913
    instance-of v0, p1, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$22;->val$folderIds:Ljava/util/HashSet;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3914
    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    .line 3913
    if-eqz v0, :cond_1

    .line 3915
    new-instance v1, Lcom/android/launcher3/badge/FolderBadgeInfo;

    invoke-direct {v1}, Lcom/android/launcher3/badge/FolderBadgeInfo;-><init>()V

    .line 3916
    check-cast p1, Lcom/android/launcher3/FolderInfo;

    iget-object v0, p1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 3917
    iget-object v3, p0, Lcom/android/launcher3/Workspace$22;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/badge/FolderBadgeInfo;->addBadgeInfo(Lcom/android/launcher3/badge/BadgeInfo;)V

    goto :goto_0

    .line 3920
    :cond_0
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p2, v1}, Lcom/android/launcher3/folder/FolderIcon;->setBadgeInfo(Lcom/android/launcher3/badge/FolderBadgeInfo;)V

    .line 3923
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
