.class public Lcom/google/android/gms/location/reporting/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GK(Lcom/google/android/gms/location/reporting/ReportingState;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hM(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GZ()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GY()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GU()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GS()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hO(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GT()Z

    move-result v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hO(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GX()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GR()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->hW(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GV()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hX(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/reporting/ReportingState;->GW()Z

    move-result v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->hO(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->hS(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 12

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ix(Landroid/os/Parcel;)I

    move-result v0

    const/4 v8, 0x0

    move v7, v9

    move v6, v9

    move v5, v9

    move v4, v9

    move v3, v9

    move v2, v9

    move v1, v9

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-lt v10, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ne v10, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/location/reporting/ReportingState;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/location/reporting/ReportingState;-><init>(IIIZZIILjava/lang/Integer;Z)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->iG(Landroid/os/Parcel;)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iO(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->io(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iL(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iL(Landroid/os/Parcel;I)Z

    move-result v5

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->is(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iB(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v10}, Lcom/google/android/gms/common/internal/safeparcel/b;->iL(Landroid/os/Parcel;I)Z

    move-result v9

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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/reporting/a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/reporting/ReportingState;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/reporting/ReportingState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/reporting/a;->newArray(I)[Lcom/google/android/gms/location/reporting/ReportingState;

    move-result-object v0

    return-object v0
.end method
