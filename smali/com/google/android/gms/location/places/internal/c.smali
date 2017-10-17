.class public Lcom/google/android/gms/location/places/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CZ(Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yU:F

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yR:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yP:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fr(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yQ:I

    const/16 v2, 0x3e8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Da(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v7

    move v3, v4

    move-object v2, v6

    move v1, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-lt v0, v7, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, v7, :cond_1

    new-instance v0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;-><init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;FFILjava/util/List;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v2, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    move-object v2, v0

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v3

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v4

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fR(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public Db(I)[Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/c;->Da(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/c;->Db(I)[Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    move-result-object v0

    return-object v0
.end method
