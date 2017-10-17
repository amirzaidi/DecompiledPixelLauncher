.class public Lcom/google/android/gms/contextmanager/ContextData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final IA:I

.field private IB:Lcom/google/android/gms/internal/X;

.field private IC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/a;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/ContextData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/ContextData;->IA:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OM()V

    return-void
.end method

.method private OK()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OL()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OM()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/X;->tB([B)Lcom/google/android/gms/internal/X;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaxw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ContextData"

    const-string/jumbo v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private OM()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_7

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    if-eqz v0, :cond_0

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    if-nez v0, :cond_1

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method OJ()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    invoke-static {v0}, Lcom/google/android/gms/internal/aI;->uW(Lcom/google/android/gms/internal/aI;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IC:[B

    return-object v0
.end method

.method OL()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method ON()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IA:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/contextmanager/ContextData;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/contextmanager/ContextData;

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OK()V

    invoke-direct {p1}, Lcom/google/android/gms/contextmanager/ContextData;->OK()V

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    iget-object v2, v2, Lcom/google/android/gms/internal/X;->qL:Lcom/google/android/gms/internal/ac;

    iget v2, v2, Lcom/google/android/gms/internal/ac;->rv:I

    iget-object v3, p1, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    iget-object v3, v3, Lcom/google/android/gms/internal/X;->qL:Lcom/google/android/gms/internal/ac;

    iget v3, v3, Lcom/google/android/gms/internal/ac;->rv:I

    if-eq v2, v3, :cond_0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OK()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    iget-object v0, v0, Lcom/google/android/gms/internal/X;->qO:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OK()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/ContextData;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    iget-object v1, v1, Lcom/google/android/gms/internal/X;->qL:Lcom/google/android/gms/internal/ac;

    iget v1, v1, Lcom/google/android/gms/internal/ac;->rv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->hI([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/contextmanager/ContextData;->OK()V

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/ContextData;->IB:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/a;->OU(Lcom/google/android/gms/contextmanager/ContextData;Landroid/os/Parcel;I)V

    return-void
.end method
