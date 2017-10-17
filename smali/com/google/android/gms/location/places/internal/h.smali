.class public Lcom/google/android/gms/location/places/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DC(Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fb(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fc(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xY:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fc(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yb:I

    const/16 v2, 0x3e8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fc(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public DA(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;
    .locals 13

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v0

    move-object v9, v10

    move-object v8, v10

    move-object v7, v10

    move-object v6, v10

    move-object v5, v10

    move-object v3, v10

    move-object v2, v10

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-lt v11, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ne v11, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fH(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    sget-object v6, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v11, v6}, Lcom/google/android/gms/common/internal/safeparcel/b;->fZ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :sswitch_6
    sget-object v8, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v11, v8}, Lcom/google/android/gms/common/internal/safeparcel/b;->fZ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_8
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :sswitch_9
    sget-object v10, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity$SubstringEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v11, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->fZ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method public DB(I)[Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/h;->DA(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/internal/h;->DB(I)[Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    move-result-object v0

    return-object v0
.end method
