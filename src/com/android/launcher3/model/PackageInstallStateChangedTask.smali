.class public Lcom/android/launcher3/model/PackageInstallStateChangedTask;
.super Lcom/android/launcher3/model/ExtendedModelTask;
.source "SourceFile"


# instance fields
.field private final mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/launcher3/model/ExtendedModelTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 41
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 50
    :cond_0
    monitor-enter p2

    .line 51
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 53
    instance-of v3, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 54
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 55
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 57
    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v3, v3, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    .line 60
    iget-object v3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v3, v3, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 62
    iget v3, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v0, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 64
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p2

    throw v0

    .line 69
    :cond_3
    :try_start_1
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 70
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget-object v4, v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 71
    iget-object v3, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->mInstallInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    iget v3, v3, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    iput v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 77
    new-instance v0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask$1;-><init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p2

    .line 85
    return-void
.end method
