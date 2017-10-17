.class final Lcom/google/android/apps/nexuslauncher/qsb/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic cu:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->cu:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    .line 141
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/i;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->cu:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    const-string/jumbo v1, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bF(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->cu:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bU(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    goto :goto_0
.end method
