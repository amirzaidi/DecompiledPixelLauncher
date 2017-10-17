.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field eZ:Ljava/lang/String;

.field fa:[Lcom/google/android/gms/common/api/Scope;

.field final fb:I

.field fc:J

.field fd:I

.field fe:Landroid/os/Bundle;

.field ff:Landroid/accounts/Account;

.field final fg:I

.field fh:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fb:I

    sget v0, Lcom/google/android/gms/common/f;->kC:I

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fd:I

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fg:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fb:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fg:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fd:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->eZ:Ljava/lang/String;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fh:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->ff:Landroid/accounts/Account;

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fa:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fe:Landroid/os/Bundle;

    iput-wide p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fc:J

    return-void

    :cond_0
    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/GetServiceRequest;->gF(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->ff:Landroid/accounts/Account;

    goto :goto_0
.end method

.method private gF(Landroid/os/IBinder;)Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzq$zza;->zzgw(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zza;->zza(Lcom/google/android/gms/common/internal/zzq;)Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public gC(Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fh:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public gD(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fe:Landroid/os/Bundle;

    return-object p0
.end method

.method public gE(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->ff:Landroid/accounts/Account;

    return-object p0
.end method

.method public gG(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->eZ:Ljava/lang/String;

    return-object p0
.end method

.method public gH(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->fa:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/d;->gI(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method
