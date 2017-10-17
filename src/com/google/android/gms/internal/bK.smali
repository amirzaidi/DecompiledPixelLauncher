.class Lcom/google/android/gms/internal/bK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field private final vl:Lcom/google/android/gms/common/api/i;

.field final synthetic vm:Lcom/google/android/gms/internal/bM;

.field private final vn:Lcom/google/android/gms/internal/cc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bM;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/internal/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bK;->vm:Lcom/google/android/gms/internal/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bK;->vl:Lcom/google/android/gms/common/api/i;

    iput-object p3, p0, Lcom/google/android/gms/internal/bK;->vn:Lcom/google/android/gms/internal/cc;

    return-void
.end method


# virtual methods
.method public gB(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->nw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vm:Lcom/google/android/gms/internal/bM;

    invoke-static {v0}, Lcom/google/android/gms/internal/bM;->Bn(Lcom/google/android/gms/internal/bM;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bK;->vn:Lcom/google/android/gms/internal/cc;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bC;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bC;->dQ(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bK;->vl:Lcom/google/android/gms/common/api/i;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/i;->eb(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0
.end method
