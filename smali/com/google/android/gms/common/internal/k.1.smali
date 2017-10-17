.class Lcom/google/android/gms/common/internal/k;
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
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/k;->hm(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/BinderWrapper;

    move-result-object v0

    return-object v0
.end method

.method public hm(Landroid/os/Parcel;)Lcom/google/android/gms/common/internal/BinderWrapper;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/common/internal/k;)V

    return-object v0
.end method

.method public hn(I)[Lcom/google/android/gms/common/internal/BinderWrapper;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/common/internal/BinderWrapper;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/k;->hn(I)[Lcom/google/android/gms/common/internal/BinderWrapper;

    move-result-object v0

    return-object v0
.end method
