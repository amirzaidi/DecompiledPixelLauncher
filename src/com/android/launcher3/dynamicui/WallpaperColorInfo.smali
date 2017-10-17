.class public Lcom/android/launcher3/dynamicui/WallpaperColorInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;


# static fields
.field private static sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

.field private mIsDark:Z

.field private final mListeners:Ljava/util/ArrayList;

.field private mMainColor:I

.field private mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

.field private mSecondaryColor:I

.field private mSupportsDarkText:Z

.field private final mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/WallpaperManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V

    .line 42
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mWallpaperManager:Lcom/android/launcher3/compat/WallpaperManagerCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/WallpaperManagerCompat;->getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;
    .locals 3

    .prologue
    .line 22
    sget-object v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->sInstance:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mExtractionType:Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dynamicui/ColorExtractionAlgorithm;->extractInto(Lcom/android/launcher3/compat/WallpaperColorsCompat;)Landroid/util/Pair;

    move-result-object v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    .line 76
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    .line 81
    :goto_0
    if-eqz p1, :cond_3

    .line 82
    invoke-virtual {p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    move v0, v1

    .line 81
    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/android/launcher3/compat/WallpaperColorsCompat;->getColorHints()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    move v2, v1

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    .line 87
    return-void

    .line 78
    :cond_1
    iput v4, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    .line 79
    iput v4, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 82
    goto :goto_1

    :cond_3
    move v0, v2

    .line 83
    goto :goto_1
.end method


# virtual methods
.method public addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public getMainColor()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    return v0
.end method

.method public notifyChange(Z)V
    .locals 2

    .prologue
    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

    invoke-interface {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;->onThemeChanged()V

    .line 111
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;

    .line 108
    invoke-interface {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    goto :goto_0
.end method

.method public onColorsChanged(Lcom/android/launcher3/compat/WallpaperColorsCompat;I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 65
    iget-boolean v2, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    .line 66
    iget-boolean v3, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->update(Lcom/android/launcher3/compat/WallpaperColorsCompat;)V

    .line 68
    iget-boolean v4, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    if-eq v3, v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->notifyChange(Z)V

    .line 70
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public setOnThemeChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

    .line 91
    return-void
.end method

.method public supportsDarkText()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    return v0
.end method
