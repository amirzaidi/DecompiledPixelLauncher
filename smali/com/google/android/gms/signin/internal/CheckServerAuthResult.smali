.class public Lcom/google/android/gms/signin/internal/CheckServerAuthResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final JP:I

.field final JQ:Z

.field final JR:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->JP:I

    iput-boolean p2, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->JQ:Z

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->JR:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/f;->Qc(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;Landroid/os/Parcel;I)V

    return-void
.end method
