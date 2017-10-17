.class public Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ha:Ljava/util/ArrayList;

.field private final Hb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Hb:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Ha:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Hb:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Ha:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public LU()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Ha:Ljava/util/ArrayList;

    return-object v0
.end method

.method LV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;->Hb:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/e;->Mm(Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl;Landroid/os/Parcel;I)V

    return-void
.end method
