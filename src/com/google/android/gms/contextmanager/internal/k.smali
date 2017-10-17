.class public Lcom/google/android/gms/contextmanager/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Ne(Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->eY(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Ms()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->fj(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Mt()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fc(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Mr()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->fr(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;->Mq()Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->eW(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->fe(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public Nf(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->fJ(Landroid/os/Parcel;)I

    move-result v4

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ne v5, v4, :cond_1

    new-instance v4, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;)V

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
    sget-object v2, Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl$Inclusion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->fZ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/b;->fR(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->fW(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/contextmanager/internal/QueryFilterParameters;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public Ng(I)[Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/k;->Nf(Landroid/os/Parcel;)Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/contextmanager/internal/k;->Ng(I)[Lcom/google/android/gms/contextmanager/internal/ContextDataFilterImpl;

    move-result-object v0

    return-object v0
.end method
