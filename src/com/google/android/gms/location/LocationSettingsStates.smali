.class public final Lcom/google/android/gms/location/LocationSettingsStates;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Db:Z

.field private final Dc:Z

.field private final Dd:I

.field private final De:Z

.field private final Df:Z

.field private final Dg:Z

.field private final Dh:Z


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

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dd:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Db:Z

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Df:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsStates;->De:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dh:Z

    iput-boolean p6, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dg:Z

    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dc:Z

    return-void
.end method


# virtual methods
.method public HF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dh:Z

    return v0
.end method

.method public HG()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Df:Z

    return v0
.end method

.method public HH()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dd:I

    return v0
.end method

.method public HI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Db:Z

    return v0
.end method

.method public HJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dg:Z

    return v0
.end method

.method public HK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->De:Z

    return v0
.end method

.method public HL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsStates;->Dc:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/e;->GM(Lcom/google/android/gms/location/LocationSettingsStates;Landroid/os/Parcel;I)V

    return-void
.end method
