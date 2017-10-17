.class Lcom/google/android/gms/common/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/c;


# instance fields
.field final synthetic iN:Lcom/google/android/gms/common/internal/x;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/w;->iN:Lcom/google/android/gms/common/internal/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jp(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->qj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->iN:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->kH(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->iN:Lcom/google/android/gms/common/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/w;->iN:Lcom/google/android/gms/common/internal/x;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/x;->la()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/x;->gI(Lcom/google/android/gms/common/internal/zzq;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/w;->iN:Lcom/google/android/gms/common/internal/x;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/x;->kH(Lcom/google/android/gms/common/internal/x;)Lcom/google/android/gms/common/internal/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/q;->kq(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
