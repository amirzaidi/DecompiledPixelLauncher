.class public Lcom/android/launcher3/dynamicui/ExtractionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->hasWallpaperIdChanged(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallpaperId(Landroid/app/WallpaperManager;)I
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static hasWallpaperIdChanged(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 78
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-nez v1, :cond_0

    .line 80
    return v0

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->getWallpaperId(Landroid/app/WallpaperManager;)I

    move-result v2

    .line 84
    const-string/jumbo v3, "pref_wallpaperId"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 85
    if-eq v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isLegible(II)Z
    .locals 4

    .prologue
    .line 121
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    .line 122
    invoke-static {p0, v0}, Landroid/support/v4/b/a;->arL(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLegibleOnWallpaper(ILjava/util/List;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/a/d;

    .line 110
    invoke-virtual {v0}, Landroid/support/v7/a/d;->adM()I

    move-result v5

    invoke-static {p0, v5}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isLegible(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/support/v7/a/d;->adK()I

    move-result v0

    add-int/2addr v3, v0

    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/a/d;->adK()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_1

    .line 116
    :cond_1
    if-le v3, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isSuperDark(Landroid/support/v7/a/a;)Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/support/v7/a/a;->adr()Ljava/util/List;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-static {v1, v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isLegibleOnWallpaper(ILjava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSuperLight(Landroid/support/v7/a/a;)Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/support/v7/a/a;->adr()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, v0}, Lcom/android/launcher3/dynamicui/ExtractionUtils;->isLegibleOnWallpaper(ILjava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static startColorExtractionService(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public static startColorExtractionServiceIfNecessary(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
