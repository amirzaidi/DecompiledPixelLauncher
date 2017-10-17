.class public Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    return-void
.end method

.method private dk(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 59
    :try_start_0
    invoke-static {p1, p0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->dl(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v0

    .line 60
    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/d;

    invoke-direct {v2, v0}, Lcom/google/android/apps/nexuslauncher/search/d;-><init>(Lcom/android/launcher3/util/ComponentKey;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    const v0, 0x7f0c0023

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 65
    return-void

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    :goto_0
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    const/4 v1, 0x2

    .line 81
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 82
    instance-of v4, v0, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_1

    .line 83
    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/Workspace$State;->containerType:I

    move v1, v0

    .line 86
    :cond_1
    const-string/jumbo v0, "predictionRank"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v4, Lcom/google/android/apps/nexuslauncher/search/e;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, -0x1

    .line 87
    :goto_1
    invoke-direct {v4, p0, v0}, Lcom/google/android/apps/nexuslauncher/search/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/search/e;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->bn(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)V

    .line 95
    :goto_2
    return-void

    .line 72
    :cond_2
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    .line 73
    iget-object v3, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    .line 72
    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const v0, 0x7f0c0021

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 88
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->dk(Landroid/net/Uri;)V

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->finish()V

    .line 55
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {p0, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/search/AppLaunchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
