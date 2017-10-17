.class final Lcom/google/android/apps/nexuslauncher/qsb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# instance fields
.field final synthetic af:Lcom/google/android/gms/common/api/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/l;->af:Lcom/google/android/gms/common/api/d;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/l;->aj(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public aj(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v0, "QsbExperiment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Phenotype published "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/l;->af:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    .line 198
    return-void
.end method
