.class public final Lcom/google/android/gms/common/internal/u;
.super Ljava/lang/Object;


# direct methods
.method public static hH(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static varargs hI([Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/n;-><init>(Ljava/lang/Object;Lcom/google/android/gms/common/internal/y;)V

    return-object v0
.end method
