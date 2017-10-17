.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mAppsProvider:Lcom/android/launcher3/util/Provider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/Provider;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mAppsProvider:Lcom/android/launcher3/util/Provider;

    .line 57
    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 310
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 20

    .prologue
    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mAppsProvider:Lcom/android/launcher3/util/Provider;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    return-void

    .line 65
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 67
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 75
    monitor-enter p2

    .line 77
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 79
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 80
    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v4, :cond_2

    .line 81
    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    .line 83
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v7, v3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    :cond_3
    iget v4, v3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v4, :cond_e

    .line 89
    instance-of v4, v3, Lcom/android/launcher3/AppInfo;

    if-eqz v4, :cond_d

    .line 90
    check-cast v3, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    .line 93
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v7, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v3, v3, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    .line 100
    if-nez v3, :cond_c

    .line 101
    new-instance v3, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v7, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v7, v1}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/launcher3/model/BgDataModel;)V

    .line 102
    iget-object v7, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 105
    :goto_2
    move-object v0, v4

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v3, v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 104
    invoke-virtual {v7, v3, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->convertToWorkspaceItem(Lcom/android/launcher3/ShortcutInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/ItemInfo;

    move-result-object v4

    .line 108
    :cond_4
    :goto_3
    if-eqz v4, :cond_1

    .line 109
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    .line 113
    :cond_5
    :try_start_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    move-object v9, v0

    .line 116
    iget v7, v9, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, v9, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 115
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v3

    .line 117
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 118
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    .line 121
    instance-of v3, v9, Lcom/android/launcher3/ShortcutInfo;

    if-nez v3, :cond_6

    instance-of v3, v9, Lcom/android/launcher3/FolderInfo;

    if-nez v3, :cond_6

    .line 122
    instance-of v3, v9, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 121
    if-eqz v3, :cond_7

    .line 131
    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    .line 132
    const-wide/16 v10, -0x64

    .line 133
    const/4 v3, 0x0

    aget v14, v2, v3

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 131
    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 136
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 124
    :cond_7
    instance-of v3, v9, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_8

    .line 125
    check-cast v9, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v9

    goto :goto_5

    .line 127
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected info type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p2

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->updateScreens(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 143
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 144
    new-instance v2, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1, v6}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 166
    :cond_a
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->applyPendingState(Lcom/android/launcher3/model/ModelWriter;)V

    goto :goto_6

    .line 169
    :cond_b
    return-void

    :cond_c
    move-object v7, v3

    goto/16 :goto_2

    :cond_d
    move-object v4, v3

    goto/16 :goto_1

    :cond_e
    move-object v4, v3

    goto/16 :goto_3
.end method

.method protected findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .locals 14

    .prologue
    .line 240
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    .line 243
    monitor-enter p2

    .line 244
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 245
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 246
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v12, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 247
    if-nez v3, :cond_1

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v12, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 251
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    :cond_2
    monitor-exit p2

    .line 257
    const-wide/16 v2, 0x0

    .line 258
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 259
    const/4 v8, 0x0

    .line 261
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 263
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 264
    :goto_1
    if-ge v4, v13, :cond_3

    .line 265
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 267
    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 266
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v8

    move-wide v2, v10

    .line 270
    :cond_3
    if-nez v8, :cond_8

    .line 272
    const/4 v4, 0x1

    move v9, v4

    :goto_2
    if-ge v9, v13, :cond_8

    .line 273
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 275
    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 274
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    const/4 v2, 0x1

    move v4, v2

    move-wide v2, v10

    .line 283
    :goto_3
    if-nez v4, :cond_7

    .line 285
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "generate_new_screen_id"

    .line 285
    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 287
    const-string/jumbo v3, "value"

    .line 285
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 290
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v12, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 294
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 296
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 272
    :cond_5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v2, v10

    goto :goto_2

    :cond_6
    move-wide v2, v8

    .line 299
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2

    :cond_8
    move v4, v8

    goto :goto_3
.end method

.method protected shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 181
    if-nez p2, :cond_0

    .line 183
    return v10

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual {p2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    .line 202
    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v6

    .line 203
    monitor-enter p1

    .line 204
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 205
    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 206
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v2, v0

    .line 207
    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    new-instance v8, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    monitor-exit p1

    .line 212
    return v10

    .line 193
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v3

    move-object v3, v1

    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {p2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {p2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v5, v4

    move-object v4, v2

    goto :goto_0

    .line 216
    :cond_5
    if-eqz v6, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    .line 216
    if-eqz v1, :cond_1

    .line 218
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    .line 216
    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    if-eqz v5, :cond_1

    .line 221
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 216
    if-eqz v1, :cond_1

    monitor-exit p1

    .line 222
    return v10

    :cond_6
    monitor-exit p1

    .line 228
    return v9

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method protected updateScreens(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 172
    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 173
    return-void
.end method
