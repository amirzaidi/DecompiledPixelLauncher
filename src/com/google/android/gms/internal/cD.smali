.class public final Lcom/google/android/gms/internal/cd;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field public final wT:Lcom/google/android/gms/internal/b;


# virtual methods
.method public AK(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method

.method public AL(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/b;->ru(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public AM(Landroid/util/SparseArray;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cd;->vo:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bQ;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bQ;->BA(Lcom/google/android/gms/internal/b;)V

    goto :goto_0
.end method

.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cd;->wT:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->rT()Z

    move-result v0

    return v0
.end method
