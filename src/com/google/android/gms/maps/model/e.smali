.class public Lcom/google/android/gms/maps/model/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static IS(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Tile;->Kd()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/maps/model/Tile;->Fb:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/maps/model/Tile;->Fc:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Tile;->Fd:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->fv(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public IT(I)[Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/Tile;

    return-object v0
.end method

.method public IU(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/Tile;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v4

    const/4 v0, 0x0

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ne v5, v4, :cond_1

    new-instance v4, Lcom/google/android/gms/maps/model/Tile;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-object v4

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->gf(Landroid/os/Parcel;I)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/e;->IU(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/Tile;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/e;->IT(I)[Lcom/google/android/gms/maps/model/Tile;

    move-result-object v0

    return-object v0
.end method
