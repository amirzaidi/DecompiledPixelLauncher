.class public Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final HP:Ljava/lang/String;

.field private final HQ:I

.field private final HR:Lcom/google/android/contextmanager/interest/InterestRecordStub;

.field private final HS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/contextmanager/interest/InterestRecordStub;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HQ:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HS:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HR:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method NA()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HQ:I

    return v0
.end method

.method NB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HP:Ljava/lang/String;

    return-object v0
.end method

.method Ny()Lcom/google/android/contextmanager/interest/InterestRecordStub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HR:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    return-object v0
.end method

.method public Nz()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->HS:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/i;->MU(Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;Landroid/os/Parcel;I)V

    return-void
.end method
