.class public Lcom/android/launcher3/compat/LauncherAppsCompatVL;
.super Lcom/android/launcher3/compat/LauncherAppsCompat;
.source "SourceFile"


# instance fields
.field private mCallbacks:Ljava/util/Map;

.field protected final mContext:Landroid/content/Context;

.field protected final mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 53
    return-void
.end method


# virtual methods
.method public addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;

    invoke-direct {v0, p1}, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;-><init>(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 110
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p1, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 83
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 86
    if-eqz v1, :cond_3

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    .line 88
    :cond_2
    return-object v0

    .line 87
    :cond_3
    iget-boolean v1, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v1, v1, 0x1

    .line 86
    if-nez v1, :cond_2

    .line 90
    return-object v2

    .line 91
    :catch_0
    move-exception v1

    .line 93
    return-object v0
.end method

.method public getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 6

    .prologue
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 185
    return-object v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 190
    if-eqz p1, :cond_2

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 191
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    :cond_2
    new-instance v4, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v4, v0, v2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVL;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_3
    return-object v1
.end method

.method public isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompatVL$WrappedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v0}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 121
    :cond_0
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method
