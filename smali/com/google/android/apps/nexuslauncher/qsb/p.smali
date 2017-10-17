.class final Lcom/google/android/apps/nexuslauncher/qsb/p;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aj:Lcom/google/android/apps/nexuslauncher/qsb/d;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->aj:Lcom/google/android/apps/nexuslauncher/qsb/d;

    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/p;->aj:Lcom/google/android/apps/nexuslauncher/qsb/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->S(Lcom/google/android/apps/nexuslauncher/qsb/d;)V

    .line 78
    return-void
.end method
