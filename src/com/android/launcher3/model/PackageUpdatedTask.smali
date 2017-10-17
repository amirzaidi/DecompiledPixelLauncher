.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/model/PackageUpdatedTask;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 76
    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 78
    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 22

    .prologue
    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v9

    .line 86
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 87
    array-length v11, v10

    .line 88
    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 89
    new-instance v12, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v12, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v3

    .line 91
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_0

    move-object v4, v3

    move-object v5, v2

    .line 150
    :goto_0
    const/4 v2, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 154
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 158
    :cond_0
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 162
    :cond_1
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 163
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 164
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 167
    :cond_2
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    .line 169
    if-eqz v2, :cond_b

    .line 171
    new-instance v6, Lcom/android/launcher3/model/PackageUpdatedTask$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 177
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 178
    iget-object v7, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :pswitch_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_5

    .line 95
    aget-object v5, v10, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v5, v6}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 96
    sget-boolean v5, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PROMISE_APPS_IN_ALL_APPS:Z

    if-eqz v5, :cond_3

    .line 97
    aget-object v5, v10, v4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 99
    :cond_3
    aget-object v5, v10, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/launcher3/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 102
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 103
    aget-object v5, v10, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v5, v6}, Lcom/android/launcher3/SessionCommitReceiver;->queueAppIconAddition(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 93
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move-object v4, v3

    move-object v5, v2

    .line 106
    goto/16 :goto_0

    .line 109
    :pswitch_1
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v11, :cond_6

    .line 111
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v5}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 112
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v4, v5}, Lcom/android/launcher3/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 116
    :cond_6
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_2
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_7

    .line 120
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v5}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 125
    :cond_7
    :pswitch_3
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_8

    .line 127
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 130
    :cond_8
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 131
    goto/16 :goto_0

    .line 134
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    .line 135
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 138
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    move-object v4, v3

    move-object v5, v2

    .line 139
    goto/16 :goto_0

    .line 136
    :cond_9
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_6

    .line 141
    :pswitch_5
    invoke-static {v8}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 142
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 145
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v3

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    move-object v4, v3

    move-object v5, v2

    .line 147
    goto/16 :goto_0

    .line 143
    :cond_a
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_7

    .line 182
    :cond_b
    if-eqz v3, :cond_d

    .line 184
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 185
    iget-object v7, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 187
    :cond_c
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 196
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v2, :cond_1e

    .line 197
    :cond_e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 201
    monitor-enter p2

    .line 202
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_f
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 203
    instance-of v3, v2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 204
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 205
    const/4 v7, 0x0

    .line 206
    const/4 v6, 0x0

    .line 209
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_10

    .line 210
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 209
    if-eqz v3, :cond_10

    .line 211
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-static {v3, v8}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_10

    .line 213
    iput-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 214
    const/4 v7, 0x1

    .line 218
    :cond_10
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 219
    if-eqz v19, :cond_14

    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 220
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 224
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v20

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 225
    :cond_11
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 228
    invoke-static {v8}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v7

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 231
    new-instance v7, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v7, v8}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v20, v0

    .line 231
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v7

    .line 233
    if-eqz v7, :cond_12

    .line 234
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 235
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 238
    :cond_12
    if-eqz v7, :cond_13

    if-nez v3, :cond_17

    .line 239
    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    .line 201
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    :cond_14
    move v3, v6

    move v6, v7

    .line 266
    :goto_a
    if-nez v6, :cond_15

    if-eqz v3, :cond_16

    .line 267
    :cond_15
    :try_start_1
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_16
    if-eqz v6, :cond_f

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto/16 :goto_9

    .line 242
    :cond_17
    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 246
    :cond_18
    const/4 v7, 0x0

    iput v7, v2, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 247
    const/4 v7, 0x1

    .line 248
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    move/from16 v19, v0

    if-nez v19, :cond_19

    .line 249
    iget-boolean v0, v2, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 253
    :cond_19
    if-eqz v3, :cond_1a

    const-string/jumbo v3, "android.intent.action.MAIN"

    iget-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 254
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v3, :cond_1a

    .line 255
    iget-boolean v3, v2, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 256
    const/4 v7, 0x1

    .line 259
    :cond_1a
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 260
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 261
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v3, :cond_2b

    .line 262
    const/4 v3, 0x1

    move v6, v7

    goto :goto_a

    .line 272
    :cond_1b
    instance-of v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f

    .line 273
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 275
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    .line 274
    if-eqz v3, :cond_f

    .line 276
    iget-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 274
    if-eqz v3, :cond_f

    .line 277
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, -0xb

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 284
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 286
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    :cond_1c
    monitor-exit p2

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 294
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 298
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 299
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask$3;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 308
    :cond_1e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 309
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 310
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_25

    .line 312
    invoke-static {v3, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 331
    :cond_1f
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_21

    .line 332
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v5

    .line 332
    invoke-virtual {v2, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 335
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v5

    .line 334
    invoke-virtual {v2, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v3, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 341
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/launcher3/model/PackageUpdatedTask$4;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/HashSet;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 350
    :cond_21
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 352
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/android/launcher3/model/PackageUpdatedTask$5;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 362
    :cond_22
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v2, :cond_29

    .line 363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    .line 364
    :cond_23
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/PackageUpdatedTask$6;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 377
    :cond_24
    :goto_b
    return-void

    .line 316
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1f

    .line 318
    invoke-static {v8}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v5

    .line 319
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v11, :cond_27

    .line 320
    aget-object v6, v10, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 321
    aget-object v6, v10, v2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 326
    :cond_27
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 327
    iget-object v2, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 363
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_23

    .line 370
    :cond_29
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 372
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v11, :cond_2a

    .line 373
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v4, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 375
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    goto :goto_b

    :cond_2b
    move v3, v6

    move v6, v7

    goto/16 :goto_a

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
