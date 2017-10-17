.class public Lcom/android/launcher3/model/PackageInstallStateChangedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 44
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 48
    iget-object v2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v2, v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v2, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    monitor-enter p3

    .line 55
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 56
    :goto_0
    invoke-virtual {p3}, Lcom/android/launcher3/AllAppsList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 57
    invoke-virtual {p3, v4}, Lcom/android/launcher3/AllAppsList;->get(I)Lcom/android/launcher3/AppInfo;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/android/launcher3/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v6, v6, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 60
    instance-of v1, v2, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v1, :cond_c

    .line 61
    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/PromiseAppInfo;

    move-object v1, v0

    .line 62
    iget-object v6, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v6, v6, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v2, v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v2, v1, Lcom/android/launcher3/PromiseAppInfo;->level:I

    .line 56
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 59
    goto :goto_1

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-ne v1, v8, :cond_c

    .line 66
    invoke-virtual {p3, v2}, Lcom/android/launcher3/AllAppsList;->removePromiseApp(Lcom/android/launcher3/AppInfo;)V

    .line 67
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_1

    .line 72
    :cond_3
    if-eqz v3, :cond_4

    .line 74
    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Lcom/android/launcher3/PromiseAppInfo;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 81
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 82
    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;

    invoke-direct {v1, p0, v5}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$2;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_5
    monitor-exit p3

    .line 91
    monitor-enter p2

    .line 92
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 93
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 94
    instance-of v4, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_6

    .line 95
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 96
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 97
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 98
    iget-object v5, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 99
    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v1, v4}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 100
    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-ne v4, v8, :cond_7

    .line 102
    iget v4, v1, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v4, v4, -0x5

    iput v4, v1, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 104
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit p2

    throw v1

    .line 53
    :catchall_1
    move-exception v1

    monitor-exit p3

    throw v1

    .line 109
    :cond_8
    :try_start_2
    iget-object v1, p2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 110
    iget-object v4, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v5, v5, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 111
    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v4, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 112
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 117
    new-instance v1, Lcom/android/launcher3/model/PackageInstallStateChangedTask$3;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$3;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    monitor-exit p2

    .line 125
    return-void

    :cond_c
    move-object v1, v3

    goto/16 :goto_1
.end method
