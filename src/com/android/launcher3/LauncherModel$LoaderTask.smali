.class Lcom/android/launcher3/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field mIsLoadingAndBindingWorkspace:Z

.field mLoadAndBindStepFinished:Z

.field private mPageToBindFirst:I

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 606
    iput p3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mPageToBindFirst:I

    .line 607
    return-void
.end method

.method private bindWorkspace(I)V
    .locals 21

    .prologue
    .line 1487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 1492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 1493
    if-nez v4, :cond_0

    .line 1495
    const-string/jumbo v4, "Launcher.Model"

    const-string/jumbo v5, "LoaderTask running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-void

    .line 1500
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v5

    .line 1505
    :try_start_0
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1506
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1507
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v6, v6, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1512
    const/16 v5, -0x3e9

    move/from16 v0, p1

    if-eq v0, v5, :cond_3

    .line 1514
    :goto_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p1

    if-lt v0, v5, :cond_1

    .line 1516
    const/16 p1, -0x3e9

    .line 1520
    :cond_1
    if-ltz p1, :cond_4

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1522
    :goto_1
    if-eqz v17, :cond_5

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1525
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    .line 1530
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v11, p0

    move-wide v12, v6

    .line 1532
    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/LauncherModel$LoaderTask;->filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1534
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1535
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1538
    new-instance v5, Lcom/android/launcher3/LauncherModel$LoaderTask$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lcom/android/launcher3/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v6, v5}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 1549
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceScreens(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1551
    new-instance v6, Lcom/android/launcher3/LauncherModel$DeferredMainThreadExecutor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-direct {v6, v5}, Lcom/android/launcher3/LauncherModel$DeferredMainThreadExecutor;-><init>(Lcom/android/launcher3/LauncherModel;)V

    .line 1553
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v15, v6}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 1561
    if-eqz v17, :cond_6

    new-instance v5, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v7, v7, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-direct {v5, v7}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Lcom/android/launcher3/DeferredHandler;)V

    .line 1563
    :goto_3
    new-instance v7, Lcom/android/launcher3/LauncherModel$LoaderTask$8;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v7, v0, v4, v1, v5}, Lcom/android/launcher3/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;ZLjava/util/concurrent/Executor;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1574
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v10, v1, v5}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 1577
    new-instance v6, Lcom/android/launcher3/LauncherModel$LoaderTask$9;

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;J)V

    .line 1604
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1606
    if-eqz v17, :cond_2

    .line 1607
    new-instance v6, Lcom/android/launcher3/LauncherModel$LoaderTask$10;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v6, v0, v4, v1, v5}, Lcom/android/launcher3/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;ILjava/util/concurrent/Executor;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v4, v6}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 1623
    :cond_2
    return-void

    .line 1504
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1513
    :cond_3
    invoke-interface {v4}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result p1

    goto/16 :goto_0

    .line 1520
    :cond_4
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1522
    :cond_5
    const-wide/16 v6, -0x1

    goto/16 :goto_2

    :cond_6
    move-object v5, v6

    .line 1561
    goto :goto_3
.end method

