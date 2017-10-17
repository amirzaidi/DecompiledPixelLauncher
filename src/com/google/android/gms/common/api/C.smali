.class public abstract Lcom/google/android/gms/common/api/C;
.super Ljava/lang/Object;


# instance fields
.field private final hA:Lcom/google/android/gms/internal/bG;

.field private final hB:Lcom/google/android/gms/internal/by;

.field private final hC:Lcom/google/android/gms/internal/bW;

.field private final hv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final hw:I

.field private final hx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hy:Lcom/google/android/gms/common/api/e;

.field private final hz:Lcom/google/android/gms/common/api/k;

.field private final mContext:Landroid/content/Context;


# virtual methods
.method public hA()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->hv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->hB:Lcom/google/android/gms/internal/by;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/by;->zQ()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->hA:Lcom/google/android/gms/internal/bG;

    iget v3, p0, Lcom/google/android/gms/common/api/C;->hw:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/C;->hx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/bG;->Bd(IZ)V

    return-void

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hw()Lcom/google/android/gms/common/api/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->hz:Lcom/google/android/gms/common/api/k;

    return-object v0
.end method

.method public hx()Lcom/google/android/gms/internal/bW;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->hC:Lcom/google/android/gms/internal/bW;

    return-object v0
.end method

.method public hy()Lcom/google/android/gms/common/api/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->hy:Lcom/google/android/gms/common/api/e;

    return-object v0
.end method

.method public hz()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->mContext:Landroid/content/Context;

    return-object v0
.end method
