.class public Lcom/google/android/gms/location/GeofencingRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final ER:I

.field private final ES:I

.field private final ET:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/GeofencingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/GeofencingRequest;->ER:I

    iput-object p2, p0, Lcom/google/android/gms/location/GeofencingRequest;->ET:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/location/GeofencingRequest;->ES:I

    return-void
.end method


# virtual methods
.method public IQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->ES:I

    return v0
.end method

.method public IR()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->ET:Ljava/util/List;

    return-object v0
.end method

.method public IS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->ER:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/l;->Ik(Lcom/google/android/gms/location/GeofencingRequest;Landroid/os/Parcel;I)V

    return-void
.end method
