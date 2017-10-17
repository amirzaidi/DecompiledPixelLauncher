.class public Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;
.super Lcom/android/launcher3/compat/WallpaperManagerCompat;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "WMCompatVOMR1"


# instance fields
.field private final mAddOCLMethod:Ljava/lang/reflect/Method;

.field private final mOCLClass:Ljava/lang/Class;

.field private final mWCColorHintsMethod:Ljava/lang/reflect/Method;

.field private final mWCGetMethod:Ljava/lang/reflect/Method;

.field private final mWCGetPrimaryColorMethod:Ljava/lang/reflect/Method;

.field private final mWCGetSecondaryColorMethod:Ljava/lang/reflect/Method;

.field private final mWCGetTertiaryColorMethod:Ljava/lang/reflect/Method;

.field private final mWm:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Ljava/lang/Object;)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->convertColorsObject(Ljava/lang/Object;)Lcom/android/launcher3/compat/WallpaperColorsCompat;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/compat/WallpaperManagerCompat;-><init>()V

    .line 47
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    .line 49
    const-string/jumbo v0, "android.app.WallpaperManager$OnColorsChangedListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mOCLClass:Ljava/lang/Class;

    .line 50
    const-class v0, Landroid/app/WallpaperManager;

    .line 51
    const-string/jumbo v1, "addOnColorsChangedListener"

    .line 50
    new-array v2, v5, [Ljava/lang/Class;

    .line 51
    iget-object v3, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mOCLClass:Ljava/lang/Class;

    aput-object v3, v2, v4

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mAddOCLMethod:Ljava/lang/reflect/Method;

    .line 53
    const-class v0, Landroid/app/WallpaperManager;

    const-string/jumbo v1, "getWallpaperColors"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetMethod:Ljava/lang/reflect/Method;

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "getPrimaryColor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetPrimaryColorMethod:Ljava/lang/reflect/Method;

    .line 56
    const-string/jumbo v1, "getSecondaryColor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetSecondaryColorMethod:Ljava/lang/reflect/Method;

    .line 57
    const-string/jumbo v1, "getTertiaryColor"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetTertiaryColorMethod:Ljava/lang/reflect/Method;

    .line 58
    const-string/jumbo v1, "getColorHints"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    .line 59
    return-void
.end method

.method private convertColorsObject(Ljava/lang/Object;)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 99
    if-nez p1, :cond_0

    .line 100
    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetPrimaryColorMethod:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Color;

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetSecondaryColorMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Color;

    .line 104
    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetTertiaryColorMethod:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Color;

    .line 105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    move v5, v0

    .line 106
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    move v4, v0

    .line 107
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    move v1, v0

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCColorHintsMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 109
    new-instance v2, Lcom/android/launcher3/compat/WallpaperColorsCompat;

    invoke-direct {v2, v5, v4, v1, v0}, Lcom/android/launcher3/compat/WallpaperColorsCompat;-><init>(IIII)V

    return-object v2

    :cond_1
    move v5, v3

    .line 105
    goto :goto_0

    :cond_2
    move v4, v3

    .line 106
    goto :goto_1

    :cond_3
    move v1, v3

    .line 107
    goto :goto_2
.end method


# virtual methods
.method public addOnColorsChangedListener(Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 75
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 76
    new-array v1, v1, [Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mOCLClass:Ljava/lang/Class;

    aput-object v2, v1, v3

    .line 77
    new-instance v2, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1$1;-><init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;Lcom/android/launcher3/compat/WallpaperManagerCompat$OnColorsChangedListenerCompat;)V

    .line 74
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mAddOCLMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "WMCompatVOMR1"

    const-string/jumbo v2, "Error calling wallpaper API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getWallpaperColors(I)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    .locals 5

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWCGetMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->mWm:Landroid/app/WallpaperManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/WallpaperManagerCompatVOMR1;->convertColorsObject(Ljava/lang/Object;)Lcom/android/launcher3/compat/WallpaperColorsCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string/jumbo v1, "WMCompatVOMR1"

    const-string/jumbo v2, "Error calling wallpaper API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
