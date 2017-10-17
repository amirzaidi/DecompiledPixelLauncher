.class public Lcom/google/android/gms/internal/bP;
.super Lcom/google/android/gms/internal/bi;


# instance fields
.field private final wc:Lcom/google/android/gms/common/a/i;

.field private wd:Lcom/google/android/gms/internal/bG;


# virtual methods
.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/bi;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->wc:Lcom/google/android/gms/common/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->wc:Lcom/google/android/gms/common/a/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/i;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->wd:Lcom/google/android/gms/internal/bG;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/bG;->AQ(Lcom/google/android/gms/internal/bP;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/C;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/C;->hA()V

    goto :goto_0
.end method

.method protected yB()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->wd:Lcom/google/android/gms/internal/bG;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bG;->Bf()V

    return-void
.end method

.method protected yy(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bP;->wd:Lcom/google/android/gms/internal/bG;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bG;->AO(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
