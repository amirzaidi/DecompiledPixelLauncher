.class public Lcom/google/android/gms/location/internal/NlpTestingRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/m;


# instance fields
.field private final Aq:I

.field private final Ar:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/internal/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->CREATOR:Lcom/google/android/gms/location/internal/m;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->Aq:I

    iput-wide p2, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->Ar:J

    return-void
.end method


# virtual methods
.method public ES()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->Ar:J

    return-wide v0
.end method

.method public ET()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/NlpTestingRequest;->Aq:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/m;->FG(Lcom/google/android/gms/location/internal/NlpTestingRequest;Landroid/os/Parcel;I)V

    return-void
.end method
