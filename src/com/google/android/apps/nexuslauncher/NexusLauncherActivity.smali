.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"


# instance fields
.field final fx:Lcom/google/android/apps/nexuslauncher/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 26
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/nexuslauncher/a;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherExterns;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->fx:Lcom/google/android/apps/nexuslauncher/a;

    .line 27
    return-void
.end method


# virtual methods
.method public dW()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->fx:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fz:Lcom/google/android/apps/nexuslauncher/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/d;->ep()Z

    move-result v0

    return v0
.end method

.method public dX()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->fx:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/d;->RD(Z)V

    .line 31
    return-void
.end method

.method public dY()Lcom/google/android/libraries/a/a/d;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->fx:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    return-object v0
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->fx:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fA:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public overrideTheme(ZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_persistent_flags"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 41
    const/4 v3, 0x2

    .line 40
    if-ne v1, v3, :cond_1

    .line 42
    const/16 v1, 0x10

    .line 44
    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 45
    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 46
    const v0, 0x7f120014

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    .line 54
    :goto_1
    return-void

    .line 43
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 47
    :cond_2
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 48
    const v0, 0x7f120015

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    .line 49
    :cond_3
    if-eqz v0, :cond_4

    .line 50
    const v0, 0x7f120013

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    .line 52
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->overrideTheme(ZZ)V

    goto :goto_1
.end method
