.class public Lcom/google/android/gms/maps/model/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ID(Lcom/google/android/gms/maps/model/GroundOverlayOptions;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JL()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JC()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ff(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JD()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getWidth()F

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->getHeight()F

    move-result v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JJ()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JH()F

    move-result v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JI()F

    move-result v1

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->isVisible()Z

    move-result v1

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JE()F

    move-result v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JG()F

    move-result v1

    const/16 v2, 0xb

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JF()F

    move-result v1

    const/16 v2, 0xc

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fs(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->JK()Z

    move-result v1

    const/16 v2, 0xd

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public IC(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 17

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-lt v1, v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ne v1, v15, :cond_1

    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/maps/model/LatLng;FFLcom/google/android/gms/maps/model/LatLngBounds;FFZFFFZ)V

    return-object v1

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gh(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    move-object v4, v1

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v5

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v6

    goto :goto_0

    :pswitch_5
    sget-object v7, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/q;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v7}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object v7, v1

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v8

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v9

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v11

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v12

    goto :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->gj(Landroid/os/Parcel;I)F

    move-result v13

    goto :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v14

    goto/16 :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public IE(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/c;->IC(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/model/c;->IE(I)[Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    return-object v0
.end method
