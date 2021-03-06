.class public Lcom/google/android/gms/location/FloorChangeEvent;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/u;


# instance fields
.field private final EV:J

.field private final EW:I

.field private final EX:F

.field private final EY:I

.field private final EZ:J

.field private final Fa:J

.field private final Fb:J

.field private final Fc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/u;

    invoke-direct {v0}, Lcom/google/android/gms/location/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/FloorChangeEvent;->CREATOR:Lcom/google/android/gms/location/u;

    return-void
.end method

.method public constructor <init>(IIIJJJJF)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-gez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "confidence must be equal to or greater than 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    const/16 v0, 0x64

    if-le p3, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v1, "confidence must be equal to or less than 100"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p4

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "startTimeMillis must be greater than 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    cmp-long v0, p4, p6

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "endTimeMillis must be equal to or greater than startTimeMillis"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p8

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_7
    const-string/jumbo v1, "startElapsedRealtimeMillis must be equal to or greater than 0"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    cmp-long v0, p8, p10

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_9
    const-string/jumbo v1, "endElapsedRealtimeMillis must be equal to or greater than startElapsedRealtimeMillis"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    cmp-long v0, p8, p4

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_b
    const-string/jumbo v1, "startTimeMillis must be greater than startElapsedRealtimeMillis"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    cmp-long v0, p10, p6

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v1, "endTimeMillis must be greater than endElapsedRealtimeMillis"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->ke(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EY:I

    iput p2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fc:I

    iput p3, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EW:I

    iput-wide p4, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EZ:J

    iput-wide p6, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EV:J

    iput-wide p8, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fa:J

    iput-wide p10, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fb:J

    iput p12, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EX:F

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    :cond_d
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public Je()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EX:F

    return v0
.end method

.method public Jf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EW:I

    return v0
.end method

.method public Jg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fa:J

    return-wide v0
.end method

.method public Jh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fc:I

    return v0
.end method

.method public Ji()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EV:J

    return-wide v0
.end method

.method public Jj()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EZ:J

    return-wide v0
.end method

.method public Jk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EY:I

    return v0
.end method

.method public Jl()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fb:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->EV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fa:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/FloorChangeEvent;->Fb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "FloorChangeEvent [type=%d, confidence=%d, elevationChange=%f, startTimeMillis=%d, endTimeMillis=%d, startElapsedRealtimeMillis=%d, endElapsedRealtimeMillis=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/u;->Jc(Lcom/google/android/gms/location/FloorChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
