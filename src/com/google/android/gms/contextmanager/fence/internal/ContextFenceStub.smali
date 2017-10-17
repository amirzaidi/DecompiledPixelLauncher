.class public Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;
.super Lcom/google/android/gms/awareness/fence/AwarenessFence;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private JR:Lcom/google/android/gms/internal/G;

.field private final JS:I

.field private JT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/fence/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/AwarenessFence;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JS:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->Pn()V

    return-void
.end method

.method private Pl()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->Pm()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->Pn()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/G;->ta([B)Lcom/google/android/gms/internal/G;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaxw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ContextFenceStub"

    const-string/jumbo v2, "Could not deserialize context fence bytes."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/J;->te(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private Pm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private Pn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_7

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    if-eqz v0, :cond_0

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    if-nez v0, :cond_1

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Po()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    invoke-static {v0}, Lcom/google/android/gms/internal/aC;->uV(Lcom/google/android/gms/internal/aC;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JT:[B

    return-object v0
.end method

.method Pp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JS:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->Pl()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;->JR:Lcom/google/android/gms/internal/G;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/G;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/fence/internal/j;->Pa(Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;Landroid/os/Parcel;I)V

    return-void
.end method
