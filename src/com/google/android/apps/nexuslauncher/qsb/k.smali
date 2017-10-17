.class final Lcom/google/android/apps/nexuslauncher/qsb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# instance fields
.field final synthetic ad:Lcom/google/android/apps/nexuslauncher/qsb/j;

.field final synthetic ae:Lcom/google/android/gms/common/api/d;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/j;Landroid/content/Context;Lcom/google/android/gms/common/api/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->ad:Lcom/google/android/apps/nexuslauncher/qsb/j;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->ae:Lcom/google/android/gms/common/api/d;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lcom/google/android/gms/phenotype/b;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->ai(Lcom/google/android/gms/phenotype/b;)V

    return-void
.end method

.method public ai(Lcom/google/android/gms/phenotype/b;)V
    .locals 3

    .prologue
    .line 159
    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/ExperimentSetupService;->x(Lcom/google/android/gms/phenotype/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->val$context:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/c;->t(Landroid/content/Context;IZ)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/qsb/c;->-get0()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->ae:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    .line 171
    return-void
.end method
