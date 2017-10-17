.class public Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Jj:J

.field private final Jk:I

.field private final Jl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jk:I

    iput-wide p2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jl:J

    iput-wide p4, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jj:J

    return-void
.end method


# virtual methods
.method public Oa()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jj:J

    return-wide v0
.end method

.method Ob()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jk:I

    return v0
.end method

.method public Oc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jl:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jl:J

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Oc()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jj:J

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Oa()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jl:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;->Jj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/j;->NP(Lcom/google/android/gms/contextmanager/internal/TimeFilterImpl$Interval;Landroid/os/Parcel;I)V

    return-void
.end method
