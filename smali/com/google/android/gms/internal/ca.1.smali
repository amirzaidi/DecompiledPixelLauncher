.class public Lcom/google/android/gms/internal/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/co;


# instance fields
.field private final wi:Lcom/google/android/gms/internal/cf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ca;->wi:Lcom/google/android/gms/internal/cf;

    return-void
.end method


# virtual methods
.method public AD(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/h;I)V
    .locals 0

    return-void
.end method

.method public Ac(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->wi:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    iget-object v0, v0, Lcom/google/android/gms/internal/cA;->xg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public Ad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Ah(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public At()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->wi:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->BZ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->wi:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wC:Lcom/google/android/gms/internal/cA;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cA;->xq:Ljava/util/Set;

    return-void
.end method

.method public Au(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Az(I)V
    .locals 0

    return-void
.end method

.method public zY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ca;->wi:Lcom/google/android/gms/internal/cf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->BV()V

    return-void
.end method
