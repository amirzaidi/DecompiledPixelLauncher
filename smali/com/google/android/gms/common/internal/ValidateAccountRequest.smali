.class public Lcom/google/android/gms/common/internal/ValidateAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final fP:I

.field private final fQ:[Lcom/google/android/gms/common/api/Scope;

.field private final fR:Landroid/os/Bundle;

.field final fS:I

.field final fT:Landroid/os/IBinder;

.field private final fU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/E;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/E;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fS:I

    iput p2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fP:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fT:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fQ:[Lcom/google/android/gms/common/api/Scope;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fR:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fP:I

    return v0
.end method

.method public hM()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fQ:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public hN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fU:Ljava/lang/String;

    return-object v0
.end method

.method public hO()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->fR:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/E;->iw(Lcom/google/android/gms/common/internal/ValidateAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
