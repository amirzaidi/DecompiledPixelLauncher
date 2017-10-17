.class public final Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final gy:I

.field private final gz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/awareness/snapshot/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/awareness/snapshot/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gz:I

    iput p2, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gy:I

    return-void
.end method


# virtual methods
.method public fP()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gy:I

    return v0
.end method

.method fQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gz:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;->gy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "ScreenState: UNKNOWN"

    return-object v0

    :cond_0
    const-string/jumbo v0, "ScreenState: SCREEN_OFF"

    return-object v0

    :cond_1
    const-string/jumbo v0, "ScreenState: SCREEN_ON"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/awareness/snapshot/internal/g;->eU(Lcom/google/android/gms/awareness/snapshot/internal/ScreenStateImpl;Landroid/os/Parcel;I)V

    return-void
.end method
