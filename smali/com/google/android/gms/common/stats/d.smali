.class public Lcom/google/android/gms/common/stats/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ms(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->jh:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->lI()J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mi()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mj()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mk()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mp()J

    move-result-wide v2

    const/16 v1, 0xa

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->ml()J

    move-result-wide v2

    const/16 v1, 0xb

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->lJ()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->mn()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {p1, v2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/stats/d;->mr(Landroid/os/Parcel;)Lcom/google/android/gms/common/stats/ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mq(I)[Lcom/google/android/gms/common/stats/ConnectionEvent;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/stats/ConnectionEvent;

    return-object v0
.end method

.method public mr(Landroid/os/Parcel;)Lcom/google/android/gms/common/stats/ConnectionEvent;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-lt v3, v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ne v3, v2, :cond_1

    new-instance v3, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v3

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v5

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v14

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v16

    goto :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/stats/d;->mq(I)[Lcom/google/android/gms/common/stats/ConnectionEvent;

    move-result-object v0

    return-object v0
.end method
