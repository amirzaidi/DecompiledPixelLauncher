.class Lcom/google/android/gms/phenotype/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# instance fields
.field final synthetic mq:Lcom/google/android/gms/phenotype/c;

.field final synthetic mr:Lcom/google/android/gms/phenotype/d;

.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/phenotype/c;Lcom/google/android/gms/phenotype/d;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/t;->ms:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/phenotype/t;->mt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/phenotype/b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/t;->pw(Lcom/google/android/gms/phenotype/b;)V

    return-void
.end method

.method public pw(Lcom/google/android/gms/phenotype/b;)V
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->dr()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->dF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->oF()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/c;->cI(Lcom/google/android/gms/phenotype/Configurations;)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    invoke-static {v0}, Lcom/google/android/gms/phenotype/c;->pa(Lcom/google/android/gms/phenotype/c;)Lcom/google/android/gms/phenotype/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iget-object v1, v1, Lcom/google/android/gms/phenotype/c;->lF:Lcom/google/android/gms/common/api/d;

    invoke-interface {p1}, Lcom/google/android/gms/phenotype/b;->oF()Lcom/google/android/gms/phenotype/Configurations;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/phenotype/Configurations;->ly:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/phenotype/a;->oA(Lcom/google/android/gms/common/api/d;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/phenotype/u;

    invoke-direct {v1, p0}, Lcom/google/android/gms/phenotype/u;-><init>(Lcom/google/android/gms/phenotype/t;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->mq:Lcom/google/android/gms/phenotype/c;

    iget-object v0, v0, Lcom/google/android/gms/phenotype/c;->mPackageName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/phenotype/t;->mr:Lcom/google/android/gms/phenotype/d;

    invoke-interface {v0, v3}, Lcom/google/android/gms/phenotype/d;->cJ(Z)V

    goto :goto_0
.end method
