.class public abstract Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mUiHandler:Lcom/android/launcher3/DeferredHandler;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;)Lcom/android/launcher3/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    return-object v0
.end method

.method init(Lcom/android/launcher3/LauncherModel;)V
    .locals 1

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 1849
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mHandler:Lcom/android/launcher3/DeferredHandler;

    iput-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mUiHandler:Lcom/android/launcher3/DeferredHandler;

    .line 1850
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherModel;->mHasLoaderCompletedOnce:Z

    if-nez v0, :cond_0

    .line 1856
    return-void

    .line 1858
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mApp:Lcom/android/launcher3/LauncherAppState;

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->-get0(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/AllAppsList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V

    .line 1859
    return-void
.end method

.method public final scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 3

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 1872
    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;->mUiHandler:Lcom/android/launcher3/DeferredHandler;

    new-instance v2, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask$1;-><init>(Lcom/android/launcher3/LauncherModel$BaseModelUpdateTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1880
    return-void
.end method
