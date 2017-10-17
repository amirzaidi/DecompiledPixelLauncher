.class public abstract Lcom/google/android/gms/location/internal/zzi$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/internal/zzi;


# direct methods
.method public static zzle(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzi;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/g;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/location/internal/zzi;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/location/internal/zzi;

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/n;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/internal/zzh$zza;->zzld(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v1, v4}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_0
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move-object v2, v1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzh$zza;->zzld(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzh;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_1
    sget-object v0, Lcom/google/android/gms/location/GeofencingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/GeofencingRequest;

    move-object v2, v0

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzh$zza;->zzld(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzh;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/location/internal/zzh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_3
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/internal/zzh$zza;->zzld(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzh;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/location/internal/zzi$zza;->zza([Ljava/lang/String;Lcom/google/android/gms/location/internal/zzh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_5
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzh$zza;->zzld(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzh;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/internal/zzh;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_6
    const-string/jumbo v2, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    :goto_5
    invoke-virtual {p0, v4, v5, v2, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_5

    :sswitch_7
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move-object v2, v1

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/ActivityRecognitionRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_6
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionRequest;

    move-object v2, v0

    goto :goto_6

    :cond_7
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_7

    :sswitch_8
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    :goto_8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzb(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_8
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_8

    :sswitch_9
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzkg(Ljava/lang/String;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_9

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v3

    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/location/ActivityRecognitionResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_a

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_a
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_a

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_b

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zzb(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_b

    :sswitch_c
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_c

    move-object v2, v1

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_d

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/GestureRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_c
    sget-object v0, Lcom/google/android/gms/location/GestureRequest;->CREATOR:Lcom/google/android/gms/location/s;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/s;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/GestureRequest;

    move-object v2, v0

    goto :goto_c

    :cond_d
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_d

    :sswitch_d
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_e

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zzc(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_e
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_e

    :sswitch_e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_f

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zzd(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_f
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_f

    :sswitch_f
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_10

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzre$zza;->zzgp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zze(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_10
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_10

    :sswitch_10
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/zzi$zza;->zzbrh()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_11

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    return v3

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_12

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/zzf$zza;->zzla(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/zzf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_12
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/n;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/n;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    move-object v1, v0

    goto :goto_12

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_13

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/zzf$zza;->zzla(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/zzf;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_13
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/n;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/n;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    move-object v1, v0

    goto :goto_13

    :sswitch_13
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_14

    move-object v2, v1

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_15

    :goto_15
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_14
    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/n;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/n;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationRequest;

    move-object v2, v0

    goto :goto_14

    :cond_15
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_15

    :sswitch_14
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_16

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/zzf$zza;->zzla(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/zzf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_16
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/s;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/internal/s;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-object v1, v0

    goto :goto_16

    :sswitch_15
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_17

    move-object v2, v1

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_18

    :goto_18
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_17
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/s;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/internal/s;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-object v2, v0

    goto :goto_17

    :cond_18
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_18

    :sswitch_16
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/zzf$zza;->zzla(Landroid/os/IBinder;)Lcom/google/android/gms/location/zzf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/zzf;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_17
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_19

    :goto_19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzc(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_19
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    goto :goto_19

    :sswitch_18
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1a

    :goto_1a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/internal/LocationRequestUpdateData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_1a
    sget-object v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;->CREATOR:Lcom/google/android/gms/location/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/internal/f;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestUpdateData;

    move-object v1, v0

    goto :goto_1a

    :sswitch_19
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1b

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zzcf(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_1b
    move v0, v3

    goto :goto_1b

    :sswitch_1a
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1c

    :goto_1c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzc(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_1c
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v1, v0

    goto :goto_1c

    :sswitch_1b
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzkh(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_1d

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1d
    return v3

    :cond_1d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :sswitch_1c
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1e

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_1e
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v1, v0

    goto :goto_1e

    :sswitch_1d
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzg$zza;->zzlc(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/internal/zzg;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :sswitch_1e
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/location/internal/zzi$zza;->zzki(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v1, :cond_1f

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1f
    return v3

    :cond_1f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/location/LocationAvailability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1f

    :sswitch_1f
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_20

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/zzj$zza;->zzlf(Landroid/os/IBinder;)Lcom/google/android/gms/location/internal/zzj;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/location/internal/zzi$zza;->zza(Lcom/google/android/gms/location/LocationSettingsRequest;Lcom/google/android/gms/location/internal/zzj;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_20
    sget-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    move-object v1, v0

    goto :goto_20

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_10
        0x8 -> :sswitch_11
        0x9 -> :sswitch_13
        0xa -> :sswitch_16
        0xb -> :sswitch_17
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0x14 -> :sswitch_12
        0x15 -> :sswitch_1b
        0x1a -> :sswitch_1c
        0x22 -> :sswitch_1e
        0x34 -> :sswitch_14
        0x35 -> :sswitch_15
        0x39 -> :sswitch_2
        0x3b -> :sswitch_18
        0x3c -> :sswitch_c
        0x3d -> :sswitch_d
        0x3f -> :sswitch_1f
        0x40 -> :sswitch_9
        0x41 -> :sswitch_a
        0x42 -> :sswitch_b
        0x43 -> :sswitch_1d
        0x44 -> :sswitch_e
        0x45 -> :sswitch_f
        0x46 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
