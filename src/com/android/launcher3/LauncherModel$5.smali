.class final Lcom/android/launcher3/LauncherModel$5;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$sessionInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$5;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$5;->val$sessionInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 531
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$5;->val$sessionInfo:Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {p3, v0, v1}, Lcom/android/launcher3/AllAppsList;->addPromiseApp(Landroid/content/Context;Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 535
    iget-object v0, p3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    iget-object v1, p3, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 538
    new-instance v1, Lcom/android/launcher3/LauncherModel$5$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherModel$5$1;-><init>(Lcom/android/launcher3/LauncherModel$5;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel$5;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 545
    :cond_0
    return-void
.end method
