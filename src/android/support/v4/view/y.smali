.class public final Landroid/support/v4/view/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Wh:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/view/ViewConfiguration;

    const-string/jumbo v2, "getScaledScrollFactor"

    .line 43
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/y;->Wh:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v0, "ViewConfigCompat"

    const-string/jumbo v1, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ahw(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 85
    invoke-static {p0, p1}, Landroid/support/v4/view/y;->ahy(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    return v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method public static ahx(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 102
    invoke-static {p0, p1}, Landroid/support/v4/view/y;->ahy(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    return v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method private static ahy(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101004d

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1
    sget-object v0, Landroid/support/v4/view/y;->Wh:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    sget-object v0, Landroid/support/v4/view/y;->Wh:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string/jumbo v0, "ViewConfigCompat"

    const-string/jumbo v1, "Could not find method getScaledScrollFactor() on ViewConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
