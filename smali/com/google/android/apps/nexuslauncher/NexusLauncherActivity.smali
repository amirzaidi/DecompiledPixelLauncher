.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"


# instance fields
.field final dC:Lcom/google/android/apps/nexuslauncher/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 15
    new-instance v0, Lcom/google/android/apps/nexuslauncher/d;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Landroid/app/Activity;Lcom/android/launcher3/LauncherExterns;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->dC:Lcom/google/android/apps/nexuslauncher/d;

    .line 16
    return-void
.end method


# virtual methods
.method public df()Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->dC:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dF:Lcom/google/android/apps/nexuslauncher/c;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/c;->dc()Z

    move-result v0

    return v0
.end method

.method public dg()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->dC:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/c;->QJ(Z)V

    .line 20
    return-void
.end method
