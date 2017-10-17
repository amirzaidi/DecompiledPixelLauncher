.class public Lcom/google/android/gms/common/internal/safeparcel/a;
.super Ljava/lang/Object;


# direct methods
.method public static hH(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hI(Landroid/os/Parcel;IS)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static hJ(Landroid/os/Parcel;I[JZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hK(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hL(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hM(Landroid/os/Parcel;)I
    .locals 1

    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    return v0
.end method

.method private static hN(Landroid/os/Parcel;II)V
    .locals 1

    const v0, 0xffff

    if-ge p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public static hO(Landroid/os/Parcel;IZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hP(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static hQ(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_2

    invoke-static {p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_3

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ia(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public static hR(Landroid/os/Parcel;I[[BZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v1

    array-length v2, p2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-lt v0, v2, :cond_2

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hS(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static hT(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hU(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hV(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {p0, p2, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hW(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static hX(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static hY(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method private static hZ(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    return v0
.end method

.method private static ia(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static ib(Landroid/os/Parcel;I[IZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static ic(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static id(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v2

    array-length v3, p2

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_2

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_1

    :cond_2
    aget-object v4, p2, v0

    if-eqz v4, :cond_3

    invoke-static {p0, v4, p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ia(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public static ie(Landroid/os/Parcel;ID)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static if(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static ig(Landroid/os/Parcel;IF)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method private static ih(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 v2, p1, -0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static ii(Landroid/os/Parcel;IB)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static ij(Landroid/os/Parcel;I[BZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hZ(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ih(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    goto :goto_0
.end method

.method public static ik(Landroid/os/Parcel;IJ)V
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hN(Landroid/os/Parcel;II)V

    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
