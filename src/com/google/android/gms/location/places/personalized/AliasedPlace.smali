.class public Lcom/google/android/gms/location/places/personalized/AliasedPlace;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/a;


# instance fields
.field final zp:I

.field private final zq:Ljava/lang/String;

.field private final zr:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->CREATOR:Lcom/google/android/gms/location/places/personalized/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zp:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public DA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    return-object v0
.end method

.method public DB()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/AliasedPlace;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/personalized/AliasedPlace;

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

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

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zq:Ljava/lang/String;

    const-string/jumbo v2, "placeId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/personalized/AliasedPlace;->zr:Ljava/util/List;

    const-string/jumbo v2, "placeAliases"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/a;->DC(Lcom/google/android/gms/location/places/personalized/AliasedPlace;Landroid/os/Parcel;I)V

    return-void
.end method
