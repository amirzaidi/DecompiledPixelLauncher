.class public Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final HA:I

.field private final HB:Z

.field private HC:Ljava/util/ArrayList;

.field private HD:Ljava/util/ArrayList;

.field private Hz:Ljava/util/ArrayList;


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

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HA:I

    iput-boolean p2, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HB:Z

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HC:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HD:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Hz:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HA:I

    iput-boolean p1, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HB:Z

    return-void
.end method


# virtual methods
.method public MZ()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->Hz:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Na()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HB:Z

    return v0
.end method

.method Nb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HA:I

    return v0
.end method

.method public Nc()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HD:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Nd()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;->HC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/b;->Ma(Lcom/google/android/gms/contextmanager/internal/WriteBatchImpl;Landroid/os/Parcel;I)V

    return-void
.end method
