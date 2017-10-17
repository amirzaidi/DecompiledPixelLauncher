.class public final Lcom/google/android/gms/internal/aR;
.super Ljava/lang/Object;


# static fields
.field protected static final tq:Ljava/nio/charset/Charset;

.field protected static final tr:Ljava/nio/charset/Charset;

.field public static final ts:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/aR;->tr:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/aR;->tq:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aR;->ts:Ljava/lang/Object;

    return-void
.end method

.method public static wW([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    move v7, v0

    :goto_0
    if-eqz p1, :cond_4

    array-length v0, p1

    :goto_1
    move v2, v1

    move v6, v1

    :goto_2
    if-lt v6, v7, :cond_5

    :cond_0
    move v5, v2

    :goto_3
    if-lt v5, v0, :cond_6

    :cond_1
    if-ge v6, v7, :cond_7

    move v4, v1

    :goto_4
    if-ge v5, v0, :cond_8

    move v2, v1

    :goto_5
    if-nez v4, :cond_9

    :cond_2
    if-ne v4, v2, :cond_a

    aget-object v2, p0, v6

    aget-object v4, p1, v5

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v5, 0x1

    move v6, v4

    goto :goto_2

    :cond_3
    move v7, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    aget-object v4, p0, v6

    if-nez v4, :cond_0

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_6
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_2

    return v3

    :cond_a
    return v1

    :cond_b
    return v1
.end method

.method public static wX([[B[[B)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    move v7, v0

    :goto_0
    if-eqz p1, :cond_4

    array-length v0, p1

    :goto_1
    move v2, v1

    move v6, v1

    :goto_2
    if-lt v6, v7, :cond_5

    :cond_0
    move v5, v2

    :goto_3
    if-lt v5, v0, :cond_6

    :cond_1
    if-ge v6, v7, :cond_7

    move v4, v1

    :goto_4
    if-ge v5, v0, :cond_8

    move v2, v1

    :goto_5
    if-nez v4, :cond_9

    :cond_2
    if-ne v4, v2, :cond_a

    aget-object v2, p0, v6

    aget-object v4, p1, v5

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v2, v5, 0x1

    move v6, v4

    goto :goto_2

    :cond_3
    move v7, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    aget-object v4, p0, v6

    if-nez v4, :cond_0

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    :cond_6
    aget-object v2, p1, v5

    if-nez v2, :cond_1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_2

    return v3

    :cond_a
    return v1

    :cond_b
    return v1
.end method

.method public static wY([J[J)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    array-length v1, p0

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    :cond_3
    array-length v1, p1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public static wZ([J)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static xa([I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static xb(Lcom/google/android/gms/internal/aU;Lcom/google/android/gms/internal/aU;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aL;

    iput-object v0, p1, Lcom/google/android/gms/internal/aU;->tz:Lcom/google/android/gms/internal/aL;

    goto :goto_0
.end method

.method public static xc([[B)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_1

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    aget-object v3, p0, v2

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0x1f

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2
.end method

.method public static xd([I[I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_2

    :cond_0
    if-nez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    array-length v1, p0

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    :cond_3
    array-length v1, p1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public static xe([Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_1

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    aget-object v3, p0, v2

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2
.end method
