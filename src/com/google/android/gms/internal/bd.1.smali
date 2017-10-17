.class Lcom/google/android/gms/internal/bd;
.super Lcom/google/android/gms/internal/bl;


# instance fields
.field final synthetic tY:Lcom/google/android/gms/internal/be;

.field final synthetic tZ:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/be;Lcom/google/android/gms/internal/ci;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bd;->tY:Lcom/google/android/gms/internal/be;

    iput-object p3, p0, Lcom/google/android/gms/internal/bd;->tZ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/ci;)V

    return-void
.end method


# virtual methods
.method public yq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->tY:Lcom/google/android/gms/internal/be;

    iget-object v0, v0, Lcom/google/android/gms/internal/be;->ua:Lcom/google/android/gms/internal/bB;

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->tZ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bB;->Ae(Lcom/google/android/gms/internal/bB;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
