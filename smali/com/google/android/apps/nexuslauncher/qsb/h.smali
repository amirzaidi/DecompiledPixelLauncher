.class final Lcom/google/android/apps/nexuslauncher/qsb/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic ab:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ab:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ab:Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;->l(Lcom/google/android/apps/nexuslauncher/qsb/QsbConnector;)V

    .line 48
    return-void
.end method
