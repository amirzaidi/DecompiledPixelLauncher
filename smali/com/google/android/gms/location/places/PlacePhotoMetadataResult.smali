.class public Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final zT:Lcom/google/android/gms/common/api/Status;

.field final zU:I

.field final zV:Lcom/google/android/gms/common/data/DataHolder;

.field private final zW:Lcom/google/android/gms/location/places/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zU:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zT:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zV:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/e;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zV:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/places/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zW:Lcom/google/android/gms/location/places/e;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zW:Lcom/google/android/gms/location/places/e;

    goto :goto_0
.end method


# virtual methods
.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;->zT:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/k;->EJ(Lcom/google/android/gms/location/places/PlacePhotoMetadataResult;Landroid/os/Parcel;I)V

    return-void
.end method
