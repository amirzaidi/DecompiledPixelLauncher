.class public Lcom/google/android/gms/common/internal/safeparcel/b;
.super Ljava/lang/Object;


# direct methods
.method public static fA(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static fB(Landroid/os/Parcel;I)[[B
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [[B

    :goto_0
    if-lt v0, v3, :cond_1

    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v4

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fC(Landroid/os/Parcel;I)[F
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fD(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_0
    return-void
.end method

.method public static fE(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fY(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fF(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fG(Landroid/os/Parcel;I)Ljava/lang/Float;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fY(Landroid/os/Parcel;III)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fH(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    :goto_0
    if-lt v0, v4, :cond_1

    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fI(Landroid/os/Parcel;I)B
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static fJ(Landroid/os/Parcel;)I
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-ne v3, v4, :cond_1

    add-int v0, v2, v1

    if-ge v0, v2, :cond_3

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Size read is invalid start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "Expected object header. Got 0x"

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    return v0
.end method

.method public static fK(Landroid/os/Parcel;I)[I
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fL(Landroid/os/Parcel;I)J
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static fM(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fN(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static fO(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v1, -0x10000

    and-int v0, p1, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static fP(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fQ(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fR(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fS(Landroid/os/Parcel;)I
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public static fT(Landroid/os/Parcel;I)[J
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fU(Landroid/os/Parcel;I)[Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fV(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .locals 9

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [Ljava/math/BigDecimal;

    :goto_0
    if-lt v0, v3, :cond_1

    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v4

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v7, Ljava/math/BigDecimal;

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v7, v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fX(Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static fY(Landroid/os/Parcel;III)V
    .locals 4

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Expected size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static fZ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fx(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fy(Landroid/os/Parcel;I)S
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static fz(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [Landroid/os/Parcel;

    :goto_0
    if-lt v0, v3, :cond_1

    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v4

    :cond_0
    return-object v8

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_2

    aput-object v8, v4, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    aput-object v7, v4, v0

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_1
.end method

.method public static ga(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static gb(Landroid/os/Parcel;I)D
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static gc(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v4, v3, [Ljava/math/BigInteger;

    :goto_0
    if-lt v0, v3, :cond_1

    add-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v4

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gd(Landroid/os/Parcel;I)[Z
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static ge(Landroid/os/Parcel;II)V
    .locals 5

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Expected size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " (0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method public static gf(Landroid/os/Parcel;I)[B
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gg(Landroid/os/Parcel;I)[D
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gh(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 3

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gi(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .locals 4

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fO(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static gj(Landroid/os/Parcel;I)F
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ge(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method
