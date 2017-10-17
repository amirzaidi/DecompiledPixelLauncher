.class final Lcom/google/android/apps/nexuslauncher/qsb/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic ak:Lcom/google/android/apps/nexuslauncher/qsb/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->ak:Lcom/google/android/apps/nexuslauncher/qsb/f;

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/q;->ak:Lcom/google/android/apps/nexuslauncher/qsb/f;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ac(Lcom/google/android/apps/nexuslauncher/qsb/f;)V

    .line 97
    return-void
.end method
