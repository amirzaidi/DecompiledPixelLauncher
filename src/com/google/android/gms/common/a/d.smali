.class public final Lcom/google/android/gms/common/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static jy([BIIZ)Ljava/lang/String;
    .locals 12

    const/4 v2, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    array-length v0, p0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x39

    if-nez p3, :cond_2

    :goto_0
    add-int/lit8 v1, p2, 0x10

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v0, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p1

    move v2, p2

    move v0, v4

    move v3, v4

    :goto_1
    if-gtz v2, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x4b

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    if-eq v3, v10, :cond_8

    :goto_2
    new-array v5, v9, [Ljava/lang/Object;

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    const-string/jumbo v6, " %02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    if-nez p3, :cond_9

    :cond_4
    :goto_3
    if-ne v3, v11, :cond_11

    :cond_5
    const/16 v2, 0xa

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_6
    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_7

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string/jumbo v5, "%08X:"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    move v0, v1

    goto :goto_2

    :cond_7
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const-string/jumbo v5, "%04X:"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string/jumbo v5, " -"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    if-ne v3, v11, :cond_d

    :cond_a
    rsub-int/lit8 v5, v3, 0x10

    if-gtz v5, :cond_e

    :cond_b
    if-ge v5, v10, :cond_f

    :goto_6
    const-string/jumbo v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_4

    add-int v2, v0, v5

    aget-byte v2, p0, v2

    int-to-char v2, v2

    const/16 v8, 0x20

    if-ge v2, v8, :cond_10

    :goto_8
    const/16 v2, 0x2e

    :cond_c
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_a

    goto :goto_3

    :cond_e
    move v2, v4

    :goto_9
    if-ge v2, v5, :cond_b

    const-string/jumbo v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    const-string/jumbo v2, "  "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    const/16 v8, 0x7e

    if-le v2, v8, :cond_c

    goto :goto_8

    :cond_11
    if-eqz v6, :cond_5

    move v2, v3

    goto :goto_4
.end method
