.class public Lcom/google/android/apps/nexuslauncher/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final fA:Lcom/android/launcher3/LauncherCallbacks;

.field private final fB:Lcom/android/launcher3/Launcher;

.field private fC:Z

.field private final fD:Lcom/android/launcher3/LauncherExterns;

.field fE:Lcom/google/android/apps/nexuslauncher/search/a;

.field private fF:Lcom/google/android/apps/nexuslauncher/reflection/c;

.field private fG:Z

.field fy:Lcom/google/android/libraries/a/a/d;

.field fz:Lcom/google/android/apps/nexuslauncher/d;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherExterns;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a;->fB:Lcom/android/launcher3/Launcher;

    .line 73
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/a;->fD:Lcom/android/launcher3/LauncherExterns;

    .line 74
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/b;-><init>(Lcom/google/android/apps/nexuslauncher/a;Lcom/google/android/apps/nexuslauncher/b;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fA:Lcom/android/launcher3/LauncherCallbacks;

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fD:Lcom/android/launcher3/LauncherExterns;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a;->fA:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherExterns;->setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z

    .line 76
    return-void
.end method

.method private static dZ(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/a/a/f;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 367
    new-instance v1, Lcom/google/android/libraries/a/a/f;

    .line 368
    const-string/jumbo v2, "pref_enable_minus_one"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x8

    .line 367
    invoke-direct {v1, v0}, Lcom/google/android/libraries/a/a/f;-><init>(I)V

    return-object v1

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fB:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic eb(Lcom/google/android/apps/nexuslauncher/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fC:Z

    return v0
.end method

.method static synthetic ec(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/LauncherExterns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fD:Lcom/android/launcher3/LauncherExterns;

    return-object v0
.end method

.method static synthetic ed(Lcom/google/android/apps/nexuslauncher/a;)Lcom/google/android/apps/nexuslauncher/reflection/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fF:Lcom/google/android/apps/nexuslauncher/reflection/c;

    return-object v0
.end method

.method static synthetic ee(Lcom/google/android/apps/nexuslauncher/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/a;->fG:Z

    return v0
.end method

.method static synthetic ef(Lcom/google/android/apps/nexuslauncher/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/a;->mStarted:Z

    return v0
.end method

.method static synthetic eg(Lcom/google/android/apps/nexuslauncher/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/a;->fC:Z

    return p1
.end method

.method static synthetic eh(Lcom/google/android/apps/nexuslauncher/a;Lcom/google/android/apps/nexuslauncher/reflection/c;)Lcom/google/android/apps/nexuslauncher/reflection/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a;->fF:Lcom/google/android/apps/nexuslauncher/reflection/c;

    return-object p1
.end method

.method static synthetic ei(Lcom/google/android/apps/nexuslauncher/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/a;->fG:Z

    return p1
.end method

.method static synthetic ej(Lcom/google/android/apps/nexuslauncher/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/a;->mStarted:Z

    return p1
.end method

.method static synthetic ek(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/a/a/f;
    .locals 1

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/a;->dZ(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/a/a/f;

    move-result-object v0

    return-object v0
.end method
