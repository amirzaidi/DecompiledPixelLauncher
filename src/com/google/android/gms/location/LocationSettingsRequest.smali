.class public final Lcom/google/android/gms/location/LocationSettingsRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final CR:Z

.field private final CS:I

.field private final CT:Z

.field private final CU:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationSettingsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CS:I

    iput-object p2, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CU:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CT:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CR:Z

    return-void
.end method


# virtual methods
.method public Hw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CT:Z

    return v0
.end method

.method public Hx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CR:Z

    return v0
.end method

.method public Hy()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CU:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Hz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest;->CS:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/m;->HC(Lcom/google/android/gms/location/LocationSettingsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
