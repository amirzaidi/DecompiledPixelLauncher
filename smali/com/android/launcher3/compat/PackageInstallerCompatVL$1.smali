.class final Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/PackageInstallerCompatVL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    .line 85
    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    .line 1
    return-void
.end method

.method private pushSessionDisplayToLauncher(I)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->addSessionInfoToCache(Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/os/UserHandle;)V

    .line 127
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->updateSessionDisplayInfo(Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 121
    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionDisplayToLauncher(I)V

    .line 90
    return-void
.end method

.method public onFinished(IZ)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v1, v1, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mActiveSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    new-instance v4, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    .line 101
    if-eqz p2, :cond_1

    move v1, v2

    .line 100
    :goto_0
    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 103
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onProgressChanged(IF)V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    iget-object v0, v0, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/android/launcher3/compat/PackageInstallerCompatVL;

    new-instance v2, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 110
    const/4 v4, 0x1

    .line 109
    invoke-direct {v2, v3, v4, v0}, Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/PackageInstallerCompatVL;->sendUpdate(Lcom/android/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    .line 113
    :cond_0
    return-void
.end method
