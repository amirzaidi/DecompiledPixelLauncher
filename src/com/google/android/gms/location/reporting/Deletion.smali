.class public final Lcom/google/android/gms/location/reporting/Deletion;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/h;


# instance fields
.field private final BD:J

.field private final BE:J

.field private final BF:I

.field private final BG:J

.field private final BH:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/h;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/Deletion;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/Deletion;->BF:I

    iput-object p2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    return-void
.end method


# virtual methods
.method public Gr()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    return-wide v0
.end method

.method public Gs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    return-wide v0
.end method

.method public Gt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BF:I

    return v0
.end method

.method public Gu()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/reporting/Deletion;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/location/reporting/Deletion;

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->hH(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/location/reporting/Deletion;->BH:Landroid/accounts/Account;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/Deletion;->BD:J

    iget-wide v4, p0, Lcom/google/android/gms/location/reporting/Deletion;->BE:J

    iget-wide v6, p0, Lcom/google/android/gms/location/reporting/Deletion;->BG:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x7a

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "Deletion{mAccount="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTimestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    sget-object v0, Lcom/google/android/gms/location/reporting/Deletion;->CREATOR:Lcom/google/android/gms/location/reporting/h;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/h;->Gw(Lcom/google/android/gms/location/reporting/Deletion;Landroid/os/Parcel;I)V

    return-void
.end method
