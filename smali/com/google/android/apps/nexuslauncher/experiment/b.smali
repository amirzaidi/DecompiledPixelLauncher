.class public Lcom/google/android/apps/nexuslauncher/experiment/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dh:Lcom/google/android/gms/phenotype/h;

.field public static di:Lcom/google/android/gms/phenotype/g;

.field public static dj:Lcom/google/android/gms/phenotype/g;

.field public static dk:Lcom/google/android/gms/phenotype/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/gms/phenotype/h;

    const-string/jumbo v1, "phenotype_configs"

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/h;-><init>(Ljava/lang/String;)V

    .line 19
    const-string/jumbo v1, ""

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/h;->ph(Ljava/lang/String;)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dh:Lcom/google/android/gms/phenotype/h;

    .line 29
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dh:Lcom/google/android/gms/phenotype/h;

    const-string/jumbo v1, "QSBFeature__qsb_is_wide"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/h;->pi(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/g;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dk:Lcom/google/android/gms/phenotype/g;

    .line 31
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dh:Lcom/google/android/gms/phenotype/h;

    const-string/jumbo v1, "QSBFeature__qsb_is_in_experiment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/h;->pi(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/g;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->di:Lcom/google/android/gms/phenotype/g;

    .line 33
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dh:Lcom/google/android/gms/phenotype/h;

    const-string/jumbo v1, "QSBFeature__qsb_kill_switch"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/h;->pi(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/g;

    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/b;->dj:Lcom/google/android/gms/phenotype/g;

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

.method public static cK(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/android/gms/phenotype/g;->pe(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->cH(Landroid/content/Context;)V

    .line 25
    return-void
.end method
