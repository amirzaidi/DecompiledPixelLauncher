.class public Lcom/google/android/gms/location/places/personalized/PlaceUserData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/d;


# instance fields
.field final xR:I

.field private final xS:Ljava/lang/String;

.field private final xT:Ljava/lang/String;

.field private final xU:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/d;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xR:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public CP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    return-object v0
.end method

.method public CQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    return-object v0
.end method

.method public CR()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xS:Ljava/lang/String;

    const-string/jumbo v2, "accountName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xT:Ljava/lang/String;

    const-string/jumbo v2, "placeId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->xU:Ljava/util/List;

    const-string/jumbo v2, "placeAliases"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/d;->CS(Lcom/google/android/gms/location/places/personalized/PlaceUserData;Landroid/os/Parcel;I)V

    return-void
.end method
