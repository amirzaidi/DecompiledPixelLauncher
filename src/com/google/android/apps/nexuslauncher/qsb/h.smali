.class final Lcom/google/android/apps/nexuslauncher/qsb/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic ct:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ct:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ct:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->bT(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    .line 47
    return-void
.end method
