.class final Lcom/google/android/apps/nexuslauncher/qsb/g;
.super Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;
.source "SourceFile"


# instance fields
.field final synthetic cs:Lcom/google/android/apps/nexuslauncher/qsb/b;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/b;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->cs:Lcom/google/android/apps/nexuslauncher/qsb/b;

    .line 29
    invoke-direct {p0, p2}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    .line 1
    return-void
.end method


# virtual methods
.method public createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->cs:Lcom/google/android/apps/nexuslauncher/qsb/b;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/b;->bs(Lcom/google/android/apps/nexuslauncher/qsb/b;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->cs:Lcom/google/android/apps/nexuslauncher/qsb/b;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/b;->bt(Lcom/google/android/apps/nexuslauncher/qsb/b;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/InstallShortcutReceiver;->fromActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
