.class Lcom/google/android/apps/nexuslauncher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# instance fields
.field private final fK:Landroid/content/BroadcastReceiver$PendingResult;

.field private mAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->fK:Landroid/content/BroadcastReceiver$PendingResult;

    .line 51
    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 57
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/c;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 58
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/c;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 59
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/c;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 60
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string/jumbo v0, "SUWFinishReceiver"

    const-string/jumbo v1, "Workspace not loaded, loading now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/c;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 67
    new-instance v0, Lcom/android/launcher3/model/LoaderResults;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/c;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/c;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/model/LoaderResults;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V

    .line 66
    invoke-virtual {v6, v0}, Lcom/android/launcher3/LauncherModel;->startLoaderForResults(Lcom/android/launcher3/model/LoaderResults;)V

    .line 69
    :cond_0
    const-string/jumbo v0, "SUWFinishReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Preload completed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/c;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->fK:Landroid/content/BroadcastReceiver$PendingResult;

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, -0x1

    .line 70
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->fK:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 73
    return-void
.end method
