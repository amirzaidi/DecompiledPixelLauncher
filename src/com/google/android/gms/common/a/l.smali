.class public final Lcom/google/android/gms/common/a/l;
.super Ljava/lang/Object;


# direct methods
.method public static mA(Ljava/lang/StringBuilder;[I)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static mB(Ljava/lang/StringBuilder;[J)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static mC(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-boolean v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static mD(Ljava/lang/StringBuilder;[D)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static mE(Ljava/lang/StringBuilder;[F)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static my(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static mz(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
