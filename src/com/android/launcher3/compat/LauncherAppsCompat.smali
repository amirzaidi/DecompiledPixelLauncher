.class public abstract Lcom/android/launcher3/compat/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private static sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static createShortcutInfoFromPinItemRequest(Landroid/content/Context;Lcom/android/launcher3/compat/PinItemRequestCompat;J)Lcom/android/launcher3/ShortcutInfo;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->isValid()Z

    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->accept()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    return-object v2

    .line 119
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/LooperExecuter;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecuter;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/compat/LauncherAppsCompat$1;

    invoke-direct {v1, p2, p3, p1}, Lcom/android/launcher3/compat/LauncherAppsCompat$1;-><init>(JLcom/android/launcher3/compat/PinItemRequestCompat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecuter;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_1
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 135
    new-instance v1, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 138
    const/4 v2, 0x0

    .line 137
    invoke-static {v0, p0, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 139
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/LauncherModel;->updateAndBindShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    .line 141
    return-object v1

    .line 143
    :cond_2
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatVO;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 69
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/launcher3/compat/LauncherAppsCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/LauncherAppsCompat;->sInstance:Lcom/android/launcher3/compat/LauncherAppsCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract addOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getCustomShortcutActivityList(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
.end method

.method public abstract isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
.end method

.method public abstract isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract removeOnAppsChangedCallback(Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V
.end method

.method public abstract resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
.end method

.method public showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public abstract showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method

.method public abstract startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
.end method
