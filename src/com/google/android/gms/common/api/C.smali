.class public abstract Lcom/google/android/gms/common/api/C;
.super Ljava/lang/Object;


# instance fields
.field private final eC:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final eD:I

.field private final eE:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final eF:Lcom/google/android/gms/common/api/h;

.field private final eG:Lcom/google/android/gms/common/api/m;

.field private final eH:Lcom/google/android/gms/internal/bM;

.field private final eI:Lcom/google/android/gms/internal/bE;

.field private final eJ:Lcom/google/android/gms/internal/cc;

.field private final mContext:Landroid/content/Context;


# virtual methods
.method public eI()Lcom/google/android/gms/common/api/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->eG:Lcom/google/android/gms/common/api/m;

    return-object v0
.end method

.method public eJ()Lcom/google/android/gms/internal/cc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->eJ:Lcom/google/android/gms/internal/cc;

    return-object v0
.end method

.method public eK()Lcom/google/android/gms/common/api/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->eF:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method public eL()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/C;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public eM()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->eC:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->eI:Lcom/google/android/gms/internal/bE;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bE;->zR()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/C;->eH:Lcom/google/android/gms/internal/bM;

    iget v3, p0, Lcom/google/android/gms/common/api/C;->eD:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/C;->eE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/bM;->Be(IZ)V

    return-void

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
