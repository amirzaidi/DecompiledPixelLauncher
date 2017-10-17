.class Lcom/google/android/gms/phenotype/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# instance fields
.field final synthetic mu:Lcom/google/android/gms/phenotype/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/u;->zzv(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzv(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "Experiment Configs successfully retrieved for "

    const-string/jumbo v3, "PhenotypeFlagCommitter"

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Committing snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed, retrying"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhenotypeFlagCommitter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/t;->ms:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v2, v2, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    iget-object v3, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget v3, v3, Lcom/google/android/gms/phenotype/t;->mt:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/phenotype/c;->pb(Lcom/google/android/gms/phenotype/c;Ljava/lang/String;Lcom/google/android/gms/phenotype/d;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/phenotype/u;->mu:Lcom/google/android/gms/phenotype/t;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/phenotype/d;->cJ(Z)V

    goto :goto_1
.end method
