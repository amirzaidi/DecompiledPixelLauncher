.class Lcom/google/android/gms/internal/bE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field private final vr:Lcom/google/android/gms/common/api/g;

.field final synthetic vs:Lcom/google/android/gms/internal/bG;

.field private final vt:Lcom/google/android/gms/internal/bW;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bG;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/internal/bW;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bE;->vs:Lcom/google/android/gms/internal/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/bE;->vr:Lcom/google/android/gms/common/api/g;

    iput-object p3, p0, Lcom/google/android/gms/internal/bE;->vt:Lcom/google/android/gms/internal/bW;

    return-void
.end method


# virtual methods
.method public jp(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bE;->vs:Lcom/google/android/gms/internal/bG;

    invoke-static {v0}, Lcom/google/android/gms/internal/bG;->Bm(Lcom/google/android/gms/internal/bG;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bE;->vt:Lcom/google/android/gms/internal/bW;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bw;->gw(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bE;->vr:Lcom/google/android/gms/common/api/g;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/g;->gI(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0
.end method
