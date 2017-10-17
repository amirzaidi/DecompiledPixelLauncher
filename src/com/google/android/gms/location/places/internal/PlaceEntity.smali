.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/internal/i;


# instance fields
.field private final yA:Ljava/lang/String;

.field private final yB:Lcom/google/android/gms/maps/model/LatLng;

.field private final yC:Ljava/lang/String;

.field private final yD:F

.field private final yE:Ljava/util/Map;

.field private final yF:Landroid/os/Bundle;

.field private final yG:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final yH:Ljava/util/List;

.field private final yI:Ljava/util/TimeZone;

.field private final yJ:Ljava/lang/String;

.field private final yK:Ljava/lang/String;

.field private final yL:Z

.field private final yM:Ljava/util/List;

.field private yN:Ljava/util/Locale;

.field private final yr:Ljava/util/List;

.field private final ys:Ljava/lang/String;

.field private final yt:J

.field private final yu:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

.field private final yv:Landroid/net/Uri;

.field private final yw:I

.field final yx:I

.field private final yy:Ljava/lang/String;

.field private final yz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->CREATOR:Lcom/google/android/gms/location/places/internal/i;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJLcom/google/android/gms/location/places/internal/PlaceLocalization;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yx:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yr:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yM:Ljava/util/List;

    if-nez p5, :cond_0

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yF:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ys:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yJ:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yK:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yA:Ljava/lang/String;

    if-nez p10, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p10

    :cond_1
    iput-object p10, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yH:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yB:Lcom/google/android/gms/maps/model/LatLng;

    iput p12, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yD:F

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yG:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez p14, :cond_2

    const-string/jumbo p14, "UTC"

    :cond_2
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yy:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yv:Landroid/net/Uri;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yL:Z

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yz:F

    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yw:I

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yE:Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yI:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yN:Ljava/util/Locale;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yu:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    return-void
.end method


# virtual methods
.method public Di()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yz:F

    return v0
.end method

.method public Dj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yA:Ljava/lang/String;

    return-object v0
.end method

.method public Dk()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yv:Landroid/net/Uri;

    return-object v0
.end method

.method public Dl()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yG:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public Dm()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yM:Ljava/util/List;

    return-object v0
.end method

.method public Dn()Lcom/google/android/gms/location/places/internal/PlaceLocalization;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yu:Lcom/google/android/gms/location/places/internal/PlaceLocalization;

    return-object v0
.end method

.method public bridge synthetic Do()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Do()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ys:Ljava/lang/String;

    return-object v0
.end method

.method public Dp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yw:I

    return v0
.end method

.method public bridge synthetic Dq()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yK:Ljava/lang/String;

    return-object v0
.end method

.method public Dr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yy:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic Ds()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->Ds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yJ:Ljava/lang/String;

    return-object v0
.end method

.method public Dt()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yr:Ljava/util/List;

    return-object v0
.end method

.method public Du()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yH:Ljava/util/List;

    return-object v0
.end method

.method public Dv()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yD:F

    return v0
.end method

.method public Dw()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    return-wide v0
.end method

.method public Dx()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yF:Landroid/os/Bundle;

    return-object v0
.end method

.method public Dy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yL:Z

    return v0
.end method

.method public Dz()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yB:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yN:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yN:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yN:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yC:Ljava/lang/String;

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yr:Ljava/util/List;

    const-string/jumbo v2, "placeTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yN:Ljava/util/Locale;

    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->ys:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yJ:Ljava/lang/String;

    const-string/jumbo v2, "address"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yK:Ljava/lang/String;

    const-string/jumbo v2, "phoneNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yB:Lcom/google/android/gms/maps/model/LatLng;

    const-string/jumbo v2, "latlng"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yG:Lcom/google/android/gms/maps/model/LatLngBounds;

    const-string/jumbo v2, "viewport"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yv:Landroid/net/Uri;

    const-string/jumbo v2, "websiteUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yL:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "isPermanentlyClosed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priceLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity;->yt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestampSecs"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/i;->DF(Lcom/google/android/gms/location/places/internal/PlaceEntity;Landroid/os/Parcel;I)V

    return-void
.end method
