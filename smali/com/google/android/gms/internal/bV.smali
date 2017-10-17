.class public Lcom/google/android/gms/internal/bV;
.super Lcom/google/android/gms/internal/bo;


# instance fields
.field private final vW:Lcom/google/android/gms/common/a/i;

.field private vX:Lcom/google/android/gms/internal/bM;


# virtual methods
.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/bo;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bV;->vW:Lcom/google/android/gms/common/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bV;->vW:Lcom/google/android/gms/common/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/i;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bV;->vX:Lcom/google/android/gms/internal/bM;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bM;->AR(Lcom/google/android/gms/internal/bV;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/C;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/C;->eM()V

    goto :goto_0
.end method

.method protected yC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bV;->vX:Lcom/google/android/gms/internal/bM;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bM;->Bg()V

    return-void
.end method

.method protected yz(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bV;->vX:Lcom/google/android/gms/internal/bM;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bM;->AP(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
