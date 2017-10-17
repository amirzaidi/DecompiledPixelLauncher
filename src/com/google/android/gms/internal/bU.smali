.class public Lcom/google/android/gms/internal/bU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ci;


# instance fields
.field private final wo:Lcom/google/android/gms/internal/bZ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bU;->wo:Lcom/google/android/gms/internal/bZ;

    return-void
.end method


# virtual methods
.method public AC(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/e;I)V
    .locals 0

    return-void
.end method

.method public Ab(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bU;->wo:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    iget-object v0, v0, Lcom/google/android/gms/internal/cu;->xm:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public Ac()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Ag(Lcom/google/android/gms/internal/b;)Lcom/google/android/gms/internal/b;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public As()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bU;->wo:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->BY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bU;->wo:Lcom/google/android/gms/internal/bZ;

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wI:Lcom/google/android/gms/internal/cu;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/cu;->xw:Ljava/util/Set;

    return-void
.end method

.method public At(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public Ay(I)V
    .locals 0

    return-void
.end method

.method public zX()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bU;->wo:Lcom/google/android/gms/internal/bZ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bZ;->BU()V

    return-void
.end method
