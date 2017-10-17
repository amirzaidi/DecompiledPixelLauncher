.class public Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private Je:Ljava/util/ArrayList;

.field private final Jf:I

.field private final Jg:Z

.field private Jh:Ljava/util/ArrayList;

.field private Ji:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;-><init>(Z)V

    return-void
.end method

.method constructor <init>(IZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jf:I

    iput-boolean p2, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jg:Z

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jh:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Ji:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Je:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jf:I

    iput-boolean p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jg:Z

    return-void
.end method


# virtual methods
.method public NS()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Je:Ljava/util/ArrayList;

    return-object v0
.end method

.method public NT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jg:Z

    return v0
.end method

.method NU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jf:I

    return v0
.end method

.method public NV()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Ji:Ljava/util/ArrayList;

    return-object v0
.end method

.method public NW()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Jh:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/b;->MT(Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;Landroid/os/Parcel;I)V

    return-void
.end method
