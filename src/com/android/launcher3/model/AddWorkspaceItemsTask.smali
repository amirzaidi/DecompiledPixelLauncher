.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/ExtendedModelTask;
.source "SourceFile"


# instance fields
.field private final mAppsProvider:Lcom/android/launcher3/util/Provider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/Provider;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/launcher3/model/ExtendedModelTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mAppsProvider:Lcom/android/launcher3/util/Provider;

    .line 54
    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 259
    if-eqz p2, :cond_0

    .line 260
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 261
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v1, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 19

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mAppsProvider:Lcom/android/launcher3/util/Provider;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 59
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 64
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 71
    monitor-enter p2

    .line 72
    :try_start_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    move-object v9, v0

    .line 73
    iget v2, v9, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v2, :cond_2

    .line 74
    iget v2, v9, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 76
    :cond_2
    invoke-virtual {v9}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v9, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_3
    iget v7, v9, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v8, v9, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 82
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v3

    .line 84
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 85
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    .line 88
    instance-of v3, v9, Lcom/android/launcher3/ShortcutInfo;

    if-nez v3, :cond_4

    instance-of v3, v9, Lcom/android/launcher3/FolderInfo;

    if-nez v3, :cond_4

    .line 89
    instance-of v3, v9, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 88
    if-eqz v3, :cond_5

    .line 98
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v8

    .line 99
    const-wide/16 v10, -0x64

    .line 100
    const/4 v3, 0x0

    aget v14, v2, v3

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 98
    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 103
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    .line 91
    :cond_5
    :try_start_1
    instance-of v3, v9, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_6

    .line 92
    check-cast v9, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v9

    goto :goto_1

    .line 94
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected info type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p2

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->updateScreens(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 110
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 111
    new-instance v2, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1, v6}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 132
    :cond_8
    return-void
.end method

.method protected findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .locals 14

    .prologue
    .line 191
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    .line 194
    monitor-enter p2

    .line 195
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

    .line 196
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 197
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v12, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 198
    if-nez v3, :cond_1

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-wide v6, v2, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v12, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 202
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    :cond_2
    monitor-exit p2

    .line 208
    const-wide/16 v2, 0x0

    .line 209
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 210
    const/4 v8, 0x0

    .line 212
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 215
    :goto_1
    if-ge v4, v13, :cond_3

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 218
    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 217
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v8

    move-wide v2, v10

    .line 221
    :cond_3
    if-nez v8, :cond_8

    .line 223
    const/4 v4, 0x1

    move v9, v4

    :goto_2
    if-ge v9, v13, :cond_8

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 226
    invoke-virtual {v12, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 225
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    const/4 v2, 0x1

    move v4, v2

    move-wide v2, v10

    .line 234
    :goto_3
    if-nez v4, :cond_7

    .line 236
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    const-string/jumbo v3, "generate_new_screen_id"

    .line 236
    invoke-static {v2, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 238
    const-string/jumbo v3, "value"

    .line 236
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 241
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {v12, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, p0

    move-object v3, p1

    move/from16 v6, p5

    move/from16 v7, p6

    .line 245
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v2

    if-nez v2, :cond_6

    .line 247
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can\'t find space to add the item"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 223
    :cond_5
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-wide v2, v10

    goto :goto_2

    :cond_6
    move-wide v2, v8

    .line 250
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
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 144
    if-nez p2, :cond_0

    .line 146
    return v8

    .line 148
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v4, v2

    .line 164
    :goto_0
    monitor-enter p1

    .line 165
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 166
    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_1

    .line 167
    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v2, v0

    .line 168
    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v2, v2, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    monitor-exit p1

    .line 173
    return v8

    .line 156
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v4, v2

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {p2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v4, v2

    goto :goto_0

    :cond_5
    monitor-exit p1

    .line 179
    return v7

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method protected updateScreens(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 135
    invoke-static {p1, p2}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 136
    return-void
.end method
