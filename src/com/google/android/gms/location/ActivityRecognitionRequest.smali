.class public Lcom/google/android/gms/location/ActivityRecognitionRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Cf:Z

.field private Cg:J

.field private Ch:Ljava/lang/String;

.field private Ci:Landroid/os/WorkSource;

.field private Cj:[I

.field private Ck:Ljava/lang/String;

.field private final Cl:I

.field private Cm:Z


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

    iput p1, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cl:I

    iput-wide p2, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cg:J

    iput-boolean p4, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cf:Z

    iput-object p5, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ci:Landroid/os/WorkSource;

    iput-object p6, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ck:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cj:[I

    iput-boolean p8, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cm:Z

    iput-object p9, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ch:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cm:Z

    return v0
.end method

.method public GD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ch:Ljava/lang/String;

    return-object v0
.end method

.method public GE()Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ci:Landroid/os/WorkSource;

    return-object v0
.end method

.method public GF()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cg:J

    return-wide v0
.end method

.method public GG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cf:Z

    return v0
.end method

.method GH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cl:I

    return v0
.end method

.method public GI()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Cj:[I

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionRequest;->Ck:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/q;->Ia(Lcom/google/android/gms/location/ActivityRecognitionRequest;Landroid/os/Parcel;I)V

    return-void
.end method
