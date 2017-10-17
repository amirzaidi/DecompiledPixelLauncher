.class public Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;
.super Lcom/android/launcher3/IconProvider;
.source "SourceFile"


# instance fields
.field private final fJ:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/IconProvider;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/apps/nexuslauncher/e;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/e;-><init>(Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->fJ:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->fJ:Landroid/content/BroadcastReceiver;

    .line 72
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    return-void
.end method

.method private em()I
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private en(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 129
    return v3

    .line 132
    :cond_0
    const-string/jumbo v0, "com.google.android.calendar.dynamic_icons_nexus_round"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 133
    if-nez v0, :cond_1

    .line 134
    return v3

    .line 138
    :cond_1
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->em()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 142
    return v3
.end method

.method private eo(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "com.google.android.calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->eo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 86
    const/16 v4, 0x2080

    .line 84
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 88
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    invoke-direct {p0, v2, v1}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->en(Landroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0

    .line 99
    :cond_2
    if-nez p3, :cond_0

    .line 100
    sget-object v1, Lcom/google/android/apps/nexuslauncher/b/c;->fk:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-class v2, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 99
    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/b/c;->dK(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->eo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->em()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    return-object v0
.end method
