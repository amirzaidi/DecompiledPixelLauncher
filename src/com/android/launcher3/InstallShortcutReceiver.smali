.class public Lcom/android/launcher3/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static mUseInstallQueue:Z

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->createShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)V
    .locals 4

    .prologue
    .line 89
    sget-object v1, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->encodeToString()Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    const-string/jumbo v0, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "apps_to_install"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 98
    return-void

    .line 93
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static convertToLauncherActivityIfPossible(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 3

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLauncherActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    return-object p0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    return-object p0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 582
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 584
    if-nez v0, :cond_2

    .line 585
    return-object p0

    .line 588
    :cond_2
    new-instance v1, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    return-object v1
.end method

.method private static createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    const-class v1, Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 191
    const-class v1, Landroid/content/Intent$ShortcutIconResource;

    .line 190
    invoke-static {p1, v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 189
    if-nez v0, :cond_0

    .line 192
    const-string/jumbo v0, "android.intent.extra.shortcut.ICON"

    const-class v1, Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 189
    if-eqz v0, :cond_1

    .line 195
    :cond_0
    return-object v2

    .line 198
    :cond_1
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 199
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 198
    invoke-direct {v0, p1, v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V

    .line 200
    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 202
    :cond_2
    return-object v2

    .line 205
    :cond_3
    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method private static createShortcutInfo(Landroid/content/Intent;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/ShortcutInfo;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 628
    const-string/jumbo v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 629
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 632
    if-nez v0, :cond_0

    .line 634
    const-string/jumbo v0, "InstallShortcutReceiver"

    const-string/jumbo v1, "Can\'t construct ShorcutInfo with null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-object v3

    .line 638
    :cond_0
    new-instance v3, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v3}, Lcom/android/launcher3/ShortcutInfo;-><init>()V

    .line 642
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 644
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 645
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 653
    :cond_1
    :goto_0
    iget-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 654
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    iget-object v4, v3, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 657
    :cond_2
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 658
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v1

    .line 659
    iget-object v2, v3, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, v3, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 658
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 660
    iput-object v0, v3, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 661
    return-object v3

    .line 647
    :cond_3
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 648
    instance-of v4, v1, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v4, :cond_1

    .line 649
    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 650
    iget-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 496
    :try_start_0
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/InstallShortcutReceiver$Decoder;)V

    .line 497
    const-string/jumbo v2, "isAppShortcut"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 498
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    .line 499
    iget-object v3, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 498
    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    .line 500
    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, v2, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    const-string/jumbo v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception reading shortcut to add: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-object v1

    .line 501
    :cond_1
    :try_start_1
    const-string/jumbo v2, "isDeepShortcut"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    .line 504
    iget-object v3, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 505
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 506
    const-string/jumbo v6, "shortcut_id"

    .line 505
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 507
    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    .line 503
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 508
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    return-object v1

    .line 511
    :cond_2
    new-instance v2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-direct {v2, v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    return-object v2

    .line 513
    :cond_3
    const-string/jumbo v2, "isAppWidget"

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 514
    iget-object v2, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    .line 515
    const-string/jumbo v3, "appWidgetId"

    const/4 v4, 0x0

    .line 514
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 516
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 518
    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    .line 519
    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 518
    if-eqz v0, :cond_5

    .line 520
    :cond_4
    return-object v1

    .line 522
    :cond_5
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, v3, v2, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    return-object v0

    .line 525
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 526
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    iget-object v4, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v3, "icon"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 530
    const-string/jumbo v4, "iconResource"

    invoke-virtual {v0, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 531
    const-string/jumbo v5, "iconResourcePackage"

    invoke-virtual {v0, v5}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 532
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    .line 533
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 534
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 535
    const-string/jumbo v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 544
    :cond_7
    :goto_1
    new-instance v3, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-object v3

    .line 536
    :cond_8
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 538
    new-instance v3, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v3}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    .line 539
    iput-object v4, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 540
    iput-object v5, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 541
    const-string/jumbo v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 262
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 259
    return-void
.end method

.method static ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 278
    if-nez p2, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 287
    :cond_0
    return-object p2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string/jumbo v0, ""

    return-object v0
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 266
    invoke-static {p0}, Lcom/android/launcher3/InstallShortcutReceiver;->getAndClearInstallQueue(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    .line 269
    new-instance v2, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 268
    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Lcom/android/launcher3/util/Provider;)V

    .line 271
    :cond_0
    return-void
.end method

.method public static fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-static {p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v1

    .line 210
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    goto :goto_0
.end method

.method private static getAndClearInstallQueue(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 135
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const-string/jumbo v0, "apps_to_install"

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    monitor-exit v2

    .line 141
    return-object v3

    .line 143
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 149
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "apps_to_install"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 150
    return-object v3
.end method

.method private static getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    .line 491
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 228
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "apps_to_install"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    return-object v1

    .line 233
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    :try_start_0
    new-instance v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, v4}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/InstallShortcutReceiver$Decoder;)V

    .line 236
    const-string/jumbo v0, "isDeepShortcut"

    invoke-virtual {v3, v0}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    iget-object v3, v3, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-static {v0, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string/jumbo v3, "InstallShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading shortcut to add: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_2
    return-object v1
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static queueActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method private static queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 251
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->addToInstallQueue(Landroid/content/SharedPreferences;Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;)V

    .line 252
    sget-boolean v1, Lcom/android/launcher3/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1}, Lcom/android/launcher3/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    .line 255
    :cond_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queueShortcut(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public static queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    invoke-static {v0, p2}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 219
    return-void
.end method

.method public static removeFromInstallQueue(Landroid/content/Context;Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 8

    .prologue
    .line 102
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/android/launcher3/InstallShortcutReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    const-string/jumbo v0, "apps_to_install"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isEmpty(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    .line 113
    return-void

    .line 115
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 116
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 117
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    new-instance v5, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;

    const/4 v6, 0x0

    invoke-direct {v5, v0, p0, v6}, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/launcher3/InstallShortcutReceiver$Decoder;)V

    .line 121
    iget-object v0, v5, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->launcherIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, v5, Lcom/android/launcher3/InstallShortcutReceiver$Decoder;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 123
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    :try_start_3
    const-string/jumbo v5, "InstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception reading shortcut to add: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 130
    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "apps_to_install"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    .line 132
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    const-string/jumbo v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher3/InstallShortcutReceiver;->createPendingInfo(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->isLauncherActivity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v2, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 166
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    const-string/jumbo v1, "InstallShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring malicious intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 173
    :cond_1
    invoke-static {v0, p1}, Lcom/android/launcher3/InstallShortcutReceiver;->queuePendingShortcutInfo(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Landroid/content/Context;)V

    .line 175
    :cond_2
    return-void
.end method
