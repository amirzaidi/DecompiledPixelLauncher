.class public Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ix:Ljava/lang/String;

.field private final Iy:I

.field private Iz:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Iy:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Ix:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Iz:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    return-void
.end method


# virtual methods
.method public OG()Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Iz:Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    return-object v0
.end method

.method public OH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Ix:Ljava/lang/String;

    return-object v0
.end method

.method OI()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Iy:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->OH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->OH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;->Ix:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/f;->NW(Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceRegistrationStub;Landroid/os/Parcel;I)V

    return-void
.end method
