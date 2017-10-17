.class public Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final AA:I

.field final AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

.field final AC:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AA:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iput p3, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AC:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget v2, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AC:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AC:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AC:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->kx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AB:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const-string/jumbo v2, "nearby place"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;->AC:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "likelihood"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/e;->DX(Lcom/google/android/gms/location/places/internal/NearbyLikelihoodEntity;Landroid/os/Parcel;I)V

    return-void
.end method
