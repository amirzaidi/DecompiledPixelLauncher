.class final Lcom/google/android/apps/nexuslauncher/b/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic fo:Lcom/google/android/apps/nexuslauncher/b/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/e;->fo:Lcom/google/android/apps/nexuslauncher/b/c;

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/e;->fo:Lcom/google/android/apps/nexuslauncher/b/c;

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/b/c;->dP(Lcom/google/android/apps/nexuslauncher/b/c;Ljava/lang/String;)V

    .line 93
    return-void
.end method
