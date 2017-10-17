.class public Lcom/google/android/gms/location/places/PlacePhotoResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final zQ:Lcom/google/android/gms/common/api/Status;

.field final zR:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field final zS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlacePhotoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/BitmapTeleporter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zS:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zQ:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zR:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zR:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/common/data/BitmapTeleporter;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zQ:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->zQ:Lcom/google/android/gms/common/api/Status;

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlacePhotoResult;->mBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "bitmap"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/g;->Es(Lcom/google/android/gms/location/places/PlacePhotoResult;Landroid/os/Parcel;I)V

    return-void
.end method
