.class public final Lcom/google/android/gms/location/places/internal/PlaceLocalization;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/g;


# instance fields
.field public final name:Ljava/lang/String;

.field public final yj:I

.field public final yk:Ljava/lang/String;

.field public final yl:Ljava/lang/String;

.field public final ym:Ljava/lang/String;

.field public final yn:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yj:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yk:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->ym:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yl:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yn:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yk:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->ym:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->ym:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yn:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yn:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yk:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->ym:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yl:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yk:Ljava/lang/String;

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->ym:Ljava/lang/String;

    const-string/jumbo v2, "internationalPhoneNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yl:Ljava/lang/String;

    const-string/jumbo v2, "regularOpenHours"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->yn:Ljava/util/List;

    const-string/jumbo v2, "attributions"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlaceLocalization;->CREATOR:Lcom/google/android/gms/location/places/internal/g;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/g;->Df(Lcom/google/android/gms/location/places/internal/PlaceLocalization;Landroid/os/Parcel;I)V

    return-void
.end method
