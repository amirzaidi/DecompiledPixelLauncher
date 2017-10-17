.class public Lcom/google/android/gms/location/places/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CV(Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->yh:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->yi:F

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;->yg:I

    const/16 v2, 0x3e8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public CT(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ne v4, v3, :cond_1

    new-instance v3, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;-><init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;F)V

    return-object v3

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    :goto_1
    move v6, v1

    move-object v1, v0

    move v0, v6

    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Lcom/google/android/gms/location/places/internal/i;

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    goto :goto_1

    :sswitch_1
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public CU(I)[Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/a;->CT(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/a;->CU(I)[Lcom/google/android/gms/location/places/internal/PlaceLikelihoodEntity;

    move-result-object v0

    return-object v0
.end method
