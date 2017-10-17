.class public Lcom/google/android/apps/nexuslauncher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlay;
.implements Lcom/google/android/libraries/a/a/a;


# instance fields
.field private dA:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

.field private dB:Z

.field private dy:Lcom/google/android/libraries/a/a/c;

.field private final dz:Lcom/android/launcher3/LauncherExterns;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherExterns;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dB:Z

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->dz:Lcom/android/launcher3/LauncherExterns;

    .line 27
    return-void
.end method


# virtual methods
.method public dc()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dB:Z

    return v0
.end method

.method public dd(ZZ)V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dB:Z

    if-eq p1, v0, :cond_0

    .line 36
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/c;->dB:Z

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dz:Lcom/android/launcher3/LauncherExterns;

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/launcher3/LauncherExterns;->setLauncherOverlay(Lcom/android/launcher3/Launcher$LauncherOverlay;)V

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public de(Lcom/google/android/libraries/a/a/c;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->dy:Lcom/google/android/libraries/a/a/c;

    .line 31
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dA:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dA:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 46
    :cond_0
    return-void
.end method

.method public onScrollChange(FZ)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dy:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/a/a/c;->QF(F)V

    .line 61
    return-void
.end method

.method public onScrollInteractionBegin()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dy:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->Qw()V

    .line 51
    return-void
.end method

.method public onScrollInteractionEnd()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c;->dy:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->Qs()V

    .line 56
    return-void
.end method

.method public setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c;->dA:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    .line 66
    return-void
.end method
