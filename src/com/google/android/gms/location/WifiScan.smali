.class public final Lcom/google/android/gms/location/WifiScan;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field static final EP:[J


# instance fields
.field private final EN:J

.field final EO:[J

.field private final EQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/google/android/gms/location/WifiScan;->EP:[J

    new-instance v0, Lcom/google/android/gms/location/o;

    invoke-direct {v0}, Lcom/google/android/gms/location/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/WifiScan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJ[J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/location/WifiScan;->EN:J

    iput p1, p0, Lcom/google/android/gms/location/WifiScan;->EQ:I

    if-nez p4, :cond_0

    sget-object p4, Lcom/google/android/gms/location/WifiScan;->EP:[J

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    return-void
.end method

.method private IK(I)V
    .locals 4

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/google/android/gms/location/WifiScan;->IJ()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of bounds: [0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/WifiScan;->IJ()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void
.end method


# virtual methods
.method public IJ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    array-length v0, v0

    return v0
.end method

.method public IL(I)B
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/WifiScan;->IK(I)V

    iget-object v0, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public IM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/WifiScan;->EN:J

    return-wide v0
.end method

.method public IN(I)J
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/location/WifiScan;->IK(I)V

    iget-object v0, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method IO()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/WifiScan;->EQ:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/WifiScan;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/location/WifiScan;

    iget-wide v2, p1, Lcom/google/android/gms/location/WifiScan;->EN:J

    iget-wide v4, p0, Lcom/google/android/gms/location/WifiScan;->EN:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/location/WifiScan;->EO:[J

    iget-object v2, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/WifiScan;->EO:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "WifiScan[elapsed rt: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/location/WifiScan;->EN:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/location/WifiScan;->IJ()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v3, ", Device[mac: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/WifiScan;->IN(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", power [dbm]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/WifiScan;->IL(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "], "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/o;->IH(Lcom/google/android/gms/location/WifiScan;Landroid/os/Parcel;I)V

    return-void
.end method
