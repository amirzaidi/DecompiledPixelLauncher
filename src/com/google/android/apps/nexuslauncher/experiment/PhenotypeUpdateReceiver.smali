.class public Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static dT(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/common/api/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/b;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/phenotype/g;->yN:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/b;->gu(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->build()Lcom/google/android/gms/common/api/a;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->gg()V

    .line 29
    new-instance v1, Lcom/google/android/apps/nexuslauncher/experiment/b;

    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/experiment/b;-><init>(Lcom/google/android/gms/common/api/a;)V

    .line 31
    const-string/jumbo v0, ""

    .line 32
    invoke-virtual {v1, v0, v1}, Lcom/google/android/apps/nexuslauncher/experiment/b;->CH(Ljava/lang/String;Lcom/google/android/gms/phenotype/b;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->dT(Landroid/content/Context;)V

    .line 24
    return-void
.end method
