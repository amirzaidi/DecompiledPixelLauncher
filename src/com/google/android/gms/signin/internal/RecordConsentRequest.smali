.class public Lcom/google/android/gms/signin/internal/RecordConsentRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final JY:[Lcom/google/android/gms/common/api/Scope;

.field final JZ:I

.field private final Ka:Ljava/lang/String;

.field private final Kb:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->JZ:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->Kb:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->JY:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->Ka:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->Ka:Ljava/lang/String;

    return-object v0
.end method

.method public Qg()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->JY:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->Kb:Landroid/accounts/Account;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/g;->Qi(Lcom/google/android/gms/signin/internal/RecordConsentRequest;Landroid/os/Parcel;I)V

    return-void
.end method
