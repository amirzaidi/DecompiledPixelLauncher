.class public abstract Lcom/google/android/gms/location/zze$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/zze;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/location/zze$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzkz(Landroid/os/IBinder;)Lcom/google/android/gms/location/zze;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/location/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/f;-><init>(Landroid/os/IBinder;)V

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/location/zze;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/location/zze;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string/jumbo v1, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/zze$zza;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationResult;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.google.android.gms.location.ILocationCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/zze$zza;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    return v2

    :cond_1
    sget-object v0, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Lcom/google/android/gms/location/h;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/h;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/LocationAvailability;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
