.class public Lcom/google/android/gms/common/internal/AuthAccountRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field ho:Ljava/lang/Integer;

.field final hp:[Lcom/google/android/gms/common/api/Scope;

.field final hq:I

.field final hr:Landroid/os/IBinder;

.field hs:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/K;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/K;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->hq:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->hr:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->hp:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->ho:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->hs:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/K;->iV(Lcom/google/android/gms/common/internal/AuthAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
