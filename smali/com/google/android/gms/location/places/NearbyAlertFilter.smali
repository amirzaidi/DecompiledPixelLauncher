.class public final Lcom/google/android/gms/location/places/NearbyAlertFilter;
.super Lcom/google/android/gms/location/places/AbstractPlaceFilter;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/b;


# instance fields
.field private final zH:Ljava/util/Set;

.field final zI:Ljava/util/List;

.field private final zJ:Ljava/util/Set;

.field final zK:Ljava/util/List;

.field private final zL:Ljava/util/Set;

.field final zM:I

.field final zN:Ljava/lang/String;

.field final zO:Ljava/util/List;

.field final zP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->CREATOR:Lcom/google/android/gms/location/places/b;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/AbstractPlaceFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zM:I

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zI:Ljava/util/List;

    if-eqz p4, :cond_1

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zO:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zK:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zI:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zO:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zK:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Ei(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    iput-object p5, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zP:Z

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

.method public static DW(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NearbyAlertFilters must contain at least oneplace ID to match results with."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {p0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Ej(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/NearbyAlertFilter;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static DY(Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NearbyAlertFilters must contain at least oneplace type to match results with."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {p0}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->Ej(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/NearbyAlertFilter;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public DX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zP:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_3

    instance-of v2, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_1
    :goto_0
    move v0, v1

    :cond_2
    return v0

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    if-eqz v2, :cond_0

    return v1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zP:Z

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->DX()Z

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zP:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    if-nez v1, :cond_3

    :goto_3
    iget-boolean v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zP:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "Beacon required: "

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zL:Ljava/util/Set;

    const-string/jumbo v2, "types"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zH:Ljava/util/Set;

    const-string/jumbo v2, "placeIds"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zJ:Ljava/util/Set;

    const-string/jumbo v2, "requestedUserDataTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zN:Ljava/lang/String;

    const-string/jumbo v2, "chainName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/b;->Ea(Lcom/google/android/gms/location/places/NearbyAlertFilter;Landroid/os/Parcel;I)V

    return-void
.end method
