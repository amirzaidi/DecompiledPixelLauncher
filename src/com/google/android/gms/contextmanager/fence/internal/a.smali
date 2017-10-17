.class public Lcom/google/android/gms/contextmanager/fence/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NE(Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Oq()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Oo()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Op()Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Om()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->ff(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Or()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fo(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->On()J

    move-result-wide v2

    const/4 v1, 0x7

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->Ol()J

    move-result-wide v2

    const/16 v1, 0x8

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fw(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public NF(I)[Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    return-object v0
.end method

.method public NG(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v1

    move-wide v8, v10

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;-><init>(IILcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;JJ)V

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fS(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->ga(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fA(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fN(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    move-object v4, v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->gh(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v5

    goto :goto_0

    :pswitch_4
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v6, v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fQ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v8

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fL(Landroid/os/Parcel;I)J

    move-result-wide v10

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/a;->NG(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/a;->NF(I)[Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    move-result-object v0

    return-object v0
.end method
