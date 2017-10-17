.class public final Lcom/google/android/gms/common/images/g;
.super Lcom/google/android/gms/common/images/i;


# instance fields
.field private mw:Ljava/lang/ref/WeakReference;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/g;

    if-eqz v0, :cond_1

    if-eq p0, p1, :cond_2

    check-cast p1, Lcom/google/android/gms/common/images/g;

    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->mw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/e;

    iget-object v1, p1, Lcom/google/android/gms/common/images/g;->mw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/e;

    if-nez v1, :cond_3

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/common/images/g;->mG:Lcom/google/android/gms/common/images/f;

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->mG:Lcom/google/android/gms/common/images/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->mG:Lcom/google/android/gms/common/images/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected pw(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 2

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->mw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->mG:Lcom/google/android/gms/common/images/f;

    iget-object v1, v1, Lcom/google/android/gms/common/images/f;->mt:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/e;->pu(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method
