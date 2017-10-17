.class final Lcom/google/android/apps/nexuslauncher/qsb/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic al:Lcom/google/android/apps/nexuslauncher/qsb/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->al:Lcom/google/android/apps/nexuslauncher/qsb/f;

    .line 217
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/r;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->al:Lcom/google/android/apps/nexuslauncher/qsb/f;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/qsb/f;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ae(Lcom/google/android/apps/nexuslauncher/qsb/f;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/r;->al:Lcom/google/android/apps/nexuslauncher/qsb/f;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ad(Lcom/google/android/apps/nexuslauncher/qsb/f;)V

    goto :goto_0
.end method
