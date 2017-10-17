.class public Lcom/google/android/gms/playlog/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Pb(Lcom/google/android/gms/playlog/internal/LogEvent;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IP:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IQ:J

    const/4 v1, 0x2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IU:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IS:[B

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fv(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IT:Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->eT(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/playlog/internal/LogEvent;->IR:J

    const/4 v1, 0x6

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Pa(I)[Lcom/google/android/gms/playlog/internal/LogEvent;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/playlog/internal/LogEvent;

    return-object v0
.end method

.method public Pc(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/LogEvent;
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v7, v8

    move-object v6, v8

    move-wide v2, v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-lt v9, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ne v9, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/playlog/internal/LogEvent;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/LogEvent;-><init>(IJJLjava/lang/String;[BLandroid/os/Bundle;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->gf(Landroid/os/Parcel;I)[B

    move-result-object v7

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fP(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v8

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v9}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v4

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/b;->Pc(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/LogEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/b;->Pa(I)[Lcom/google/android/gms/playlog/internal/LogEvent;

    move-result-object v0

    return-object v0
.end method
