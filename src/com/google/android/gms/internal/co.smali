.class Lcom/google/android/gms/internal/co;
.super Lcom/google/android/gms/internal/bJ;


# instance fields
.field final synthetic xb:Lcom/google/android/gms/internal/bB;

.field private final xc:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bB;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/co;->xb:Lcom/google/android/gms/internal/bB;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bJ;-><init>(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/internal/bD;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->xc:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public yr()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->xb:Lcom/google/android/gms/internal/bB;

    invoke-static {v0}, Lcom/google/android/gms/internal/bB;->Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->xb:Lcom/google/android/gms/internal/bB;

    invoke-static {v1}, Lcom/google/android/gms/internal/bB;->An(Lcom/google/android/gms/internal/bB;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cu;->xw:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->xc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->xb:Lcom/google/android/gms/internal/bB;

    invoke-static {v2}, Lcom/google/android/gms/internal/bB;->Af(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/co;->xb:Lcom/google/android/gms/internal/bB;

    invoke-static {v3}, Lcom/google/android/gms/internal/bB;->Ai(Lcom/google/android/gms/internal/bB;)Lcom/google/android/gms/internal/bZ;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v3, v3, Lcom/google/android/gms/internal/cu;->xw:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/g;->gI(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0
.end method
