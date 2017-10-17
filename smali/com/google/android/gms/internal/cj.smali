.class public final Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/internal/bI;


# instance fields
.field public final wN:Lcom/google/android/gms/internal/b;


# virtual methods
.method public AL(Lcom/google/android/gms/common/api/o;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/b;->rq(Lcom/google/android/gms/common/api/o;)V

    return-void
.end method

.method public AM(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/b;->rs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public AN(Landroid/util/SparseArray;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/cj;->vi:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bW;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bW;->BB(Lcom/google/android/gms/internal/b;)V

    goto :goto_0
.end method

.method public cancel()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->wN:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->rR()Z

    move-result v0

    return v0
.end method
