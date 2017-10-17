.class public Lcom/google/android/gms/common/internal/SignInButtonConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final jR:[Lcom/google/android/gms/common/api/Scope;

.field final jS:I

.field private final jT:I

.field private final jU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/U;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/U;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jS:I

    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jU:I

    iput p3, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jT:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jR:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method


# virtual methods
.method public lS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jT:I

    return v0
.end method

.method public lT()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jR:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public lU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->jU:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/U;->mf(Lcom/google/android/gms/common/internal/SignInButtonConfig;Landroid/os/Parcel;I)V

    return-void
.end method
