.class public Lcom/google/android/gms/location/internal/ParcelableGeofence;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/n;


# instance fields
.field private final AX:J

.field private final AY:S

.field private final AZ:Ljava/lang/String;

.field private final Ba:I

.field private final Bb:I

.field private final Bc:F

.field private final Bd:I

.field private final Be:D

.field private final Bf:D

.field private final Bg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/n;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Fv(Ljava/lang/String;)V

    invoke-static {p9}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Fz(F)V

    invoke-static {p5, p6, p7, p8}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Fq(DD)V

    invoke-static {p3}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Fs(I)I

    move-result v1

    iput p1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bd:I

    int-to-short v2, p4

    iput-short v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    iput-object p2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AZ:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    iput-wide p7, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    iput p9, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    iput-wide p10, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AX:J

    iput v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bg:I

    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Ba:I

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bb:I

    return-void
.end method

.method private static Fq(DD)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_4

    :goto_1
    if-nez v0, :cond_3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_5

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static Fs(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "No supported transition specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static Fv(Ljava/lang/String;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "requestId is null or too long: "

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    return-void

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static Fx(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CIRCLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static Fz(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public FA()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AX:J

    return-wide v0
.end method

.method public FB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bb:I

    return v0
.end method

.method public FC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bd:I

    return v0
.end method

.method public Fp()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    return-wide v0
.end method

.method public Fr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AZ:Ljava/lang/String;

    return-object v0
.end method

.method public Ft()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    return-wide v0
.end method

.method public Fu()S
    .locals 1

    iget-short v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    return v0
.end method

.method public Fw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bg:I

    return v0
.end method

.method public Fy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Ba:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    iget v1, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    return v4

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    iget-wide v2, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4

    return v4

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    iget-wide v2, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_5

    return v4

    :cond_5
    iget-short v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    iget-short v1, p1, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    if-ne v0, v1, :cond_6

    return v5

    :cond_6
    return v4
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bg:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AY:S

    invoke-static {v2}, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Fx(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AZ:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Be:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bf:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bc:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Ba:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->Bb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->AX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;->CREATOR:Lcom/google/android/gms/location/internal/n;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/n;->FJ(Lcom/google/android/gms/location/internal/ParcelableGeofence;Landroid/os/Parcel;I)V

    return-void
.end method
