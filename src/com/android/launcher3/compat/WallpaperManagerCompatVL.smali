.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVL;
.super Lcom/android/launcher3/compat/WallpaperManagerCompat;
.source "SourceFile"


# static fields
.field private static final ACTION_EXTRACTION_COMPLETE:Ljava/lang/String; = "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

.field private static final KEY_COLORS:Ljava/lang/String; = "wallpaper_parsed_colors"

.field private static final TAG:Ljava/lang/String; = "WMCompatVL"

.field private static final VERSION_PREFIX:Ljava/lang/String; = "1,"


# instance fields
.field private mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->getWallpaperId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->handleResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->reloadColors()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_parsed_colors"

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    invoke-static {v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->parseValue(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 77
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move v0, v1

    .line 81
    :goto_0
    if-eq v0, v3, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->getWallpaperId(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->reloadColors()V

    .line 84
    :cond_1
    new-instance v0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$1;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 97
    const/16 v4, 0x1000

    .line 95
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    :try_start_1
    aget-object v2, v3, v1

    .line 98
    iget v5, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 99
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    :goto_2
    const-string/jumbo v2, "WMCompatVL"

    const-string/jumbo v3, "Unable to get permission info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 106
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V

    .line 111
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.launcher3.compat.WallpaperManagerCompatVL.EXTRACTION_COMPLETE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 106
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    return-void

    .line 102
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private static final getWallpaperId(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, -0x1

    return v0

    .line 144
    :cond_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    return v0
.end method

.method private handleResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wallpaper_parsed_colors"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->parseValue(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;

    .line 136
    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;->onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method private static parseValue(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 151
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 152
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 153
    array-length v0, v3

    if-ne v0, v2, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    array-length v0, v3

    if-le v0, v2, :cond_1

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    :goto_0
    array-length v2, v3

    if-le v2, v5, :cond_2

    aget-object v2, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 160
    :goto_1
    array-length v5, v3

    if-le v5, v6, :cond_3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 162
    :goto_2
    new-instance v5, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    invoke-direct {v5, v0, v2, v3, v1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;-><init>(IIII)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0

    :cond_2
    move v2, v1

    .line 159
    goto :goto_1

    :cond_3
    move v3, v1

    .line 160
    goto :goto_2
.end method

.method private reloadColors()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 127
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$ColorExtractionService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 128
    const-wide/16 v2, 0x0

    .line 126
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 130
    return-void
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->mColorsCompat:Lcom/android/launcher3/compat/WallpaperColorsCompat;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
