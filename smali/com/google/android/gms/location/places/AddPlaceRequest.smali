.class public Lcom/google/android/gms/location/places/AddPlaceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final zp:Lcom/google/android/gms/maps/model/LatLng;

.field private final zq:Ljava/lang/String;

.field private final zr:Ljava/util/List;

.field private final zs:Landroid/net/Uri;

.field final zt:I

.field private final zu:Ljava/lang/String;

.field private final zv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AddPlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zt:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->hr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zq:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zp:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/l;->hr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zu:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zr:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "At least one place type should be provided."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :goto_1
    const-string/jumbo v0, "One of phone number or URI should be provided."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iput-object p6, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zv:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zs:Landroid/net/Uri;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-nez p7, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public DL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zu:Ljava/lang/String;

    return-object v0
.end method

.method public DM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zq:Ljava/lang/String;

    return-object v0
.end method

.method public DN()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zs:Landroid/net/Uri;

    return-object v0
.end method

.method public DO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zv:Ljava/lang/String;

    return-object v0
.end method

.method public DP()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zp:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public DQ()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zr:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zq:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zp:Lcom/google/android/gms/maps/model/LatLng;

    const-string/jumbo v2, "latLng"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zu:Ljava/lang/String;

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zr:Ljava/util/List;

    const-string/jumbo v2, "placeTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zv:Ljava/lang/String;

    const-string/jumbo v2, "phoneNumer"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/AddPlaceRequest;->zs:Landroid/net/Uri;

    const-string/jumbo v2, "websiteUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/i;->EF(Lcom/google/android/gms/location/places/AddPlaceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
