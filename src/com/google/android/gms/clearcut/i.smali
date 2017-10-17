.class public Lcom/google/android/gms/clearcut/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LL(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GH:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GQ:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GK:[B

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fv(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GL:[I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fn(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GI:[Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fk(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GO:[I

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fn(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GP:[[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fd(Landroid/os/Parcel;I[[BZ)V

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->GN:Z

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fa(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 11

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v9

    const/4 v1, 0x0

    const/4 v8, 0x1

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-lt v0, v9, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, v9, :cond_1

    new-instance v0, Lcom/google/android/gms/clearcut/LogEventParcelable;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->CREATOR:Lcom/google/android/gms/playlog/internal/a;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    move-object v2, v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->gf(Landroid/os/Parcel;I)[B

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fK(Landroid/os/Parcel;I)[I

    move-result-object v4

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fU(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fK(Landroid/os/Parcel;I)[I

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fB(Landroid/os/Parcel;I)[[B

    move-result-object v7

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fX(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

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
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/clearcut/i;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/clearcut/LogEventParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/clearcut/i;->newArray(I)[Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    return-object v0
.end method
