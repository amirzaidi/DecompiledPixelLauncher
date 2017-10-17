.class public Lcom/android/launcher3/compat/LauncherAppsCompatVO;
.super Lcom/android/launcher3/compat/LauncherAppsCompatVL;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 54
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    return-object v1
.end method

.method public getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 68
    :try_start_0
    const-class v1, Landroid/content/pm/LauncherApps;

    const-string/jumbo v4, "getShortcutConfigActivityList"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 69
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/UserHandle;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 68
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    if-nez p1, :cond_4

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 80
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 81
    invoke-virtual {v3, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 83
    iget-object v7, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 85
    if-nez v6, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 86
    const/16 v9, 0x1a

    .line 85
    if-lt v8, v9, :cond_1

    .line 87
    :cond_2
    new-instance v8, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v8, v0}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, "LauncherAppsCompatVO"

    const-string/jumbo v3, "Error calling new API"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_3
    return-object v2

    .line 76
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_0
.end method
