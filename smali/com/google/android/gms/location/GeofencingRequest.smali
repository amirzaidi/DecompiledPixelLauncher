.class public Lcom/google/android/gms/location/GeofencingRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Dm:I

.field private final Dn:I

.field private final Do:Ljava/util/List;


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

    iput p1, p0, Lcom/google/android/gms/location/GeofencingRequest;->Dm:I

    iput-object p2, p0, Lcom/google/android/gms/location/GeofencingRequest;->Do:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/location/GeofencingRequest;->Dn:I

    return-void
.end method


# virtual methods
.method public HX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->Dn:I

    return v0
.end method

.method public HY()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->Do:Ljava/util/List;

    return-object v0
.end method

.method public HZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/GeofencingRequest;->Dm:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/l;->Hr(Lcom/google/android/gms/location/GeofencingRequest;Landroid/os/Parcel;I)V

    return-void
.end method
