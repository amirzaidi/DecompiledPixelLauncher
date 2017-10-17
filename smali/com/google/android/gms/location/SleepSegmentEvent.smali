.class public Lcom/google/android/gms/location/SleepSegmentEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final CK:J

.field private final CL:I

.field private final CM:J

.field private final CN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/k;

    invoke-direct {v0}, Lcom/google/android/gms/location/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/SleepSegmentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJI)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    cmp-long v0, v4, p2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "startTimeMillis must be greater than 0."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    cmp-long v0, v4, p4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    const-string/jumbo v3, "endTimeMillis must be greater than 0."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    cmp-long v0, p2, p4

    if-lez v0, :cond_4

    move v0, v1

    :goto_4
    if-nez v0, :cond_5

    :goto_5
    const-string/jumbo v0, "endTimeMillis must be greater than or equal to startTimeMillis"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/l;->hq(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CL:I

    iput-wide p2, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CM:J

    iput-wide p4, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CK:J

    iput p6, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CN:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public Hg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CN:I

    return v0
.end method

.method public Hh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CK:J

    return-wide v0
.end method

.method public Hi()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CL:I

    return v0
.end method

.method public Hj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CM:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CM:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CK:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/SleepSegmentEvent;->CN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "startTimeMillis=%d, endTimeMillis=%d, mStatus=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/k;->Hp(Lcom/google/android/gms/location/SleepSegmentEvent;Landroid/os/Parcel;I)V

    return-void
.end method
