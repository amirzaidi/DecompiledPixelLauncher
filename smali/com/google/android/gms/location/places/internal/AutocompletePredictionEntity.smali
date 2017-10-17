.class public Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final yf:Ljava/util/List;


# instance fields
.field final xV:Ljava/lang/String;

.field final xW:Ljava/util/List;

.field final xX:Ljava/util/List;

.field final xY:I

.field final xZ:Ljava/lang/String;

.field final ya:Ljava/lang/String;

.field final yb:I

.field final yc:Ljava/lang/String;

.field final yd:Ljava/util/List;

.field final ye:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yf:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yb:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xY:I

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    iput-object p9, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yc:Ljava/lang/String;

    const-string/jumbo v2, "placeId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xW:Ljava/util/List;

    const-string/jumbo v2, "placeTypes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xZ:Ljava/lang/String;

    const-string/jumbo v2, "fullText"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ye:Ljava/util/List;

    const-string/jumbo v2, "fullTextMatchedSubstrings"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xV:Ljava/lang/String;

    const-string/jumbo v2, "primaryText"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->yd:Ljava/util/List;

    const-string/jumbo v2, "primaryTextMatchedSubstrings"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->ya:Ljava/lang/String;

    const-string/jumbo v2, "secondaryText"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;->xX:Ljava/util/List;

    const-string/jumbo v2, "secondaryTextMatchedSubstrings"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/h;->DC(Lcom/google/android/gms/location/places/internal/AutocompletePredictionEntity;Landroid/os/Parcel;I)V

    return-void
.end method
