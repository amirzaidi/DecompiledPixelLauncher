.class public final Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final mR:Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;

.field private final mS:Landroid/location/Location;

.field private final mT:Lcom/google/android/gms/common/data/DataHolder;

.field private final mU:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

.field private final mV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

.field private final mW:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

.field private final mX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

.field private final mY:I

.field private final mZ:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

.field private final na:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;Landroid/location/Location;Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mY:I

    iput-object p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p3, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->na:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

    iput-object p4, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mW:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

    iput-object p5, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mS:Landroid/location/Location;

    iput-object p6, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mU:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

    iput-object p7, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mT:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p8, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

    iput-object p9, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mZ:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

    iput-object p10, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

    iput-object p11, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mR:Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;

    return-void
.end method


# virtual methods
.method public qK()Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->na:Lcom/google/android/gms/awareness/snapshot/internal/BeaconStateImpl;

    return-object v0
.end method

.method public qL()Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mZ:Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;

    return-object v0
.end method

.method public qM()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mQ:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public qN()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mS:Landroid/location/Location;

    return-object v0
.end method

.method public qO()Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mX:Lcom/google/android/gms/awareness/snapshot/internal/WeatherImpl;

    return-object v0
.end method

.method public qP()Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mW:Lcom/google/android/gms/awareness/snapshot/internal/HeadphoneStateImpl;

    return-object v0
.end method

.method public qQ()Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mV:Lcom/google/android/gms/awareness/snapshot/internal/PowerStateImpl;

    return-object v0
.end method

.method public qR()Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mU:Lcom/google/android/gms/awareness/snapshot/internal/NetworkStateImpl;

    return-object v0
.end method

.method public qS()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mT:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public qT()Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mR:Lcom/google/android/gms/awareness/snapshot/internal/DayAttributesImpl;

    return-object v0
.end method

.method qU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;->mY:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/i;->qA(Lcom/google/android/gms/awareness/snapshot/internal/Snapshot;Landroid/os/Parcel;I)V

    return-void
.end method
