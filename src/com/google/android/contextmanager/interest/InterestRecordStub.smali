.class public Lcom/google/android/contextmanager/interest/InterestRecordStub;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final KK:Lcom/google/android/gms/internal/V;

.field private final KL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/contextmanager/interest/a;

    invoke-direct {v0}, Lcom/google/android/contextmanager/interest/a;-><init>()V

    sput-object v0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->KL:I

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/V;->tw([B)Lcom/google/android/gms/internal/V;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaxw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->KK:Lcom/google/android/gms/internal/V;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "InterestRecordStub"

    const-string/jumbo v3, "Could not deserialize interest bytes."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method QZ()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->KK:Lcom/google/android/gms/internal/V;

    invoke-static {v0}, Lcom/google/android/gms/internal/aI;->uW(Lcom/google/android/gms/internal/aI;)[B

    move-result-object v0

    return-object v0
.end method

.method Ra()I
    .locals 1

    iget v0, p0, Lcom/google/android/contextmanager/interest/InterestRecordStub;->KL:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/contextmanager/interest/a;->Rd(Lcom/google/android/contextmanager/interest/InterestRecordStub;Landroid/os/Parcel;I)V

    return-void
.end method
