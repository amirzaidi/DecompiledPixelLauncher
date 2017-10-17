.class public Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final addIconToFolderTime:J

.field final folderAlreadyCreated:Z

.field final folderIdKey:Ljava/lang/String;

.field final folderInfo:Lcom/android/launcher3/FolderInfo;

.field folderPendingAddition:Z

.field final pendingShortcuts:Ljava/util/ArrayList;

.field final prefs:Landroid/content/SharedPreferences;

.field final user:Landroid/os/UserHandle;

.field final userSerial:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    .line 116
    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->user:Landroid/os/UserHandle;

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->userSerial:J

    .line 120
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->addIconToFolderTime:J

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->userSerial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    .line 126
    if-eqz p3, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    iget-object v2, p3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/FolderInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const v1, 0x7f0c0020

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v4}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 134
    iput-boolean v5, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    goto :goto_0

    .line 137
    :cond_1
    iput-object v4, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    goto :goto_0
.end method


# virtual methods
.method public applyPendingState(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 185
    add-int/lit8 v8, v0, 0x1

    iput v0, v1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v0, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    move-object v0, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    move v0, v8

    goto :goto_1

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 204
    :goto_2
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public convertToWorkspaceItem(Lcom/android/launcher3/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/ItemInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 147
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->addIconToFolderTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 148
    return-object p1

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    if-nez v0, :cond_1

    .line 154
    return-object p1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v4

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1, v5}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 165
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    if-eqz v0, :cond_3

    .line 166
    iput-boolean v5, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0

    .line 170
    :cond_3
    return-object v4
.end method
