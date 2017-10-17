.class public final Lcom/google/android/gms/location/reporting/UploadRequestResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/e;


# instance fields
.field private final Bt:J

.field private final Bu:I

.field private final Bv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bv:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    iput-wide p3, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    return-void
.end method


# virtual methods
.method public Gh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    return v0
.end method

.method public Gi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    return-wide v0
.end method

.method Gj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bv:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    if-eq v1, v2, :cond_2

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
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bv:I

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bu:I

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Bt:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x5a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Result{mVersionCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", mResultCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/e;->FW(Lcom/google/android/gms/location/reporting/UploadRequestResult;Landroid/os/Parcel;I)V

    return-void
.end method
