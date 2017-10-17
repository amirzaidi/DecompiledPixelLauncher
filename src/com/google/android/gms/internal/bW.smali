.class public final Lcom/google/android/gms/internal/bW;
.super Ljava/lang/Object;


# instance fields
.field private final wp:Lcom/google/android/gms/common/api/e;

.field private final wq:Lcom/google/android/gms/common/api/k;


# virtual methods
.method public BF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bW;->wp:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BG()Lcom/google/android/gms/common/api/h;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bW;->wp:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->gz()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/internal/bW;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/bW;

    iget-object v2, p0, Lcom/google/android/gms/internal/bW;->wp:Lcom/google/android/gms/common/api/e;

    iget-object v3, p1, Lcom/google/android/gms/internal/bW;->wp:Lcom/google/android/gms/common/api/e;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/bW;->wq:Lcom/google/android/gms/common/api/k;

    iget-object v3, p1, Lcom/google/android/gms/internal/bW;->wq:Lcom/google/android/gms/common/api/k;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/bW;->wp:Lcom/google/android/gms/common/api/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/bW;->wq:Lcom/google/android/gms/common/api/k;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
