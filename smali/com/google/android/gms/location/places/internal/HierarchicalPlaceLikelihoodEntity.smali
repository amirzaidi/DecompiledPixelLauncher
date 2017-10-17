.class public Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final yS:Ljava/util/List;


# instance fields
.field final yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

.field final yP:Ljava/util/List;

.field final yQ:I

.field final yR:I

.field final yT:F

.field final yU:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yS:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/location/places/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/places/internal/PlaceEntity;FFILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yQ:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iput p3, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    iput p4, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yU:F

    iput p5, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yR:I

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/places/internal/PlaceEntity;->equals(Ljava/lang/Object;)Z

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
    iget v2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yU:F

    iget v3, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yU:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yR:I

    iget v3, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yR:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yP:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yP:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yO:Lcom/google/android/gms/location/places/internal/PlaceEntity;

    const-string/jumbo v2, "place"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yT:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "likelihood"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yU:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "hierarchyLikelihood"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "hierarchyLevel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;->yP:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "containedPlaceIds"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/c;->CZ(Lcom/google/android/gms/location/places/internal/HierarchicalPlaceLikelihoodEntity;Landroid/os/Parcel;I)V

    return-void
.end method
