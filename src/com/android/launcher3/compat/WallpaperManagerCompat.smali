.class public abstract Lcom/android/launcher3/compat/WallpaperManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/WallpaperManagerCompat;
    .locals 3

    .prologue
    .line 30
    sget-object v1, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    :try_start_1
    new-instance v2, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;

    invoke-direct {v2, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    if-nez v2, :cond_1

    .line 42
    new-instance v2, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    invoke-direct {v2, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    .line 45
    :cond_1
    sget-object v0, Lcom/android/launcher3/compat/WallpaperManagerCompat;->sInstance:Lcom/android/launcher3/compat/WallpaperManagerCompat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 37
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public abstract addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
.end method

.method public abstract getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
.end method
