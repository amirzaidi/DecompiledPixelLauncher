.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/j;


# instance fields
.field private final Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

.field private final Ab:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final Ac:I

.field private final Ad:I

.field private Ae:I

.field private final zX:Z

.field private final zY:I

.field private final zZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/j;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/j;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/NearbyAlertFilter;ZII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/16 v0, 0x6e

    iput v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zZ:I

    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    iput p3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    if-nez p5, :cond_1

    if-nez p4, :cond_2

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ab:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-boolean p6, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zX:Z

    iput p7, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zY:I

    iput p8, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    return-void

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DJ()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DK()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DK()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DK()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->DY(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_4
    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DJ()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->DJ()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->DW(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public Ek()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zY:I

    return v0
.end method

.method public El()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    return v0
.end method

.method public Em()Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    return-object v0
.end method

.method public En()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    return v0
.end method

.method public Eo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zX:Z

    return v0
.end method

.method public Ep()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Eq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zZ:I

    return v0
.end method

.method public Er()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    if-eq v2, v3, :cond_4

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
    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    iget v3, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ad:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "transitionTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "loiteringTimeMillis"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Aa:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    const-string/jumbo v2, "nearbyAlertFilter"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->Ae:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/j;->EG(Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/os/Parcel;I)V

    return-void
.end method
