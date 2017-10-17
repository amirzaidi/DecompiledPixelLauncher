.class public final Lcom/google/android/gms/location/places/PlaceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Af:J

.field private final Ag:J

.field final Ah:I

.field private final Ai:Z

.field private final Aj:Lcom/google/android/gms/location/places/PlaceFilter;

.field private final Ak:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/location/places/PlaceFilter;JIJZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ah:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

    iput-wide p3, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    iput p5, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    iput-wide p6, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    iput-boolean p8, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    return-void
.end method


# virtual methods
.method public EA()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public EB()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    return-wide v0
.end method

.method public EC()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    return-wide v0
.end method

.method public Ey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    return v0
.end method

.method public Ez()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceRequest;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

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
    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    iget v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    iget-wide v4, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    if-eq v2, v3, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->hJ(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Aj:Lcom/google/android/gms/location/places/PlaceFilter;

    const-string/jumbo v2, "filter"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Af:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "interval"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ak:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "expireAt"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/PlaceRequest;->Ai:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "receiveFailures"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->hB(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/a;->DV(Lcom/google/android/gms/location/places/PlaceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
