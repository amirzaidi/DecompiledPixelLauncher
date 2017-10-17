.class public Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Iu:Ljava/util/List;

.field private final Iv:I

.field private final Iw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iv:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iw:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iu:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public static OC(ILjava/util/List;)Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public OD()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iu:Ljava/util/List;

    return-object v0
.end method

.method public OE()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iw:I

    return v0
.end method

.method OF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;->Iv:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/e;->NS(Lcom/google/android/gms/contextmanager/fence/internal/FenceQueryRequestImpl$QueryFenceOperation;Landroid/os/Parcel;I)V

    return-void
.end method
