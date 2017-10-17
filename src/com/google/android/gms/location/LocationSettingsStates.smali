.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final EG:Z

.field private final EH:Z

.field private final EI:I

.field private final EJ:Z

.field private final EK:Z

.field private final EL:Z

.field private final EM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EI:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EG:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EK:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EJ:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EM:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EL:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EH:Z

    return-void
.end method


# virtual methods
.method public IA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EI:I

    return v0
.end method

.method public IB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EG:Z

    return v0
.end method

.method public IC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EL:Z

    return v0
.end method

.method public ID()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EJ:Z

    return v0
.end method

.method public IE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EH:Z

    return v0
.end method

.method public Iy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EM:Z

    return v0
.end method

.method public Iz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->EK:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/e;->HF(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method
