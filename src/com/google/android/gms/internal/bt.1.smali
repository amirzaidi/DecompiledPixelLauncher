.class Lcom/google/android/gms/internal/bt;
.super Lcom/google/android/gms/internal/bl;


# instance fields
.field final synthetic uD:Lcom/google/android/gms/internal/bK;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bK;Lcom/google/android/gms/internal/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bt;->uD:Lcom/google/android/gms/internal/bK;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/ci;)V

    return-void
.end method


# virtual methods
.method public yq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bt;->uD:Lcom/google/android/gms/internal/bK;

    invoke-static {v0}, Lcom/google/android/gms/internal/bK;->Bq(Lcom/google/android/gms/internal/bK;)Lcom/google/android/gms/internal/bZ;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/bZ;->wJ:Lcom/google/android/gms/internal/bV;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bV;->Bs(Landroid/os/Bundle;)V

    return-void
.end method
