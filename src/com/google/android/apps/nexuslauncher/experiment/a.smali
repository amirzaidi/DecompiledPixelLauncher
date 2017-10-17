.class public Lcom/google/android/apps/nexuslauncher/experiment/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fr:Lcom/google/android/gms/phenotype/e;

.field public static fs:Lcom/google/android/gms/phenotype/d;

.field public static ft:Lcom/google/android/gms/phenotype/d;

.field public static fu:Lcom/google/android/gms/phenotype/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/gms/phenotype/e;

    const-string/jumbo v1, "phenotype_configs"

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/e;-><init>(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, ""

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/e;->CQ(Ljava/lang/String;)Lcom/google/android/gms/phenotype/e;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fr:Lcom/google/android/gms/phenotype/e;

    .line 29
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fr:Lcom/google/android/gms/phenotype/e;

    const-string/jumbo v1, "QSBFeature__qsb_is_wide"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/e;->CR(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/d;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fu:Lcom/google/android/gms/phenotype/d;

    .line 31
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fr:Lcom/google/android/gms/phenotype/e;

    const-string/jumbo v1, "QSBFeature__qsb_is_in_experiment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/e;->CR(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/d;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fs:Lcom/google/android/gms/phenotype/d;

    .line 33
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->fr:Lcom/google/android/gms/phenotype/e;

    const-string/jumbo v1, "QSBFeature__qsb_kill_switch"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/e;->CR(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/d;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->ft:Lcom/google/android/gms/phenotype/d;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dS(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/phenotype/d;->CN(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->dT(Landroid/content/Context;)V

    .line 25
    return-void
.end method
