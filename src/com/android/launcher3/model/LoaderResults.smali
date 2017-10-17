.class public Lcom/android/launcher3/model/LoaderResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacks:Ljava/lang/ref/WeakReference;

.field private final mPageToBindFirst:I

.field private final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/model/LoaderResults;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 72
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 73
    iput p4, p0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    .line 74
    if-nez p5, :cond_0

    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p5, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 317
    :goto_0
    if-ge v2, v3, :cond_1

    .line 319
    add-int/lit8 v0, v2, 0x6

    if-gt v0, v3, :cond_0

    const/4 v0, 0x6

    .line 320
    :goto_1
    new-instance v4, Lcom/android/launcher3/model/LoaderResults$8;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/android/launcher3/model/LoaderResults$8;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;II)V

    .line 329
    invoke-interface {p3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 317
    add-int/lit8 v0, v2, 0x6

    move v2, v0

    goto :goto_0

    .line 319
    :cond_0
    sub-int v0, v3, v2

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    :goto_2
    if-ge v1, v2, :cond_2

    .line 335
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 336
    new-instance v3, Lcom/android/launcher3/model/LoaderResults$9;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/model/LoaderResults$9;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 344
    invoke-interface {p3, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 346
    :cond_2
    return-void
.end method

.method private filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    .line 262
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 265
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 266
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_2
    return-void
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    .prologue
    .line 216
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 219
    if-nez v0, :cond_0

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 228
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/LoaderResults$6;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 234
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 235
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 236
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 237
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_2
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_3
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 243
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_4
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_5
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_6
    return-void
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 277
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 278
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v2

    .line 279
    new-instance v2, Lcom/android/launcher3/model/LoaderResults$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/model/LoaderResults$7;-><init>(Lcom/android/launcher3/model/LoaderResults;II)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    return-void
.end method


# virtual methods
.method public bindAllApps()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 370
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$11;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$11;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public bindDeepShortcuts()V
    .locals 2

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    .line 353
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$10;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$10;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 363
    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bindWidgets()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsMap()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v0

    .line 384
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$12;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$12;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 392
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method

.method public bindWorkspace()V
    .locals 18

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 86
    if-nez v2, :cond_0

    .line 88
    const-string/jumbo v2, "LoaderResults"

    const-string/jumbo v3, "LoaderTask running with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 93
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v3

    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 105
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    const/16 v4, -0x3e9

    if-eq v3, v4, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    .line 107
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 109
    const/16 v2, -0x3e9

    move/from16 v16, v2

    .line 113
    :goto_1
    if-ltz v16, :cond_3

    const/4 v2, 0x1

    move v15, v2

    .line 115
    :goto_2
    if-eqz v15, :cond_4

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 118
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, p0

    .line 123
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v9, p0

    move-wide v10, v4

    .line 125
    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 131
    new-instance v2, Lcom/android/launcher3/model/LoaderResults$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/LoaderResults$1;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/launcher3/model/LoaderResults$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/android/launcher3/model/LoaderResults$2;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v3}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 163
    if-eqz v15, :cond_5

    new-instance v2, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    .line 165
    :goto_4
    new-instance v4, Lcom/android/launcher3/model/LoaderResults$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15, v2}, Lcom/android/launcher3/model/LoaderResults$3;-><init>(Lcom/android/launcher3/model/LoaderResults;ZLjava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14, v2}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 179
    new-instance v3, Lcom/android/launcher3/model/LoaderResults$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/LoaderResults$4;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 187
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    if-eqz v15, :cond_1

    .line 190
    new-instance v3, Lcom/android/launcher3/model/LoaderResults$5;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v3, v0, v1, v2}, Lcom/android/launcher3/model/LoaderResults$5;-><init>(Lcom/android/launcher3/model/LoaderResults;ILjava/util/concurrent/Executor;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    :cond_1
    return-void

    .line 97
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 106
    :cond_2
    invoke-interface {v2}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v2

    goto/16 :goto_0

    .line 113
    :cond_3
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_2

    .line 115
    :cond_4
    const-wide/16 v4, -0x1

    goto/16 :goto_3

    :cond_5
    move-object v2, v3

    .line 163
    goto :goto_4

    :cond_6
    move/from16 v16, v2

    goto/16 :goto_1
.end method

.method public newIdleLock(Ljava/lang/Object;)Lcom/android/launcher3/util/LooperIdleLock;
    .locals 2

    .prologue
    .line 396
    new-instance v0, Lcom/android/launcher3/util/LooperIdleLock;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 398
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    .line 401
    :cond_0
    return-object v0
.end method
