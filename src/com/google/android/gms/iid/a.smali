.class Lcom/google/android/gms/iid/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PW(I)[Lcom/google/android/gms/iid/MessengerCompat;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/iid/MessengerCompat;

    return-object v0
.end method

.method public PX(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {v0, v1}, Lcom/google/android/gms/iid/MessengerCompat;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/a;->PX(Landroid/os/Parcel;)Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/iid/a;->PW(I)[Lcom/google/android/gms/iid/MessengerCompat;

    move-result-object v0

    return-object v0
.end method
