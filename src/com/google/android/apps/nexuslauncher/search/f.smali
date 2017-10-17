.class Lcom/google/android/apps/nexuslauncher/search/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# instance fields
.field private final eN:Ljava/util/concurrent/FutureTask;

.field private mAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mQuery:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->eN:Ljava/util/concurrent/FutureTask;

    .line 207
    return-void
.end method

.method static synthetic dp(Lcom/google/android/apps/nexuslauncher/search/f;)Ljava/util/concurrent/FutureTask;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->eN:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/f;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "AppSearchProvider"

    const-string/jumbo v1, "Workspace not loaded, loading now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 228
    new-instance v0, Lcom/android/launcher3/model/LoaderResults;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V

    .line 227
    invoke-virtual {v6, v0}, Lcom/android/launcher3/LauncherModel;->startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v0, "AppSearchProvider"

    const-string/jumbo v1, "Loading workspace failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 235
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    .line 237
    invoke-static {}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;->getInstance()Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;

    move-result-object v2

    .line 238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 239
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mQuery:Ljava/lang/String;

    invoke-static {v0, v5, v2}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;->matches(Lcom/android/launcher3/AppInfo;Ljava/lang/String;Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm$StringMatcher;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-boolean v5, v0, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    if-eqz v5, :cond_2

    .line 243
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    goto :goto_0

    .line 247
    :cond_3
    new-instance v0, Lcom/android/launcher3/allapps/AppInfoComparator;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    return-object v1
.end method

.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 213
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 214
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 215
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/search/f;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 216
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->eN:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 221
    return-void
.end method
