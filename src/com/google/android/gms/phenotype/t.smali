.class Lcom/google/android/gms/phenotype/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/v;


# instance fields
.field final synthetic zh:Lcom/google/android/gms/phenotype/a;

.field final synthetic zi:Lcom/google/android/gms/phenotype/b;

.field final synthetic zj:Ljava/lang/String;

.field final synthetic zk:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/a;Lcom/google/android/gms/phenotype/b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/t;->zh:Lcom/google/android/gms/phenotype/a;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/t;->zi:Lcom/google/android/gms/phenotype/b;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/t;->zj:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/phenotype/t;->zk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dv(Lcom/google/android/gms/phenotype/r;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/r;->gV()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->gY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->zh:Lcom/google/android/gms/phenotype/a;

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/r;->sx()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/a;->dU(Lcom/google/android/gms/phenotype/Configurations;)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->zh:Lcom/google/android/gms/phenotype/a;

    invoke-static {v0}, Lcom/google/android/gms/phenotype/a;->CK(Lcom/google/android/gms/phenotype/a;)Lcom/google/android/gms/phenotype/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/t;->zh:Lcom/google/android/gms/phenotype/a;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/a;->xN:Lcom/google/android/gms/common/api/a;

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/r;->sx()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/phenotype/Configurations;->xX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/phenotype/c;->sr(Lcom/google/android/gms/common/api/a;Ljava/lang/String;)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/phenotype/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/phenotype/u;-><init>(Lcom/google/android/gms/phenotype/t;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->gF(Lcom/google/android/gms/common/api/v;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->zh:Lcom/google/android/gms/phenotype/a;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/a;->mPackageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Retrieving snapshot for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PhenotypeFlagCommitter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->zi:Lcom/google/android/gms/phenotype/b;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->zi:Lcom/google/android/gms/phenotype/b;

    invoke-interface {v0, v3}, Lcom/google/android/gms/phenotype/b;->dV(Z)V

    goto :goto_0
.end method

.method public synthetic hk(Lcom/google/android/gms/common/api/m;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/phenotype/r;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/t;->Dv(Lcom/google/android/gms/phenotype/r;)V

    return-void
.end method
