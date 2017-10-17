.class public Lcom/android/launcher3/model/CacheDataUpdatedTask;
.super Lcom/android/launcher3/model/ExtendedModelTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:Ljava/util/HashSet;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/launcher3/model/ExtendedModelTask;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    .line 49
    iput-object p2, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    .line 50
    iput-object p3, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    .line 51
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 7

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    monitor-enter p2

    .line 61
    :try_start_0
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 62
    instance-of v5, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v6, v0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 64
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 65
    iget v6, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v6, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->isValidShortcut(Lcom/android/launcher3/ShortcutInfo;)Z

    move-result v6

    .line 65
    if-eqz v6, :cond_0

    .line 66
    if-eqz v5, :cond_0

    .line 67
    iget-object v6, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 68
    iget-boolean v5, v0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    invoke-virtual {v1, v0, v5}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 69
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p2

    throw v0

    .line 73
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mPackages:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v1, v2}, Lcom/android/launcher3/AllAppsList;->updateIconsAndLabels(Ljava/util/HashSet;Landroid/os/UserHandle;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Lcom/android/launcher3/model/CacheDataUpdatedTask$1;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/model/CacheDataUpdatedTask$1;-><init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 85
    :cond_2
    return-void
.end method

.method public isValidShortcut(Lcom/android/launcher3/ShortcutInfo;)Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/launcher3/model/CacheDataUpdatedTask;->mOp:I

    packed-switch v0, :pswitch_data_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 90
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v0

    return v0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
