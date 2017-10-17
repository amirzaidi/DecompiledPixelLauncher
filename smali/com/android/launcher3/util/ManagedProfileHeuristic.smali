.class public Lcom/android/launcher3/util/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAddIconsToHomescreen:Z

.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mAddIconsToHomescreen:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/IconCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mIconCache:Lcom/android/launcher3/IconCache;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/util/ManagedProfileHeuristic;)Lcom/android/launcher3/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/util/ManagedProfileHeuristic;JILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JILjava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Landroid/os/UserHandle;

    .line 78
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 79
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 81
    invoke-static {}, Landroid/support/v4/os/a;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 80
    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mAddIconsToHomescreen:Z

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ManagedProfileHeuristic;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/launcher3/util/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    .line 256
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 259
    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 260
    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 264
    :cond_0
    if-nez v1, :cond_1

    .line 266
    const-string/jumbo v1, "com.android.launcher3.managedusers.prefs"

    .line 267
    const/4 v5, 0x0

    .line 265
    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user_folder_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 271
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v0, v1

    goto :goto_1

    .line 274
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 227
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 228
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 230
    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_0

    .line 234
    :cond_0
    const-string/jumbo v0, "com.android.launcher3.managedusers.prefs"

    .line 235
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 242
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method private saveWorkFolderShortcuts(JILjava/util/ArrayList;)V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 217
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 218
    add-int/lit8 v8, p3, 0x1

    iput p3, v1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    const-wide/16 v4, 0x0

    move-wide v2, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    move p3, v8

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 94
    new-instance v1, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;)V

    .line 95
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 96
    iget-object v4, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 86
    new-instance v1, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;)V

    .line 87
    const/4 v0, 0x0

    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 88
    iget-object v4, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 102
    new-instance v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic;Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;)V

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic$ManagedProfilePackageHandler;->processUserApps(Ljava/util/List;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method
