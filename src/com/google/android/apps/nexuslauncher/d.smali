.class public Lcom/google/android/apps/nexuslauncher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlay;
.implements Lcom/google/android/libraries/a/a/a;


# instance fields
.field private fM:Lcom/google/android/libraries/a/a/d;

.field private fN:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

.field private fO:Z

.field private fP:I

.field private fQ:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/d;->fQ:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_persistent_flags"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fP:I

    .line 41
    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/d;->fO:Z

    .line 42
    return-void
.end method


# virtual methods
.method public ep()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fQ:Z

    return v0
.end method

.method public eq(Lcom/google/android/libraries/a/a/d;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->fM:Lcom/google/android/libraries/a/a/d;

    .line 46
    return-void
.end method

.method public er()V
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fO:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 103
    :cond_0
    return-void
.end method

.method public es(I)V
    .locals 3

    .prologue
    .line 85
    and-int/lit8 v0, p1, 0x18

    .line 86
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/d;->fP:I

    if-eq v0, v1, :cond_0

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/d;->fO:Z

    .line 88
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fP:I

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "pref_persistent_flags"

    .line 89
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    :cond_0
    return-void
.end method

.method public et(ZZ)V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fQ:Z

    if-eq p1, v0, :cond_0

    .line 51
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/d;->fQ:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V

    .line 54
    :cond_0
    return-void

    .line 52
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public onOverlayScrollChanged(F)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fN:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fN:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fM:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/a/a/d;->Rz(F)V

    .line 76
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fM:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->Rp()V

    .line 66
    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->fM:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->Rl()V

    .line 71
    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->fN:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    .line 81
    return-void
.end method
