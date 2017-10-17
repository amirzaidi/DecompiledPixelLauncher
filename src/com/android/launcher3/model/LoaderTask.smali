.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

.field private final mResults:Lcom/android/launcher3/model/LoaderResults;

.field private final mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private mStopped:Z

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderResults;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 108
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 109
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 110
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 118
    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 848
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 848
    :cond_0
    return v0
.end method

.method private loadAllApps()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 788
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/AllAppsList;->clear()V

    .line 792
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 795
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v1, v8, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 803
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    :cond_0
    return-void

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    .line 808
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 809
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    .line 811
    iget-object v6, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v7, Lcom/android/launcher3/AppInfo;

    invoke-direct {v7, v1, v0, v5}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    invoke-virtual {v6, v7, v1}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 808
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->onAllAppsLoaded(Landroid/content/Context;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 817
    :cond_3
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PROMISE_APPS_IN_ALL_APPS:Z

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getAllVerifiedSessions()Ljava/util/List;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 821
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 822
    invoke-static {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    move-result-object v0

    .line 821
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    goto :goto_2

    .line 826
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 831
    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 5

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    .line 836
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-boolean v0, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 838
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 841
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_0

    .line 845
    :cond_1
    return-void
.end method

.method private loadWorkspace()V
    .locals 34

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 224
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 225
    new-instance v13, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v13, v12}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v14

    .line 227
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v15

    .line 228
    new-instance v16, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 230
    const/4 v5, 0x0

    .line 232
    :try_start_0
    invoke-static {v12}, Lcom/android/launcher3/provider/ImportDataTask;->performImportIfPossible(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    if-nez v5, :cond_0

    sget-boolean v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v6, :cond_0

    .line 239
    invoke-static {v12}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 238
    if-eqz v6, :cond_0

    .line 241
    const/4 v5, 0x1

    .line 244
    :cond_0
    if-eqz v5, :cond_1

    .line 245
    const-string/jumbo v5, "LoaderTask"

    const-string/jumbo v6, "loadWorkspace: resetting launcher database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string/jumbo v5, "create_empty_db"

    .line 246
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 250
    :cond_1
    const-string/jumbo v5, "LoaderTask"

    const-string/jumbo v6, "loadWorkspace: loading default favorites"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string/jumbo v5, "load_default_favorites"

    .line 251
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 255
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v5}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v18

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 262
    new-instance v20, Lcom/android/launcher3/model/LoaderCursor;

    .line 263
    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 262
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 262
    move-object/from16 v0, v20

    invoke-direct {v0, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    const/4 v6, 0x0

    .line 269
    :try_start_2
    const-string/jumbo v5, "appWidgetId"

    .line 268
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 271
    const-string/jumbo v5, "appWidgetProvider"

    .line 270
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 273
    const-string/jumbo v5, "spanX"

    .line 272
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 275
    const-string/jumbo v5, "spanY"

    .line 274
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 277
    const-string/jumbo v5, "rank"

    .line 276
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 279
    const-string/jumbo v5, "options"

    .line 278
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 281
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 282
    new-instance v27, Landroid/util/LongSparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/LongSparseArray;-><init>()V

    .line 283
    new-instance v28, Landroid/util/LongSparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/LongSparseArray;-><init>()V

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 285
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    .line 286
    invoke-virtual {v8, v10, v11, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v7

    .line 292
    if-eqz v7, :cond_43

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 296
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 297
    invoke-static {v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 672
    :catchall_0
    move-exception v4

    .line 673
    :try_start_3
    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 672
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    :catchall_1
    move-exception v4

    monitor-exit v17

    throw v4

    .line 233
    :catch_0
    move-exception v5

    .line 235
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 304
    :cond_2
    const/4 v5, 0x0

    .line 307
    :goto_3
    :try_start_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 316
    :cond_3
    new-instance v29, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 317
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v5, :cond_32

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_32

    .line 319
    :try_start_5
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_4

    .line 321
    const-string/jumbo v5, "User has been deleted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 668
    :catch_1
    move-exception v5

    .line 669
    :try_start_6
    const-string/jumbo v7, "LoaderTask"

    const-string/jumbo v8, "Desktop items loading interrupted"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v6

    :goto_5
    move-object v6, v5

    goto :goto_4

    .line 325
    :cond_4
    const/4 v7, 0x0

    .line 326
    :try_start_7
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move-object v5, v6

    goto :goto_5

    .line 330
    :pswitch_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v9

    .line 331
    if-nez v9, :cond_5

    .line 332
    const-string/jumbo v5, "Invalid or null intent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_4

    .line 336
    :cond_5
    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 337
    const/16 v8, 0x8

    .line 338
    :goto_6
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    .line 339
    if-nez v30, :cond_7

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 341
    :goto_7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 342
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_8

    .line 343
    const-string/jumbo v5, "Legacy shortcuts are only allowed for default user"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_4

    .line 337
    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    .line 339
    :cond_7
    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_7

    .line 345
    :cond_8
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_9

    .line 347
    const-string/jumbo v5, "Restore from managed profile not supported"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 351
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 352
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-eq v5, v10, :cond_a

    .line 353
    const-string/jumbo v5, "Only legacy shortcuts can have null package"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 359
    :cond_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v11, v10}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    move v10, v5

    .line 362
    :goto_8
    if-eqz v30, :cond_b

    if-eqz v10, :cond_b

    .line 367
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 369
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 396
    :cond_b
    :goto_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    xor-int/lit8 v5, v10, 0x1

    if-eqz v5, :cond_c

    .line 400
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_16

    .line 403
    const-string/jumbo v5, "LoaderTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "package not yet restored: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v5, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 434
    :cond_c
    :goto_a
    if-eqz v10, :cond_d

    .line 437
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 440
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v5

    if-nez v5, :cond_19

    .line 441
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 443
    :goto_b
    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_1a

    .line 445
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    .line 507
    :goto_c
    if-eqz v7, :cond_23

    .line 508
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 510
    iput-object v8, v7, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 511
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v9

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 512
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 513
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 514
    iget v9, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/2addr v5, v9

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 515
    if-eqz v14, :cond_e

    invoke-static {v12, v8}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    .line 516
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 519
    :cond_e
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f

    .line 520
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 521
    if-eqz v5, :cond_22

    .line 522
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 528
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v5}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object v5, v6

    .line 532
    goto/16 :goto_5

    .line 359
    :cond_10
    const/4 v5, 0x1

    move v10, v5

    goto/16 :goto_8

    .line 371
    :cond_11
    const/4 v5, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 374
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v9

    .line 375
    if-eqz v9, :cond_12

    .line 376
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 377
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    .line 378
    const-string/jumbo v30, "intent"

    .line 379
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v31

    .line 377
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 380
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto/16 :goto_9

    .line 382
    :cond_12
    const-string/jumbo v5, "Unable to find a launch target"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 388
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid component removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 407
    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 409
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    or-int/lit8 v5, v5, 0x8

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 410
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto/16 :goto_a

    .line 412
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrestored app removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 415
    :cond_16
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 417
    or-int/lit8 v8, v8, 0x2

    .line 419
    const/4 v5, 0x1

    move v7, v5

    goto/16 :goto_a

    .line 420
    :cond_17
    if-nez v15, :cond_18

    .line 423
    const-string/jumbo v5, "LoaderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Missing pkg, will check later: "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    const/4 v5, 0x1

    move v7, v5

    goto/16 :goto_a

    .line 429
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid package removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 440
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 446
    :cond_1a
    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v10, :cond_1b

    .line 448
    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v7, v5}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    goto/16 :goto_c

    .line 450
    :cond_1b
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 451
    const/4 v7, 0x6

    .line 450
    if-ne v5, v7, :cond_1f

    .line 453
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v9, v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7

    .line 454
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 456
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 457
    if-nez v5, :cond_1c

    .line 459
    const-string/jumbo v5, "Pinned shortcut not found"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 462
    :cond_1c
    new-instance v7, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v7, v5, v12}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 464
    new-instance v9, Lcom/android/launcher3/model/LoaderTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1, v7}, Lcom/android/launcher3/model/LoaderTask$1;-><init>(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/ShortcutInfo;)V

    .line 474
    const/4 v10, 0x1

    .line 472
    invoke-static {v5, v12, v10, v9}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;ZLcom/android/launcher3/util/Provider;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 476
    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v7, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 475
    invoke-virtual {v13, v5, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 477
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 479
    :cond_1d
    iget-object v5, v7, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    move/from16 v33, v8

    move-object v8, v5

    move/from16 v5, v33

    goto/16 :goto_c

    .line 482
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    .line 483
    iget v7, v5, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v5, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    goto/16 :goto_c

    .line 486
    :cond_1f
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    .line 489
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 490
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v7}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    .line 489
    if-eqz v7, :cond_42

    .line 491
    or-int/lit8 v8, v8, 0x4

    move v7, v8

    .line 497
    :goto_e
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 498
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_21

    .line 499
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 497
    if-eqz v8, :cond_21

    .line 500
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 497
    if-eqz v8, :cond_41

    .line 502
    const/high16 v8, 0x10200000

    .line 501
    invoke-virtual {v9, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v8, v9

    move/from16 v33, v7

    move-object v7, v5

    move/from16 v5, v33

    goto/16 :goto_c

    :cond_20
    move v7, v8

    .line 490
    goto :goto_e

    :cond_21
    move-object v8, v9

    move/from16 v33, v7

    move-object v7, v5

    move/from16 v5, v33

    .line 500
    goto/16 :goto_c

    .line 524
    :cond_22
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->status:I

    goto/16 :goto_d

    .line 530
    :cond_23
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Unexpected null ShortcutInfo"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 535
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object v5

    .line 536
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 539
    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 540
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->spanX:I

    .line 541
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->spanY:I

    .line 542
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->options:I

    .line 545
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 547
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object v5, v6

    .line 548
    goto/16 :goto_5

    .line 553
    :pswitch_3
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 554
    const/4 v7, 0x5

    .line 553
    if-ne v5, v7, :cond_25

    const/4 v5, 0x1

    move v8, v5

    .line 556
    :goto_f
    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v9

    .line 557
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 560
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 563
    const/4 v5, 0x1

    .line 562
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    xor-int/lit8 v30, v5, 0x1

    .line 565
    const/4 v5, 0x2

    .line 564
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    xor-int/lit8 v31, v5, 0x1

    .line 567
    if-nez v6, :cond_24

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v6

    .line 571
    :cond_24
    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    .line 572
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 573
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v32, v0

    .line 571
    move-object/from16 v0, v32

    invoke-direct {v5, v7, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 570
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 575
    invoke-static {v5}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    .line 576
    if-nez v14, :cond_26

    xor-int/lit8 v32, v8, 0x1

    if-eqz v32, :cond_26

    if-eqz v31, :cond_26

    .line 577
    xor-int/lit8 v32, v7, 0x1

    .line 576
    if-eqz v32, :cond_26

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 578
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_10
    move-object v5, v6

    .line 666
    goto/16 :goto_5

    .line 553
    :cond_25
    const/4 v5, 0x0

    move v8, v5

    goto :goto_f

    .line 582
    :cond_26
    if-eqz v7, :cond_29

    .line 583
    new-instance v7, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 584
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 583
    invoke-direct {v7, v9, v5}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 589
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v5, v5, -0x9

    and-int/lit8 v5, v5, -0x3

    .line 592
    if-nez v31, :cond_27

    .line 597
    if-eqz v30, :cond_27

    .line 598
    or-int/lit8 v5, v5, 0x4

    .line 601
    :cond_27
    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    move-object v5, v7

    .line 626
    :goto_11
    const/16 v7, 0x20

    .line 625
    invoke-virtual {v5, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 627
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 630
    :cond_28
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 631
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 632
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 633
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 635
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 636
    const-string/jumbo v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 603
    :cond_29
    const-string/jumbo v5, "LoaderTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Widget restore pending id="

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 604
    const-string/jumbo v30, " appWidgetId="

    .line 603
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 605
    const-string/jumbo v30, " status ="

    .line 603
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 605
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    move/from16 v30, v0

    .line 603
    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v7, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v7, v9, v11}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 608
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 609
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 611
    const/16 v9, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 623
    :cond_2a
    :goto_12
    if-nez v5, :cond_2d

    const/4 v5, 0x0

    .line 622
    :goto_13
    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    move-object v5, v7

    goto/16 :goto_11

    .line 613
    :cond_2b
    if-eqz v5, :cond_2c

    .line 615
    iget v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_12

    .line 617
    :cond_2c
    if-nez v14, :cond_2a

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrestored widget removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 623
    :cond_2d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_13

    .line 641
    :cond_2e
    if-nez v8, :cond_30

    .line 643
    iget-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 644
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 645
    iget v8, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v8, v9, :cond_30

    .line 646
    :cond_2f
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8

    .line 647
    const-string/jumbo v9, "appWidgetProvider"

    .line 646
    invoke-virtual {v8, v9, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v7

    .line 649
    const-string/jumbo v8, "restored"

    .line 650
    iget v9, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 646
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 655
    :cond_30
    iget v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v7, :cond_31

    .line 657
    iget-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 658
    new-instance v8, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v8, v7}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object v8, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 659
    iget-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v8, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iput-object v8, v7, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 660
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 661
    iget-object v8, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    const/4 v9, 0x0

    .line 660
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    .line 664
    :cond_31
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_10

    .line 673
    :cond_32
    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 677
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v5, :cond_33

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v4}, Lcom/android/launcher3/model/BgDataModel;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v17

    .line 679
    return-void

    .line 683
    :cond_33
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 687
    const-string/jumbo v5, "delete_empty_folders"

    .line 685
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 688
    const-string/jumbo v6, "value"

    .line 685
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 689
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 690
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 691
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_14

    .line 697
    :cond_34
    const-string/jumbo v5, "remove_ghost_widgets"

    .line 696
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 702
    :cond_35
    invoke-static {v12}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 703
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_36
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    .line 705
    if-eqz v5, :cond_37

    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_36

    .line 706
    :cond_37
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 705
    if-eqz v5, :cond_36

    .line 708
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    goto :goto_15

    .line 713
    :cond_38
    new-instance v6, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_39
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/FolderInfo;

    .line 716
    iget-object v5, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v8, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 717
    invoke-virtual {v6, v4}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    .line 719
    const/4 v5, 0x0

    .line 720
    iget-object v4, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 721
    iget-boolean v9, v4, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v9, :cond_3a

    .line 722
    iget v9, v4, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v9, :cond_3a

    .line 723
    iget v9, v4, Lcom/android/launcher3/ShortcutInfo;->rank:I

    invoke-virtual {v6, v9}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result v9

    .line 721
    if-eqz v9, :cond_40

    .line 724
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 725
    add-int/lit8 v4, v5, 0x1

    .line 728
    :goto_17
    sget v5, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge v4, v5, :cond_39

    move v5, v4

    goto :goto_16

    :cond_3a
    move v4, v5

    .line 723
    goto :goto_17

    .line 734
    :cond_3b
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    .line 735
    if-nez v15, :cond_3c

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    .line 737
    new-instance v4, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 738
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 740
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 739
    const/4 v7, 0x0

    .line 736
    invoke-virtual {v12, v4, v5, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 744
    :cond_3c
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3d
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 746
    iget-wide v8, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 747
    iget-wide v10, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v4, v10, v14

    if-nez v4, :cond_3d

    .line 748
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 747
    if-eqz v4, :cond_3d

    .line 749
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 754
    :cond_3e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v12, v4}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_3f
    monitor-exit v17

    .line 762
    return-void

    :cond_40
    move v4, v5

    goto/16 :goto_17

    :cond_41
    move-object v8, v9

    move/from16 v33, v7

    move-object v7, v5

    move/from16 v5, v33

    goto/16 :goto_c

    :cond_42
    move v7, v8

    goto/16 :goto_e

    :cond_43
    move v5, v7

    goto/16 :goto_3

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateIconCache()V
    .locals 5

    .prologue
    .line 766
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 767
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 769
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 770
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 771
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 774
    :cond_1
    :try_start_1
    instance-of v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v4, :cond_0

    .line 775
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 776
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v2

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 783
    return-void
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    .line 134
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 140
    return-void

    :cond_0
    monitor-exit p0

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->beginLoader(Lcom/android/launcher3/model/LoaderTask;)Lcom/android/launcher3/LauncherModel$LoaderTransaction;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 147
    :try_start_2
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace()V

    .line 149
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace()V

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 160
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 164
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()V

    .line 167
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 170
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 172
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->updateIconCache()V

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()V

    .line 187
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 194
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 200
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    .line 204
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->commit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 210
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 205
    :catch_0
    move-exception v0

    .line 211
    :cond_2
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    throw v2

    :catch_3
    move-exception v1

    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_4
    if-eq v2, v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v0
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized stopLocked()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 214
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 216
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitForIdle()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/LoaderResults;->newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;

    move-result-object v0

    .line 127
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v1, :cond_1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    monitor-exit p0

    .line 128
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
