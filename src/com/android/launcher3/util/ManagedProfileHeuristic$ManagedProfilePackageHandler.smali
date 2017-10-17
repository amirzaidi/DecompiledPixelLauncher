.class Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;
.super Lcom/android/launcher3/util/CachedPackageTracker;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;)V
    .locals 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    .line 108
    invoke-static {p1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get1(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.launcher3.managedusers.prefs"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/CachedPackageTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;)V

    return-void
.end method

.method private finalizeWorkFolder(Landroid/os/UserHandle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get0(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get3(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherModel;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/FolderInfo;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Lcom/android/launcher3/FolderInfo;->hasOption(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 168
    :cond_3
    invoke-virtual {p3, v6, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 169
    return-void

    .line 171
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iget-object v4, v2, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v0, v1, v4, p2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-wrap0(Lcom/android/launcher3/util/ManagedProfileHeuristic;JILjava/util/ArrayList;)V

    .line 174
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler$1;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;Lcom/android/launcher3/FolderInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 203
    :goto_0
    return-void

    .line 186
    :cond_5
    new-instance v2, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v2}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get1(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0c001e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 191
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 192
    invoke-virtual {v2, v0, v6}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_1

    .line 196
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v3}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get3(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v4, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    iget-wide v2, v2, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v0, v2, v3, v6, p2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-wrap0(Lcom/android/launcher3/util/ManagedProfileHeuristic;JILjava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected onLauncherAppsAdded(Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v6

    const-wide/32 v8, 0x1b77400

    add-long/2addr v6, v8

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get1(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v8

    move v3, v4

    .line 122
    :goto_0
    if-ge v3, v5, :cond_1

    .line 123
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;

    .line 124
    new-instance v9, Lcom/android/launcher3/AppInfo;

    iget-object v10, v0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-direct {v9, v10, p2, v8}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 125
    iget-object v10, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v10}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get2(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/IconCache;

    move-result-object v10

    iget-object v11, v0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->info:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v10, v9, v11, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 126
    invoke-virtual {v9}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v9

    .line 127
    iget-wide v10, v0, Lcom/android/launcher3/util/CachedPackageTracker$LauncherActivityInstallInfo;->installTime:J

    cmp-long v0, v10, v6

    if-gtz v0, :cond_0

    move-object v0, v1

    :goto_1
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 127
    goto :goto_1

    .line 130
    :cond_1
    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->finalizeWorkFolder(Landroid/os/UserHandle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 135
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get0(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-static {v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->-get3(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    .line 138
    :cond_2
    return-void
.end method

.method protected onLauncherPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
