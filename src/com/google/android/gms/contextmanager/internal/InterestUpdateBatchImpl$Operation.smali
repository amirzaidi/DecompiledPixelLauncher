.class public Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ju:Ljava/lang/String;

.field private final Jv:I

.field private final Jw:Lcom/google/android/contextmanager/interest/InterestRecordStub;

.field private final Jx:I


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

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jv:I

    iput p2, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jx:I

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jw:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    iput-object p4, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Ju:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method Or()Lcom/google/android/contextmanager/interest/InterestRecordStub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jw:Lcom/google/android/contextmanager/interest/InterestRecordStub;

    return-object v0
.end method

.method public Os()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jx:I

    return v0
.end method

.method Ot()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Jv:I

    return v0
.end method

.method Ou()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;->Ju:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/i;->NN(Lcom/google/android/gms/contextmanager/internal/InterestUpdateBatchImpl$Operation;Landroid/os/Parcel;I)V

    return-void
.end method
