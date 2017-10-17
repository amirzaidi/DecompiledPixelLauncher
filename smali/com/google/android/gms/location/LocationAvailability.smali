.class public final Lcom/google/android/gms/location/LocationAvailability;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/h;


# instance fields
.field BL:I

.field private final BM:I

.field BN:I

.field BO:J

.field BP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Lcom/google/android/gms/location/h;

    return-void
.end method

.method constructor <init>(IIIIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationAvailability;->BM:I

    iput p2, p0, Lcom/google/android/gms/location/LocationAvailability;->BP:I

    iput p3, p0, Lcom/google/android/gms/location/LocationAvailability;->BL:I

    iput p4, p0, Lcom/google/android/gms/location/LocationAvailability;->BN:I

    iput-wide p5, p0, Lcom/google/android/gms/location/LocationAvailability;->BO:J

    return-void
.end method


# virtual methods
.method public Gx()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/location/LocationAvailability;->BP:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method Gy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationAvailability;->BM:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/LocationAvailability;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BP:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->BP:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BL:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->BL:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BN:I

    iget v2, p1, Lcom/google/android/gms/location/LocationAvailability;->BN:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationAvailability;->BO:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationAvailability;->BO:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BP:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/LocationAvailability;->BN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationAvailability;->BO:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationAvailability;->Gx()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "LocationAvailability[isLocationAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/h;->Hf(Lcom/google/android/gms/location/LocationAvailability;Landroid/os/Parcel;I)V

    return-void
.end method
