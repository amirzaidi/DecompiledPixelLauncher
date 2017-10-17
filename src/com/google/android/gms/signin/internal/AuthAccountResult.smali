.class public Lcom/google/android/gms/signin/internal/AuthAccountResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/api/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Kc:I

.field final Kd:I

.field private Ke:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>(ILandroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Kd:I

    iput p2, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Kc:I

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Ke:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/signin/internal/AuthAccountResult;-><init>(IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public Qk()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Ke:Landroid/content/Intent;

    return-object v0
.end method

.method public Ql()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Kc:I

    return v0
.end method

.method public dr()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/signin/internal/AuthAccountResult;->Kc:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->dR:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->dU:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/h;->Qq(Lcom/google/android/gms/signin/internal/AuthAccountResult;Landroid/os/Parcel;I)V

    return-void
.end method
