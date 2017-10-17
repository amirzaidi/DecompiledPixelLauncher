.class public Lcom/google/android/gms/location/DetectedActivity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/j;

.field public static final Ea:Ljava/util/Comparator;

.field public static final Eb:[I

.field public static final Ed:[I


# instance fields
.field DY:I

.field DZ:I

.field private final Ec:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/location/w;

    invoke-direct {v0}, Lcom/google/android/gms/location/w;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->Ea:Ljava/util/Comparator;

    new-array v0, v4, [I

    const/16 v1, 0x9

    aput v1, v0, v2

    aput v5, v0, v3

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->Eb:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    aput v2, v0, v2

    aput v3, v0, v3

    aput v4, v0, v4

    const/4 v1, 0x3

    aput v6, v0, v1

    const/4 v1, 0x5

    aput v1, v0, v6

    const/4 v1, 0x6

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x7

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x8

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x8

    aput v5, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xc

    aput v1, v0, v5

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xe

    const/16 v2, 0xc

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->Ed:[I

    new-instance v0, Lcom/google/android/gms/location/j;

    invoke-direct {v0}, Lcom/google/android/gms/location/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/DetectedActivity;->CREATOR:Lcom/google/android/gms/location/j;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/DetectedActivity;->Ec:I

    iput p2, p0, Lcom/google/android/gms/location/DetectedActivity;->DY:I

    iput p3, p0, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    return-void
.end method

.method private HI(I)I
    .locals 1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public static HK(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "IN_VEHICLE"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ON_BICYCLE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ON_FOOT"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STILL"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "TILTING"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "WALKING"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "RUNNING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public HH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    return v0
.end method

.method public HJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->DY:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/DetectedActivity;->HI(I)I

    move-result v0

    return v0
.end method

.method public HL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/DetectedActivity;->Ec:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_2

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/google/android/gms/location/DetectedActivity;

    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->DY:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->DY:I

    if-eq v2, v3, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget v2, p0, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    iget v3, p1, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    if-eq v2, v3, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->DY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->kw([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/location/DetectedActivity;->HJ()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/location/DetectedActivity;->HK(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/DetectedActivity;->DZ:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "DetectedActivity [type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", confidence="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/j;->Ig(Lcom/google/android/gms/location/DetectedActivity;Landroid/os/Parcel;I)V

    return-void
.end method
