.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/ExtendedModelTask;
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
    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/model/ExtendedModelTask;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    .line 79
    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 80
    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 22

    .prologue
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v9

    .line 88
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 89
    array-length v11, v10

    .line 90
    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 91
    new-instance v12, Ljava/util/HashSet;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v12, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v3

    .line 93
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_0

    move-object v4, v3

    move-object v5, v2

    .line 153
    :goto_0
    const/4 v2, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 157
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 161
    :cond_0
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 165
    :cond_1
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 166
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 172
    if-eqz v2, :cond_b

    .line 174
    new-instance v6, Lcom/android/launcher3/model/PackageUpdatedTask$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask$1;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 180
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 181
    iget-object v7, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :pswitch_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_3

    .line 97
    aget-object v5, v10, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v5, v6}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 98
    aget-object v5, v10, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/launcher3/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 101
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_4

    .line 103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processPackageAdd([Ljava/lang/String;)V

    :cond_4
    move-object v4, v3

    move-object v5, v2

    .line 105
    goto/16 :goto_0

    .line 108
    :pswitch_1
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v11, :cond_5

    .line 110
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v5}, Lcom/android/launcher3/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 111
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v4, v5}, Lcom/android/launcher3/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 115
    :cond_5
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 116
    goto/16 :goto_0

    .line 118
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v2}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->get(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ManagedProfileHeuristic;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic;->processPackageRemoved([Ljava/lang/String;)V

    .line 122
    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_7

    .line 123
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v5}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 128
    :cond_7
    :pswitch_3
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_8

    .line 130
    aget-object v4, v10, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v4

    aget-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/WidgetPreviewLoader;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    :cond_8
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    move-object v4, v3

    move-object v5, v2

    .line 134
    goto/16 :goto_0

    .line 137
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_9

    .line 138
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 141
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    move-object v4, v3

    move-object v5, v2

    .line 142
    goto/16 :goto_0

    .line 139
    :cond_9
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_6

    .line 144
    :pswitch_5
    invoke-static {v8}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 145
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    .line 148
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v3

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/AllAppsList;->updateDisabledFlags(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/util/FlagOp;)V

    move-object v4, v3

    move-object v5, v2

    .line 150
    goto/16 :goto_0

    .line 146
    :cond_a
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    goto :goto_7

    .line 185
    :cond_b
    if-eqz v3, :cond_d

    .line 187
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 188
    iget-object v7, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 190
    :cond_c
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/model/PackageUpdatedTask$2;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 199
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    sget-object v2, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v5, v2, :cond_1d

    .line 200
    :cond_e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 204
    monitor-enter p2

    .line 205
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_f
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 206
    instance-of v3, v2, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 207
    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    .line 208
    const/4 v7, 0x0

    .line 209
    const/4 v6, 0x0

    .line 212
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_10

    .line 213
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 212
    if-eqz v3, :cond_10

    .line 214
    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-static {v3, v8}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 215
    if-eqz v3, :cond_10

    .line 216
    iput-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 217
    const/4 v7, 0x1

    .line 221
    :cond_10
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 222
    if-eqz v19, :cond_13

    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 223
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 225
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 226
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 228
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 230
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v20

    .line 231
    const-string/jumbo v21, "android.intent.category.LAUNCHER"

    .line 230
    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    .line 232
    const/high16 v21, 0x10000

    .line 229
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 233
    if-nez v20, :cond_17

    .line 236
    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 235
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 237
    if-eqz v7, :cond_11

    .line 238
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 239
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 242
    :cond_11
    if-eqz v7, :cond_12

    if-nez v3, :cond_16

    .line 243
    :cond_12
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    .line 204
    :catchall_0
    move-exception v2

    monitor-exit p2

    throw v2

    :cond_13
    move v3, v6

    move v6, v7

    .line 270
    :goto_a
    if-nez v6, :cond_14

    if-eqz v3, :cond_15

    .line 271
    :cond_14
    :try_start_1
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_15
    if-eqz v6, :cond_f

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    goto/16 :goto_9

    .line 246
    :cond_16
    iput-object v7, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 250
    :cond_17
    const/4 v7, 0x0

    iput v7, v2, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 251
    const/4 v7, 0x1

    .line 252
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    move/from16 v19, v0

    if-nez v19, :cond_18

    .line 253
    iget-boolean v0, v2, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 257
    :cond_18
    if-eqz v3, :cond_19

    const-string/jumbo v3, "android.intent.action.MAIN"

    iget-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 258
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v3, :cond_19

    .line 259
    iget-boolean v3, v2, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 260
    const/4 v7, 0x1

    .line 263
    :cond_19
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 264
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    .line 265
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->isDisabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v3, :cond_29

    .line 266
    const/4 v3, 0x1

    move v6, v7

    goto :goto_a

    .line 276
    :cond_1a
    instance-of v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f

    .line 277
    check-cast v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v6, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 279
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    .line 278
    if-eqz v3, :cond_f

    .line 280
    iget-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 278
    if-eqz v3, :cond_f

    .line 281
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v3, v3, -0xb

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 288
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 290
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    :cond_1b
    monitor-exit p2

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 298
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 302
    :cond_1c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 303
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/model/PackageUpdatedTask$3;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 312
    :cond_1d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 313
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_24

    .line 316
    invoke-static {v3, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 335
    :cond_1e
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_20

    .line 336
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v3, v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v5

    .line 336
    invoke-virtual {v2, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/PackageUpdatedTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v4, v5}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object v5

    .line 338
    invoke-virtual {v2, v5}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v8, v3, v2}, Lcom/android/launcher3/InstallShortcutReceiver;->removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    .line 345
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/android/launcher3/model/PackageUpdatedTask$4;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/HashSet;Ljava/util/HashSet;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 354
    :cond_20
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 356
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/android/launcher3/model/PackageUpdatedTask$5;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 366
    :cond_21
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v2, :cond_28

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    .line 368
    :cond_22
    new-instance v2, Lcom/android/launcher3/model/PackageUpdatedTask$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/PackageUpdatedTask$6;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/PackageUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 383
    :cond_23
    return-void

    .line 320
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1e

    .line 322
    invoke-static {v8}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v5

    .line 323
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v11, :cond_26

    .line 324
    aget-object v6, v10, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 325
    aget-object v6, v10, v2

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 330
    :cond_26
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppInfo;

    .line 331
    iget-object v2, v2, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 367
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    .line 374
    :cond_28
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 376
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v11, :cond_23

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v4

    .line 380
    new-instance v5, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v6, v10, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 379
    const/4 v6, 0x0

    .line 378
    invoke-virtual {v3, v4, v6, v5}, Lcom/android/launcher3/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/android/launcher3/LauncherModel$Callbacks;ZLcom/android/launcher3/util/PackageUserKey;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_29
    move v3, v6

    move v6, v7

    goto/16 :goto_a

    .line 93
    nop

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
