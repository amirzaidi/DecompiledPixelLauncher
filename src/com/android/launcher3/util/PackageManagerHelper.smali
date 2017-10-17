.class public Lcom/android/launcher3/util/PackageManagerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 51
    return-void
.end method

.method public static getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 147
    const-string/jumbo v2, "market"

    .line 146
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 148
    const-string/jumbo v2, "details"

    .line 146
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "id"

    .line 146
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v1, :cond_1

    .line 91
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 93
    :cond_1
    return v0
.end method


# virtual methods
.method public getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 104
    if-nez v2, :cond_0

    .line 106
    return v1

    .line 108
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    return v0

    .line 112
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    return v1

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    return v1

    .line 123
    :cond_3
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v3, :cond_4

    .line 125
    return v0

    .line 129
    :cond_4
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 131
    return v0

    .line 138
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x17

    if-lt v2, v3, :cond_6

    :goto_0
    return v0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    return v1
.end method

.method public isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 59
    const/16 v2, 0x2000

    .line 58
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isSafeMode()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    return v0
.end method
