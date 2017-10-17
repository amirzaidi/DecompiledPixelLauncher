.class public Lcom/google/android/gms/location/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ij(Lcom/google/android/gms/location/FloorChangeEvent;Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Io()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Im()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Iq()J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Ip()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->In()J

    move-result-wide v2

    const/4 v1, 0x5

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Is()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Il()F

    move-result v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/FloorChangeEvent;->Ir()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/FloorChangeEvent;
    .locals 17

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-lt v15, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ne v15, v2, :cond_1

    new-instance v2, Lcom/google/android/gms/location/FloorChangeEvent;

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/location/FloorChangeEvent;-><init>(IIIJJJJF)V

    return-object v2

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v6

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v12

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v14

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Overread allowed size end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

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
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/u;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/FloorChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/location/FloorChangeEvent;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/location/FloorChangeEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/u;->newArray(I)[Lcom/google/android/gms/location/FloorChangeEvent;

    move-result-object v0

    return-object v0
.end method
