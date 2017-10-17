.class public Lcom/google/android/gms/location/ActivityRecognitionRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private DK:Z

.field private DL:J

.field private DM:Ljava/lang/String;

.field private DN:Landroid/os/WorkSource;

.field private DO:[I

.field private DP:Ljava/lang/String;

.field private final DQ:I

.field private DR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/q;

    invoke-direct {v0}, Lcom/google/android/gms/location/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJZLandroid/os/WorkSource;Ljava/lang/String;[IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DQ:I

    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DL:J

    iput-boolean p4, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DK:Z

    iput-object p5, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DN:Landroid/os/WorkSource;

    iput-object p6, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DP:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DO:[I

    iput-boolean p8, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DR:Z

    iput-object p9, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method HA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DQ:I

    return v0
.end method

.method public HB()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DO:[I

    return-object v0
.end method

.method public Hv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DR:Z

    return v0
.end method

.method public Hw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DM:Ljava/lang/String;

    return-object v0
.end method

.method public Hx()Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DN:Landroid/os/WorkSource;

    return-object v0
.end method

.method public Hy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DL:J

    return-wide v0
.end method

.method public Hz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DK:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->DP:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/q;->IT(Lcom/google/android/gms/location/ActivityRecognitionRequest;Landroid/os/Parcel;I)V

    return-void
.end method
