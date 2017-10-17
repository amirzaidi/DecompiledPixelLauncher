.class public Lcom/google/android/apps/nexuslauncher/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dE:Lcom/google/android/libraries/a/a/c;

.field dF:Lcom/google/android/apps/nexuslauncher/c;

.field private final dG:Landroid/app/Activity;

.field private dH:Z

.field private final dI:Lcom/android/launcher3/LauncherExterns;

.field private dJ:Lcom/google/android/apps/nexuslauncher/reflection/l;

.field private dK:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/launcher3/LauncherExterns;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->dG:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/d;->dI:Lcom/android/launcher3/LauncherExterns;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dI:Lcom/android/launcher3/LauncherExterns;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/e;-><init>(Lcom/google/android/apps/nexuslauncher/d;Lcom/google/android/apps/nexuslauncher/e;)V

    invoke-interface {v0, v1}, Lcom/android/launcher3/LauncherExterns;->setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z

    .line 62
    return-void
.end method

.method static synthetic dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dG:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic di(Lcom/google/android/apps/nexuslauncher/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dH:Z

    return v0
.end method

.method static synthetic dj(Lcom/google/android/apps/nexuslauncher/d;)Lcom/android/launcher3/LauncherExterns;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dI:Lcom/android/launcher3/LauncherExterns;

    return-object v0
.end method

.method static synthetic dk(Lcom/google/android/apps/nexuslauncher/d;)Lcom/google/android/apps/nexuslauncher/reflection/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dJ:Lcom/google/android/apps/nexuslauncher/reflection/l;

    return-object v0
.end method

.method static synthetic dl(Lcom/google/android/apps/nexuslauncher/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->dK:Z

    return v0
.end method

.method static synthetic dm(Lcom/google/android/apps/nexuslauncher/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->mStarted:Z

    return v0
.end method

.method static synthetic dn(Lcom/google/android/apps/nexuslauncher/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/d;->dH:Z

    return p1
.end method

.method static synthetic do(Lcom/google/android/apps/nexuslauncher/d;Lcom/google/android/apps/nexuslauncher/reflection/l;)Lcom/google/android/apps/nexuslauncher/reflection/l;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->dJ:Lcom/google/android/apps/nexuslauncher/reflection/l;

    return-object p1
.end method

.method static synthetic dp(Lcom/google/android/apps/nexuslauncher/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/d;->dK:Z

    return p1
.end method

.method static synthetic dq(Lcom/google/android/apps/nexuslauncher/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/d;->mStarted:Z

    return p1
.end method
