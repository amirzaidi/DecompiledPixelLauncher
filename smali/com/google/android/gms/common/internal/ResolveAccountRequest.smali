.class public Lcom/google/android/gms/common/internal/ResolveAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final hj:I

.field final hk:I

.field private final hl:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private final hm:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/H;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/H;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hk:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hm:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hj:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hl:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hm:Landroid/accounts/Account;

    return-object v0
.end method

.method public jn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hj:I

    return v0
.end method

.method public jo()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->hl:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/H;->iC(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
