.class Lcom/google/android/apps/nexuslauncher/experiment/a;
.super Lcom/google/android/gms/phenotype/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/phenotype/d;


# instance fields
.field private final dg:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/phenotype/c;-><init>(Lcom/google/android/gms/common/api/d;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/d;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "phenotype_configs"

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/experiment/a;->dg:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method


# virtual methods
.method protected cI(Lcom/google/android/gms/phenotype/Configurations;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/experiment/a;->dg:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Lcom/google/android/apps/nexuslauncher/experiment/a;->oZ(Landroid/content/SharedPreferences;Lcom/google/android/gms/phenotype/Configurations;)V

    .line 52
    const-string/jumbo v0, "PhenotypeFlagCommitter"

    const-string/jumbo v1, "Committed to new configuration from Phenotype"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public cJ(Z)V
    .locals 3

    .prologue
    .line 59
    const-string/jumbo v0, "PhenotypeFlagCommitter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Commit finished, result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/experiment/a;->lF:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    .line 62
    return-void
.end method
