.class public final Lcom/google/android/gms/location/places/PlaceFilter;
.super Lcom/google/android/gms/location/places/AbstractPlaceFilter;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/c;

.field private static final zl:Lcom/google/android/gms/location/places/PlaceFilter;


# instance fields
.field private final zg:Ljava/util/Set;

.field final zh:Ljava/util/List;

.field final zi:Z

.field private final zj:Ljava/util/Set;

.field final zk:Ljava/util/List;

.field private final zm:Ljava/util/Set;

.field final zn:I

.field final zo:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/c;

    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceFilter;->zl:Lcom/google/android/gms/location/places/PlaceFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ZLjava/util/Collection;)V

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/AbstractPlaceFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zn:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zh:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zi:Z

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zo:Ljava/util/List;

    if-eqz p4, :cond_2

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zk:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zh:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zo:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zk:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/util/Collection;ZLjava/util/Collection;Ljava/util/Collection;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/location/places/PlaceFilter;->Ej(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Lcom/google/android/gms/location/places/PlaceFilter;->Ej(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->Ej(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(ILjava/util/List;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/Collection;ZLjava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public DJ()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    return-object v0
.end method

.method public DK()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceFilter;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zi:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

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

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "requireOpenNow"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zm:Ljava/util/Set;

    const-string/jumbo v2, "types"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zg:Ljava/util/Set;

    const-string/jumbo v2, "placeIds"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter;->zj:Ljava/util/Set;

    const-string/jumbo v2, "requestedUserDataTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/c;->Ee(Lcom/google/android/gms/location/places/PlaceFilter;Landroid/os/Parcel;I)V

    return-void
.end method
