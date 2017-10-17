.class public Lcom/google/android/gms/phenotype/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static py(Lcom/google/android/gms/phenotype/Flag;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->lc:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->le:J

    const/4 v1, 0x3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/phenotype/Flag;->lf:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->kY:D

    const/4 v1, 0x5

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fq(Landroid/os/Parcel;ID)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->kW:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/phenotype/Flag;->lb:[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fv(Landroid/os/Parcel;I[BZ)V

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->ld:I

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->kZ:I

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/v;->px(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/phenotype/v;->pz(I)[Lcom/google/android/gms/phenotype/Flag;

    move-result-object v0

    return-object v0
.end method

.method public px(Landroid/os/Parcel;)Lcom/google/android/gms/phenotype/Flag;
    .locals 14

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x0

    move v10, v11

    move-object v8, v9

    move v5, v11

    move-object v2, v9

    move v1, v11

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-lt v12, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    if-ne v12, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/phenotype/Flag;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/phenotype/Flag;-><init>(ILjava/lang/String;JZDLjava/lang/String;[BII)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->gb(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->gf(Landroid/os/Parcel;I)[B

    move-result-object v9

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v12}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v11

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public pz(I)[Lcom/google/android/gms/phenotype/Flag;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/phenotype/Flag;

    return-object v0
.end method