.method private bindWorkspaceItems(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1450
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v6

    .line 1451
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1453
    add-int/lit8 v0, v4, 0x6

    if-gt v0, v7, :cond_0

    const/4 v5, 0x6

    .line 1454
    :goto_1
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 1464
    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1451
    add-int/lit8 v4, v4, 0x6

    goto :goto_0

    .line 1453
    :cond_0
    sub-int v5, v7, v4

    goto :goto_1

    .line 1468
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v6

    .line 1469
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1470
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1471
    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$6;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1479
    invoke-interface {p4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1469
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1481
    :cond_2
    return-void
.end method

.method private bindWorkspaceScreens(Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 1432
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1441
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1, v0}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 1442
    return-void
.end method

.method private filterCurrentAppWidgets(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7

    .prologue
    .line 1381
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

    .line 1382
    if-eqz v0, :cond_0

    .line 1383
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1384
    iget-wide v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->screenId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 1385
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1387
    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1390
    :cond_2
    return-void
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    .prologue
    .line 1335
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1336
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1338
    if-nez v0, :cond_0

    .line 1339
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1346
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1347
    new-instance v0, Lcom/android/launcher3/LauncherModel$LoaderTask$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1353
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1354
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 1355
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    .line 1356
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1359
    :cond_2
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1361
    :cond_3
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 1362
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1365
    :cond_4
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1366
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    iget-wide v4, v0, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    :cond_5
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1373
    :cond_6
    return-void
.end method

.method private loadAllApps()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1677
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 1678
    if-nez v0, :cond_0

    .line 1680
    const-string/jumbo v0, "Launcher.Model"

    const-string/jumbo v1, "LoaderTask running with no launcher (loadAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 1687
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/AllAppsList;->clear()V

    .line 1688
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1691
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->-get4(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {v2, v10, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    .line 1699
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1700
    :cond_2
    return-void

    .line 1702
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    .line 1704
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 1705
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 1707
    iget-object v8, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/AppInfo;

    invoke-direct {v9, v2, v1, v7}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    invoke-virtual {v8, v9, v2}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 1704
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1710
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v1

    .line 1711
    if-eqz v1, :cond_1

    .line 1712
    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTask$12;

    invoke-direct {v2, p0, v1, v6}, Lcom/android/launcher3/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/util/ManagedProfileHeuristic;Ljava/util/List;)V

    .line 1719
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$13;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Ljava/lang/Runnable;)V

    invoke-static {v1, v3}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1737
    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1738
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1741
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v3, Lcom/android/launcher3/LauncherModel$LoaderTask$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask$14;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1758
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    .line 1763
    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 6

    .prologue
    .line 1766
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    .line 1767
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 1768
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->-set0(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 1769
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get2(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1771
    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1773
    invoke-virtual {v1, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 1774
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    goto :goto_0

    .line 1778
    :cond_1
    return-void
.end method

.method private loadWorkspace()V
    .locals 35

    .prologue
    .line 809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 810
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 811
    new-instance v13, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v13, v12}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 812
    invoke-virtual {v13}, Lcom/android/launcher3/util/PackageManagerHelper;->isSafeMode()Z

    move-result v14

    .line 813
    invoke-static {v12}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v15

    .line 814
    invoke-static {v12}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v16

    .line 815
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v17

    .line 816
    new-instance v18, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct/range {v18 .. v18}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 818
    const/4 v5, 0x0

    .line 820
    :try_start_0
    invoke-static {v12}, Lcom/android/launcher3/provider/ImportDataTask;->performImportIfPossible(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    if-nez v5, :cond_0

    sget-boolean v6, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v6, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 826
    if-eqz v6, :cond_0

    .line 829
    const/4 v5, 0x1

    .line 832
    :cond_0
    if-eqz v5, :cond_1

    .line 833
    const-string/jumbo v5, "Launcher.Model"

    const-string/jumbo v6, "loadWorkspace: resetting launcher database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string/jumbo v5, "create_empty_db"

    .line 834
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 838
    :cond_1
    const-string/jumbo v5, "Launcher.Model"

    const-string/jumbo v6, "loadWorkspace: loading default favorites"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-string/jumbo v5, "load_default_favorites"

    .line 839
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 842
    sget-object v19, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v19

    .line 843
    :try_start_1
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v5}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 846
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 845
    invoke-static {v5}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v20

    .line 847
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 849
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 850
    new-instance v22, Lcom/android/launcher3/model/LoaderCursor;

    .line 851
    sget-object v5, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 850
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 851
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v6, v6, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 850
    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 853
    const/4 v6, 0x0

    .line 857
    :try_start_2
    const-string/jumbo v5, "appWidgetId"

    .line 856
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 859
    const-string/jumbo v5, "appWidgetProvider"

    .line 858
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 861
    const-string/jumbo v5, "spanX"

    .line 860
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 863
    const-string/jumbo v5, "spanY"

    .line 862
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 865
    const-string/jumbo v5, "rank"

    .line 864
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 867
    const-string/jumbo v5, "options"

    .line 866
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 869
    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 870
    new-instance v29, Landroid/util/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/LongSparseArray;-><init>()V

    .line 871
    new-instance v30, Landroid/util/LongSparseArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/LongSparseArray;-><init>()V

    .line 872
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v5

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

    .line 873
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    .line 874
    invoke-virtual {v8, v10, v11, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v7}, Lcom/android/launcher3/LauncherModel;->-get6(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v7

    .line 880
    if-eqz v7, :cond_43

    .line 882
    const/16 v31, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 883
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->wasLastCallSuccess()Z

    move-result v31

    if-eqz v31, :cond_2

    .line 884
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 885
    invoke-static {v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1241
    :catchall_0
    move-exception v4

    .line 1242
    :try_start_3
    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 1241
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 842
    :catchall_1
    move-exception v4

    monitor-exit v19

    throw v4

    .line 821
    :catch_0
    move-exception v5

    .line 823
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 892
    :cond_2
    const/4 v5, 0x0

    .line 895
    :goto_3
    :try_start_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v10, v11, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 903
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_33

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_33

    .line 905
    :try_start_5
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_4

    .line 907
    const-string/jumbo v5, "User has been deleted"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1237
    :catch_1
    move-exception v5

    .line 1238
    :try_start_6
    const-string/jumbo v7, "Launcher.Model"

    const-string/jumbo v8, "Desktop items loading interrupted"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v5, v6

    :goto_5
    move-object v6, v5

    goto :goto_4

    .line 911
    :cond_4
    const/4 v7, 0x0

    .line 912
    :try_start_7
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move-object v5, v6

    goto :goto_5

    .line 916
    :pswitch_1
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v9

    .line 917
    if-nez v9, :cond_5

    .line 918
    const-string/jumbo v5, "Invalid or null intent"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_4

    .line 922
    :cond_5
    move-object/from16 v0, v22

    iget-wide v10, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 923
    const/16 v8, 0x8

    .line 924
    :goto_6
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    .line 925
    if-nez v31, :cond_7

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    .line 927
    :goto_7
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 928
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_8

    .line 929
    const-string/jumbo v5, "Legacy shortcuts are only allowed for default user"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto :goto_4

    .line 923
    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    .line 925
    :cond_7
    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_7

    .line 931
    :cond_8
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_9

    .line 933
    const-string/jumbo v5, "Restore from managed profile not supported"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 937
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 938
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v10, 0x1

    if-eq v5, v10, :cond_a

    .line 939
    const-string/jumbo v5, "Only legacy shortcuts can have null package"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 945
    :cond_a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 946
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v15, v11, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    move v10, v5

    .line 948
    :goto_8
    if-eqz v31, :cond_b

    if-eqz v10, :cond_b

    .line 953
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v31

    invoke-virtual {v15, v0, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 955
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 982
    :cond_b
    :goto_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    xor-int/lit8 v5, v10, 0x1

    if-eqz v5, :cond_c

    .line 986
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_16

    .line 989
    const-string/jumbo v5, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "package not yet restored: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const/16 v5, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1020
    :cond_c
    :goto_a
    if-eqz v10, :cond_d

    .line 1023
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 1026
    :cond_d
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1027
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v5

    sget v10, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-lt v5, v10, :cond_19

    const/4 v5, 0x1

    .line 1029
    :goto_b
    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v10, :cond_1b

    .line 1031
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    .line 1083
    :goto_c
    if-eqz v7, :cond_24

    .line 1084
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 1086
    iput-object v8, v7, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1087
    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v9

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 1088
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 1089
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 1090
    iget v9, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/2addr v5, v9

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 1091
    if-eqz v14, :cond_e

    invoke-static {v12, v8}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    .line 1092
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 1095
    :cond_e
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v5, :cond_f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f

    .line 1096
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1097
    if-eqz v5, :cond_23

    .line 1098
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 1104
    :cond_f
    :goto_d
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v5}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object v5, v6

    .line 1108
    goto/16 :goto_5

    .line 945
    :cond_10
    const/4 v5, 0x1

    move v10, v5

    goto/16 :goto_8

    .line 957
    :cond_11
    const/4 v5, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 960
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v9

    .line 961
    if-eqz v9, :cond_12

    .line 962
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 963
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    .line 964
    const-string/jumbo v31, "intent"

    .line 965
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v32

    .line 963
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 966
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto/16 :goto_9

    .line 968
    :cond_12
    const-string/jumbo v5, "Unable to find a launch target"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 974
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid component removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 993
    :cond_14
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 995
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    or-int/lit8 v5, v5, 0x8

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 996
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto/16 :goto_a

    .line 998
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

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1001
    :cond_16
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1003
    or-int/lit8 v8, v8, 0x2

    .line 1005
    const/4 v5, 0x1

    move v7, v5

    goto/16 :goto_a

    .line 1006
    :cond_17
    if-nez v17, :cond_18

    .line 1009
    const-string/jumbo v5, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Missing pkg, will check later: "

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1012
    const/4 v5, 0x1

    move v7, v5

    goto/16 :goto_a

    .line 1015
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

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1027
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1026
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 1032
    :cond_1b
    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    if-nez v10, :cond_1c

    .line 1034
    move-object/from16 v0, v22

    invoke-virtual {v0, v9, v7, v5}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    goto/16 :goto_c

    .line 1036
    :cond_1c
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 1037
    const/4 v7, 0x6

    .line 1036
    if-ne v5, v7, :cond_20

    .line 1039
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v9, v5}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v7

    .line 1040
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1042
    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 1043
    if-nez v5, :cond_1d

    .line 1045
    const-string/jumbo v5, "Pinned shortcut not found"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1048
    :cond_1d
    new-instance v7, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v7, v5, v12}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 1049
    invoke-static {v5, v12}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v7, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 1052
    invoke-virtual {v5}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v7, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 1051
    invoke-virtual {v13, v5, v9}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1053
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 1055
    :cond_1e
    iget-object v5, v7, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    move/from16 v34, v8

    move-object v8, v5

    move/from16 v5, v34

    goto/16 :goto_c

    .line 1058
    :cond_1f
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    .line 1059
    iget v7, v5, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v5, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move-object v7, v5

    move v5, v8

    move-object v8, v9

    goto/16 :goto_c

    .line 1062
    :cond_20
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v5

    .line 1065
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1066
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v11, v7}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    .line 1065
    if-eqz v7, :cond_42

    .line 1067
    or-int/lit8 v8, v8, 0x4

    move v7, v8

    .line 1073
    :goto_e
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 1074
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_22

    .line 1075
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1073
    if-eqz v8, :cond_22

    .line 1076
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    const-string/jumbo v10, "android.intent.category.LAUNCHER"

    invoke-interface {v8, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1073
    if-eqz v8, :cond_41

    .line 1078
    const/high16 v8, 0x10200000

    .line 1077
    invoke-virtual {v9, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v8, v9

    move/from16 v34, v7

    move-object v7, v5

    move/from16 v5, v34

    goto/16 :goto_c

    :cond_21
    move v7, v8

    .line 1066
    goto :goto_e

    :cond_22
    move-object v8, v9

    move/from16 v34, v7

    move-object v7, v5

    move/from16 v5, v34

    .line 1076
    goto/16 :goto_c

    .line 1100
    :cond_23
    iget v5, v7, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v5, v5, -0x5

    iput v5, v7, Lcom/android/launcher3/ShortcutInfo;->status:I

    goto/16 :goto_d

    .line 1106
    :cond_24
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Unexpected null ShortcutInfo"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1111
    :pswitch_2
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object v5

    .line 1112
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 1115
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1116
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->spanX:I

    .line 1117
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->spanY:I

    .line 1118
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/FolderInfo;->options:I

    .line 1121
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 1123
    sget-object v7, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    move-object v5, v6

    .line 1124
    goto/16 :goto_5

    .line 1129
    :pswitch_3
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    .line 1130
    const/4 v7, 0x5

    .line 1129
    if-ne v5, v7, :cond_26

    const/4 v5, 0x1

    move v8, v5

    .line 1132
    :goto_f
    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v9

    .line 1133
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1136
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1139
    const/4 v5, 0x1

    .line 1138
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    xor-int/lit8 v31, v5, 0x1

    .line 1141
    const/4 v5, 0x2

    .line 1140
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v5

    xor-int/lit8 v32, v5, 0x1

    .line 1143
    if-nez v6, :cond_25

    .line 1145
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1144
    invoke-static {v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1148
    :cond_25
    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    .line 1149
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1150
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    move-object/from16 v33, v0

    .line 1148
    move-object/from16 v0, v33

    invoke-direct {v5, v7, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 1147
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1152
    invoke-static {v5}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    .line 1153
    if-nez v14, :cond_27

    xor-int/lit8 v33, v8, 0x1

    if-eqz v33, :cond_27

    if-eqz v32, :cond_27

    .line 1154
    xor-int/lit8 v33, v7, 0x1

    .line 1153
    if-eqz v33, :cond_27

    .line 1156
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Deleting widget that isn\'t installed anymore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1155
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    :goto_10
    move-object v5, v6

    .line 1235
    goto/16 :goto_5

    .line 1129
    :cond_26
    const/4 v5, 0x0

    move v8, v5

    goto :goto_f

    .line 1159
    :cond_27
    if-eqz v7, :cond_2b

    .line 1160
    new-instance v7, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1161
    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1160
    invoke-direct {v7, v9, v5}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1166
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v5, v5, -0x9

    .line 1168
    if-nez v32, :cond_28

    .line 1173
    if-eqz v31, :cond_2a

    .line 1174
    or-int/lit8 v5, v5, 0x4

    .line 1180
    :cond_28
    :goto_11
    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    move-object v5, v7

    .line 1205
    :goto_12
    const/16 v7, 0x20

    .line 1204
    invoke-virtual {v5, v7}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1206
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 1209
    :cond_29
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 1210
    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1211
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v7

    iput v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1212
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1214
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v7

    if-nez v7, :cond_30

    .line 1215
    const-string/jumbo v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1176
    :cond_2a
    and-int/lit8 v5, v5, -0x3

    goto :goto_11

    .line 1182
    :cond_2b
    const-string/jumbo v5, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Widget restore pending id="

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/launcher3/model/LoaderCursor;->id:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1183
    const-string/jumbo v31, " appWidgetId="

    .line 1182
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1184
    const-string/jumbo v31, " status ="

    .line 1182
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1184
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    move/from16 v31, v0

    .line 1182
    move/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    new-instance v7, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v7, v9, v11}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1187
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 1188
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1190
    const/16 v9, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 1202
    :cond_2c
    :goto_13
    if-nez v5, :cond_2f

    const/4 v5, 0x0

    .line 1201
    :goto_14
    iput v5, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    move-object v5, v7

    goto/16 :goto_12

    .line 1192
    :cond_2d
    if-eqz v5, :cond_2e

    .line 1194
    iget v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v7, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_13

    .line 1196
    :cond_2e
    if-nez v14, :cond_2c

    .line 1197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrestored widget removed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1202
    :cond_2f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_14

    .line 1220
    :cond_30
    if-nez v8, :cond_32

    .line 1222
    iget-object v7, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 1223
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1224
    iget v8, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v8, v9, :cond_32

    .line 1225
    :cond_31
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v8

    .line 1226
    const-string/jumbo v9, "appWidgetProvider"

    .line 1225
    invoke-virtual {v8, v9, v7}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v7

    .line 1228
    const-string/jumbo v8, "restored"

    .line 1229
    iget v9, v5, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1225
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 1233
    :cond_32
    sget-object v7, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_10

    .line 1242
    :cond_33
    :try_start_8
    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_34

    .line 1247
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v4}, Lcom/android/launcher3/model/BgDataModel;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v19

    .line 1248
    return-void

    .line 1252
    :cond_34
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->commitDeleted()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1256
    const-string/jumbo v5, "delete_empty_folders"

    .line 1254
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1257
    const-string/jumbo v6, "value"

    .line 1254
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1258
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1259
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1260
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 1261
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    goto :goto_15

    .line 1266
    :cond_35
    const-string/jumbo v5, "remove_ghost_widgets"

    .line 1265
    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 1271
    :cond_36
    invoke-static {v12}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 1272
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 1273
    sget-object v5, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    .line 1274
    if-eqz v5, :cond_38

    iget v5, v5, Landroid/util/MutableInt;->value:I

    if-nez v5, :cond_37

    .line 1275
    :cond_38
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 1274
    if-eqz v5, :cond_37

    .line 1277
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    goto :goto_16

    .line 1282
    :cond_39
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/FolderInfo;

    .line 1283
    iget-object v5, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1284
    const/4 v5, 0x0

    .line 1285
    iget-object v4, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 1286
    iget-boolean v8, v4, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v8, :cond_3b

    .line 1287
    iget v8, v4, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v8, :cond_3b

    .line 1288
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v8}, Lcom/android/launcher3/LauncherModel;->-get3(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/IconCache;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 1290
    :cond_3b
    add-int/lit8 v4, v5, 0x1

    .line 1291
    sget v5, Lcom/android/launcher3/folder/FolderIcon;->NUM_ITEMS_IN_PREVIEW:I

    if-ge v4, v5, :cond_3a

    move v5, v4

    goto :goto_17

    .line 1297
    :cond_3c
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/model/LoaderCursor;->commitRestoredItems()V

    .line 1298
    if-nez v17, :cond_3d

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3d

    .line 1300
    new-instance v4, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    .line 1301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1300
    move-object/from16 v0, v18

    invoke-direct {v4, v5, v6, v0}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherModel;Landroid/content/Context;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 1302
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1304
    sget-object v6, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 1303
    const/4 v7, 0x0

    .line 1299
    invoke-virtual {v12, v4, v5, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1308
    :cond_3d
    new-instance v5, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1309
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3e
    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 1310
    iget-wide v8, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 1311
    iget-wide v10, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v4, v10, v14

    if-nez v4, :cond_3e

    .line 1312
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1311
    if-eqz v4, :cond_3e

    .line 1313
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1318
    :cond_3f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_40

    .line 1319
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1320
    sget-object v4, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v12, v4}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_40
    monitor-exit v19

    .line 1326
    return-void

    :cond_41
    move-object v8, v9

    move/from16 v34, v7

    move-object v7, v5

    move/from16 v5, v34

    goto/16 :goto_c

    :cond_42
    move v7, v8

    goto/16 :goto_e

    :cond_43
    move v5, v7

    goto/16 :goto_3

    .line 912
    nop

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

.method private onlyBindAllApps()V
    .locals 3

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 1648
    if-nez v0, :cond_0

    .line 1650
    const-string/jumbo v0, "Launcher.Model"

    const-string/jumbo v1, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void

    .line 1657
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1658
    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTask$11;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;Lcom/android/launcher3/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1671
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->-wrap1(Lcom/android/launcher3/LauncherModel;Ljava/lang/Runnable;)V

    .line 1672
    return-void
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 1396
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 1397
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v0, v2

    .line 1398
    new-instance v2, Lcom/android/launcher3/LauncherModel$LoaderTask$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;II)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1428
    return-void
.end method

.method private updateIconCache()V
    .locals 5

    .prologue
    .line 1627
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1628
    sget-object v2, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    .line 1629
    :try_start_0
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

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

    .line 1630
    instance-of v4, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 1631
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 1632
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1633
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1635
    :cond_1
    :try_start_1
    instance-of v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v4, :cond_0

    .line 1636
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1637
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1638
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit v2

    .line 1643
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get3(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/IconCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 1644
    return-void
.end method

.method private verifyNotStopped()V
    .locals 2

    .prologue
    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 686
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string/jumbo v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    .line 689
    return-void
.end method

.method private waitForIdle()V
    .locals 2

    .prologue
    .line 613
    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v1, Lcom/android/launcher3/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 628
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 632
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 643
    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 693
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 694
    return-void

    .line 696
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 702
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 703
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 705
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 707
    iget v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mPageToBindFirst:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 711
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 712
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 716
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadAllApps()V

    .line 718
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 720
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->updateIconCache()V

    .line 724
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 725
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 729
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->loadDeepShortcuts()V

    .line 731
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 733
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->bindDeepShortcuts()V

    .line 737
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->waitForIdle()V

    .line 738
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->verifyNotStopped()V

    .line 742
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v1

    const/4 v2, 0x0

    .line 743
    const/4 v3, 0x0

    .line 742
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/LauncherModel$Callbacks;ZLcom/android/launcher3/util/PackageUserKey;)V

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 747
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherModel;->-set1(Lcom/android/launcher3/LauncherModel;Z)Z

    .line 748
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 755
    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_5
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-ne v0, p0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_0
    monitor-exit v1

    .line 765
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 745
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 750
    :catch_0
    move-exception v0

    .line 755
    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_7
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-ne v0, p0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 757
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 752
    :catchall_4
    move-exception v0

    .line 755
    iput-object v4, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 757
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_8
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    if-ne v2, p0, :cond_3

    .line 760
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/launcher3/LauncherModel;->mLoaderTask:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 762
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v1

    .line 752
    throw v0

    .line 757
    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method runBindSynchronousPage(I)V
    .locals 3

    .prologue
    .line 646
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->-get5(Lcom/android/launcher3/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mIsLoaderTaskRunning:Z

    if-eqz v0, :cond_2

    .line 660
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    .line 671
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DeferredHandler;->flush()V

    .line 675
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 678
    invoke-direct {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->onlyBindAllApps()V

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->bindDeepShortcuts()V

    .line 681
    return-void
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 768
    monitor-enter p0

    .line 769
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z

    .line 770
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel$LoaderTask;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 772
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher3/LauncherModel$Callbacks;)Lcom/android/launcher3/LauncherModel$Callbacks;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 784
    return-object v3

    .line 787
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 788
    return-object v3

    .line 791
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherModel$Callbacks;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    if-eq v0, p1, :cond_2

    monitor-exit v1

    .line 793
    return-object v3

    .line 795
    :cond_2
    if-nez v0, :cond_3

    .line 796
    :try_start_3
    const-string/jumbo v0, "Launcher.Model"

    const-string/jumbo v2, "no mCallbacks"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 797
    return-object v3

    :cond_3
    monitor-exit v1

    .line 800
    return-object v0

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
