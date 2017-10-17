.class public Lcom/google/android/gms/playlog/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static OZ(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IG:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IO:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IL:I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IJ:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IM:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IK:Z

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IH:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->IN:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    iget v1, p0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->II:I

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .locals 13

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v7, 0x1

    move v9, v10

    move-object v6, v8

    move-object v5, v8

    move v4, v10

    move v3, v10

    move-object v2, v8

    move v1, v10

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-lt v11, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v11

    if-ne v11, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZI)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v7

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v10

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
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/playlog/internal/PlayLoggerContext;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/playlog/internal/a;->newArray(I)[Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-result-object v0

    return-object v0
.end method
