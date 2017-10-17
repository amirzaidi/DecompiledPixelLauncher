.class public Lcom/android/launcher3/IconCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ICON_UPDATE_TOKEN:Ljava/lang/Object;


# instance fields
.field private final mActivityBgColor:I

.field private final mCache:Ljava/util/HashMap;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Ljava/util/HashMap;

.field final mIconDb:Lcom/android/launcher3/IconCache$IconDB;

.field private final mIconDpi:I

.field private mIconProvider:Lcom/android/launcher3/IconProvider;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private mLowResCanvas:Landroid/graphics/Canvas;

.field private final mLowResOptions:Landroid/graphics/BitmapFactory$Options;

.field private mLowResPaint:Landroid/graphics/Paint;

.field final mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

.field private final mPackageBgColor:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

.field final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/IconCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/compat/LauncherAppsCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    .line 95
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 126
    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iput v0, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    .line 127
    new-instance v0, Lcom/android/launcher3/IconCache$IconDB;

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/IconCache$IconDB;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 128
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 132
    const-class v0, Lcom/android/launcher3/IconProvider;

    const v1, 0x7f0c0018

    .line 131
    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconProvider;

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    .line 135
    const v0, 0x7f120001

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getColorPrimary(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/IconCache;->mActivityBgColor:I

    .line 136
    const v0, 0x7f120002

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getColorPrimary(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/IconCache;->mPackageBgColor:I

    .line 138
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    return-void
.end method

.method private addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    .locals 4

    .prologue
    .line 402
    const-string/jumbo v0, "componentName"

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string/jumbo v0, "profileId"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 404
    const-string/jumbo v0, "lastUpdated"

    iget-wide v2, p3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    const-string/jumbo v0, "version"

    iget v1, p3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/IconCache$IconDB;->insertOrReplace(Landroid/content/ContentValues;)V

    .line 407
    return-void
.end method

.method private applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 500
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 501
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 502
    iget-boolean v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    iput-boolean v0, p2, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    .line 503
    return-void

    .line 501
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private generateLowResIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 826
    if-nez p2, :cond_0

    .line 828
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x1

    .line 827
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 831
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 831
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 833
    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 835
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 836
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 837
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 838
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mLowResPaint:Landroid/graphics/Paint;

    .line 836
    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 839
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 841
    return-object v0

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 617
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 618
    invoke-static {p1, p2}, Lcom/android/launcher3/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v9

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 621
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v1, :cond_1

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 622
    :cond_0
    new-instance v6, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v6}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 623
    const/4 v7, 0x1

    .line 626
    invoke-direct {p0, v9, v6, p3}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 628
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    .line 630
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 631
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 632
    if-nez v0, :cond_3

    .line 633
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string/jumbo v1, "ApplicationInfo is null"

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :catch_0
    move-exception v0

    move v0, v8

    .line 660
    :goto_1
    if-eqz v0, :cond_6

    .line 661
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 664
    :cond_1
    :goto_2
    return-object v0

    .line 629
    :cond_2
    const/16 v0, 0x2000

    goto :goto_0

    .line 639
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 638
    invoke-static {v1, p2, v2, v4}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 640
    iget v1, p0, Lcom/android/launcher3/IconCache;->mPackageBgColor:I

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/IconCache;->generateLowResIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 641
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 642
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v4, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 643
    if-eqz p3, :cond_5

    move-object v0, v1

    :goto_3
    iput-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 644
    iput-boolean p3, v6, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 649
    iget-object v0, v6, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 650
    iget-object v2, v9, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    move-object v0, p0

    .line 650
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move v0, v7

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 643
    goto :goto_3

    :cond_6
    move-object v0, v6

    goto :goto_2
.end method

.method private getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 671
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    if-eqz p3, :cond_2

    const-string/jumbo v0, "icon_low_res"

    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 672
    const-string/jumbo v0, "label"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 673
    const-string/jumbo v0, "componentName = ? AND profileId = ?"

    .line 674
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 675
    iget-object v5, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v6, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 670
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/launcher3/IconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 676
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 677
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLowResOptions:Landroid/graphics/BitmapFactory$Options;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/IconCache;->loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 678
    iput-boolean p3, p2, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    .line 679
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 680
    iget-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 681
    const-string/jumbo v0, ""

    iput-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 682
    const-string/jumbo v0, ""

    iput-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 692
    :goto_1
    if-eqz v2, :cond_1

    .line 693
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 687
    :cond_1
    return v9

    .line 671
    :cond_2
    :try_start_2
    const-string/jumbo v0, "icon"
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 684
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 685
    iget-object v1, p2, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 684
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 689
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 690
    :goto_2
    :try_start_4
    const-string/jumbo v2, "Launcher.IconCache"

    const-string/jumbo v3, "Error reading icon cache"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 692
    if-eqz v1, :cond_4

    .line 693
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_4
    :goto_3
    return v8

    .line 692
    :cond_5
    if-eqz v2, :cond_4

    .line 693
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 691
    :catchall_0
    move-exception v0

    .line 692
    :goto_4
    if-eqz v1, :cond_6

    .line 693
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 689
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 151
    :try_start_0
    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .prologue
    .line 607
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v1
.end method

.method private declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    .locals 6

    .prologue
    monitor-enter p0

    .line 483
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 484
    iget-object v3, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 485
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 486
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static loadIconNoResize(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 846
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 848
    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    const/4 v0, 0x0

    return-object v0
.end method

.method private newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 812
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    const-string/jumbo v1, "icon"

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 814
    const-string/jumbo v1, "icon_low_res"

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 816
    const-string/jumbo v1, "label"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string/jumbo v1, "system_state"

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    invoke-virtual {v2, p4}, Lcom/android/launcher3/IconProvider;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-object v0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4

    .prologue
    .line 212
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 214
    iget-object v3, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 214
    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 220
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 222
    :cond_2
    return-void
.end method

.method private updateDBIcons(Landroid/os/UserHandle;Ljava/util/List;Ljava/util/Set;)V
    .locals 24

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 283
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 284
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 285
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    .line 290
    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v11, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 294
    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    .line 296
    const/4 v5, 0x0

    .line 298
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 299
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    const-string/jumbo v13, "rowid"

    const/4 v14, 0x0

    aput-object v13, v9, v14

    const-string/jumbo v13, "componentName"

    const/4 v14, 0x1

    aput-object v13, v9, v14

    .line 300
    const-string/jumbo v13, "lastUpdated"

    const/4 v14, 0x2

    aput-object v13, v9, v14

    const-string/jumbo v13, "version"

    const/4 v14, 0x3

    aput-object v13, v9, v14

    .line 301
    const-string/jumbo v13, "system_state"

    const/4 v14, 0x4

    aput-object v13, v9, v14

    .line 302
    const-string/jumbo v13, "profileId = ? "

    .line 303
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 298
    invoke-virtual {v4, v9, v13, v14}, Lcom/android/launcher3/IconCache$IconDB;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 305
    :try_start_1
    const-string/jumbo v4, "componentName"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 306
    const-string/jumbo v4, "lastUpdated"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 307
    const-string/jumbo v4, "version"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 308
    const-string/jumbo v4, "rowid"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 309
    const-string/jumbo v4, "system_state"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 311
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 312
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    .line 314
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 315
    if-nez v4, :cond_7

    .line 316
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 317
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 318
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 342
    :catch_0
    move-exception v4

    move-object v5, v9

    .line 343
    :goto_3
    :try_start_2
    const-string/jumbo v9, "Launcher.IconCache"

    const-string/jumbo v13, "Error reading icon cache"

    invoke-static {v9, v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 346
    if-eqz v5, :cond_3

    .line 347
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_3
    :goto_4
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 352
    const-string/jumbo v5, "rowid"

    invoke-static {v5, v12}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    .line 351
    invoke-virtual {v4, v5, v9}, Lcom/android/launcher3/IconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    :cond_4
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v10}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 357
    :cond_5
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 358
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 359
    new-instance v4, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/IconCache;JLjava/util/HashMap;Ljava/util/Stack;Ljava/util/Stack;)V

    invoke-virtual {v4}, Lcom/android/launcher3/IconCache$SerializedIconUpdateTask;->scheduleNext()V

    .line 362
    :cond_6
    return-void

    .line 322
    :cond_7
    :try_start_3
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v19, 0x1000000

    and-int v5, v5, v19

    if-nez v5, :cond_2

    .line 327
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 328
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 329
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    .line 330
    iget v0, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    iget-wide v0, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v22, v0

    cmp-long v19, v20, v22

    if-nez v19, :cond_8

    .line 331
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    move-object/from16 v20, v0

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/launcher3/IconProvider;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 330
    if-nez v4, :cond_2

    .line 335
    :cond_8
    if-nez v5, :cond_a

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/IconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 337
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 345
    :catchall_0
    move-exception v4

    .line 346
    :goto_5
    if-eqz v9, :cond_9

    .line 347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_9
    throw v4

    .line 339
    :cond_a
    :try_start_4
    invoke-virtual {v10, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 346
    :cond_b
    if-eqz v9, :cond_3

    .line 347
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 345
    :catchall_1
    move-exception v4

    move-object v9, v5

    goto :goto_5

    :catchall_2
    move-exception v4

    move-object v9, v5

    goto :goto_5

    .line 342
    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method


# virtual methods
.method declared-synchronized addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 372
    :try_start_0
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 374
    if-nez p5, :cond_3

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 377
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 381
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 382
    new-instance v0, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v0}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 384
    iget-object v4, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 383
    invoke-static {v1, v3, v4, v5}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 386
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 387
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v3, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/IconCache;->mActivityBgColor:I

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/IconCache;->generateLowResIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 391
    iget-object v2, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 391
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/launcher3/IconCache;->newContentValues(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->addIconToDB(Landroid/content/ContentValues;Landroid/content/ComponentName;Landroid/content/pm/PackageInfo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 524
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 525
    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v5, p1, p3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 526
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 527
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/launcher3/IconCache$CacheEntry;->isLowResIcon:Z

    if-eqz v4, :cond_2

    xor-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_2

    .line 528
    :cond_0
    new-instance v4, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v4}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-direct {p0, v5, v4, p5}, Lcom/android/launcher3/IconCache;->getEntryFromDB(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/IconCache$CacheEntry;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    move-object v1, v3

    .line 563
    :goto_0
    iget-object v2, v4, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 564
    if-nez v1, :cond_1

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    move-object v1, v0

    .line 568
    :cond_1
    if-eqz v1, :cond_6

    .line 569
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    iget-object v1, v4, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v4, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    move-object v0, v4

    .line 574
    :cond_2
    :goto_1
    return-object v0

    .line 536
    :cond_3
    invoke-virtual {p2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    .line 539
    if-eqz v0, :cond_4

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    .line 542
    invoke-virtual {p2}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 540
    invoke-static {v3, v5, v6, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v4, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    move-object v1, v0

    move v0, v2

    goto :goto_0

    .line 544
    :cond_4
    if-eqz p4, :cond_5

    .line 546
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-direct {p0, v3, p3, v1}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_5

    .line 550
    iget-object v3, v1, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v3, v4, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 551
    iget-object v3, v1, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    iput-object v3, v4, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 552
    iget-object v1, v1, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, v4, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    .line 555
    :cond_5
    iget-object v1, v4, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 558
    invoke-virtual {p0, p3}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v4, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    move-object v1, v0

    move v0, v2

    goto :goto_0

    :cond_6
    move-object v0, v4

    goto :goto_1

    :cond_7
    move-object v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 588
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 590
    invoke-static {p1, p2}, Lcom/android/launcher3/IconCache;->getPackageKey(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    .line 591
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/IconCache$CacheEntry;

    .line 594
    if-nez v0, :cond_0

    .line 595
    new-instance v0, Lcom/android/launcher3/IconCache$CacheEntry;

    invoke-direct {v0}, Lcom/android/launcher3/IconCache$CacheEntry;-><init>()V

    .line 596
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    iput-object p4, v0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 601
    :cond_1
    if-eqz p3, :cond_2

    .line 602
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/launcher3/graphics/LauncherIcons;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 604
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 578
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 579
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconDB;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 580
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    monitor-enter p0

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/IconCache;->makeDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 178
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_0
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 179
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getFullResIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    iget v1, p0, Lcom/android/launcher3/IconCache;->mIconDpi:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    if-eqz v0, :cond_0

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 455
    :try_start_0
    invoke-static {p2}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 456
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 465
    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/IconCache;->getDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 467
    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    .line 468
    const-string/jumbo v0, ""

    iput-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 474
    return-void

    .line 471
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/launcher3/IconCache$ActivityInfoProvider;

    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/IconCache$ActivityInfoProvider;-><init>(Lcom/android/launcher3/IconCache;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 472
    const/4 v1, 0x1

    .line 471
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/util/Provider;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 493
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/IconCache;->getEntryForPackageLocked(Ljava/lang/String;Landroid/os/UserHandle;Z)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 495
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 496
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mDefaultIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDefaultIcon(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/launcher3/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mContext:Landroid/content/Context;

    const/16 v2, 0x1a

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mCache:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 206
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .prologue
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeFromMemCacheLocked(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 248
    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mIconDb:Lcom/android/launcher3/IconCache$IconDB;

    .line 249
    const-string/jumbo v3, "componentName LIKE ? AND profileId = ?"

    .line 250
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 248
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/IconCache$IconDB;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 251
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDbIcons(Ljava/util/Set;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/IconCache;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mIconProvider:Lcom/android/launcher3/IconProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/IconProvider;->updateSystemStateString()V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 260
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v1, v4, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/launcher3/IconCache;->updateDBIcons(Landroid/os/UserHandle;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 272
    :cond_3
    return-void
.end method

.method public updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;
    .locals 3

    .prologue
    .line 415
    new-instance v0, Lcom/android/launcher3/IconCache$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/IconCache$1;-><init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/ItemInfoWithIcon;Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;)V

    .line 433
    iget-object v1, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    new-instance v1, Lcom/android/launcher3/IconCache$IconLoadRequest;

    iget-object v2, p0, Lcom/android/launcher3/IconCache;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/IconCache$IconLoadRequest;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-object v1
.end method

.method public declared-synchronized updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 7

    .prologue
    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/IconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 231
    const/16 v1, 0x2000

    .line 230
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/IconCache;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 234
    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/IconCache;->addIconToDBAndMemCache(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/PackageInfo;JZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    :try_start_2
    const-string/jumbo v1, "Launcher.IconCache"

    const-string/jumbo v2, "Package not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 238
    return-void

    :cond_0
    monitor-exit p0

    .line 240
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTitleAndIcon(Lcom/android/launcher3/AppInfo;)V
    .locals 6

    .prologue
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 442
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/util/Provider;->of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;

    move-result-object v2

    .line 443
    iget-object v3, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    iget-boolean v5, p1, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    const/4 v4, 0x0

    move-object v0, p0

    .line 441
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/IconCache;->cacheLocked(Landroid/content/ComponentName;Lcom/android/launcher3/util/Provider;Landroid/os/UserHandle;ZZ)Lcom/android/launcher3/IconCache$CacheEntry;

    move-result-object v0

    .line 444
    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 445
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/IconCache;->applyCacheEntry(Lcom/android/launcher3/IconCache$CacheEntry;Lcom/android/launcher3/ItemInfoWithIcon;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 447
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
