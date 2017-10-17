.class Lcom/google/android/gms/internal/cv;
.super Lcom/google/android/gms/internal/bP;


# instance fields
.field final synthetic wX:Lcom/google/android/gms/internal/bH;

.field private final wY:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bH;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/cv;->wX:Lcom/google/android/gms/internal/bH;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/bP;-><init>(Lcom/google/android/gms/internal/bH;Lcom/google/android/gms/internal/bJ;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/cv;->wY:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ys()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->wX:Lcom/google/android/gms/internal/bH;

    invoke-static {v0}, Lcom/google/android/gms/internal/bH;->Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v1, p0, Lcom/google/android/gms/internal/cv;->wX:Lcom/google/android/gms/internal/bH;

    invoke-static {v1}, Lcom/google/android/gms/internal/bH;->Ao(Lcom/google/android/gms/internal/bH;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cA;->xq:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->wY:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v2, p0, Lcom/google/android/gms/internal/cv;->wX:Lcom/google/android/gms/internal/bH;

    invoke-static {v2}, Lcom/google/android/gms/internal/bH;->Ag(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cv;->wX:Lcom/google/android/gms/internal/bH;

    invoke-static {v3}, Lcom/google/android/gms/internal/bH;->Aj(Lcom/google/android/gms/internal/bH;)Lcom/google/android/gms/internal/cf;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v3, v3, Lcom/google/android/gms/internal/cA;->xq:Ljava/util/Set;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/common/api/i;->eb(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0
.end method
