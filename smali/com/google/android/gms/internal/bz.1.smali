.class Lcom/google/android/gms/internal/bz;
.super Lcom/google/android/gms/internal/br;


# instance fields
.field final synthetic ux:Lcom/google/android/gms/internal/bQ;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bQ;Lcom/google/android/gms/internal/co;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bz;->ux:Lcom/google/android/gms/internal/bQ;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/co;)V

    return-void
.end method


# virtual methods
.method public yr()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bz;->ux:Lcom/google/android/gms/internal/bQ;

    invoke-static {v0}, Lcom/google/android/gms/internal/bQ;->Br(Lcom/google/android/gms/internal/bQ;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->wD:Lcom/google/android/gms/internal/cb;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cb;->Bt(Landroid/os/Bundle;)V

    return-void
.end method
