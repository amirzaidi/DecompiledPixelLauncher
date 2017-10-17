.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final nk:Lcom/google/android/gms/common/ConnectionResult;


# instance fields
.field private final nl:Landroid/app/PendingIntent;

.field final nm:I

.field private final nn:Ljava/lang/String;

.field private final no:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->nk:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v0, Lcom/google/android/gms/common/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->nm:I

    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static qg(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "SUCCESS"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "SERVICE_MISSING"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "SERVICE_DISABLED"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "INVALID_ACCOUNT"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "NETWORK_ERROR"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "INTERNAL_ERROR"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "SERVICE_INVALID"

    return-object v0

    :sswitch_a
    const-string/jumbo v0, "DEVELOPER_ERROR"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "LICENSE_CHECK_FAILED"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "CANCELED"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "TIMEOUT"

    return-object v0

    :sswitch_e
    const-string/jumbo v0, "INTERRUPTED"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "API_UNAVAILABLE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "SIGN_IN_FAILED"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "SERVICE_UPDATING"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "SERVICE_MISSING_PERMISSION"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "RESTRICTED_PROFILE"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "API_VERSION_UPDATE_REQUIRED"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "UPDATE_ANDROID_WEAR"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "UNFINISHED"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_18
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x2a -> :sswitch_15
        0x63 -> :sswitch_17
        0x5dc -> :sswitch_16
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->no:I

    if-eq v2, v3, :cond_4

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
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/u;->kv(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public qh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    return v0
.end method

.method public qi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    return-object v0
.end method

.method public qj()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public qk()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ql()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/u;->kx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->no:I

    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->qg(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->nl:Landroid/app/PendingIntent;

    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->nn:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n;->kp(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/h;->qJ(Lcom/google/android/gms/common/ConnectionResult;Landroid/os/Parcel;I)V

    return-void
.end method
