.class public final Lcom/google/android/gms/common/api/h;
.super Ljava/lang/Object;


# instance fields
.field private final et:Lcom/google/android/gms/common/api/r;

.field private final eu:Lcom/google/android/gms/common/api/l;

.field private final ev:Ljava/lang/String;

.field private final ew:Lcom/google/android/gms/common/api/n;

.field private final ex:Lcom/google/android/gms/common/api/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/r;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->ho(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/h;->ev:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/h;->eu:Lcom/google/android/gms/common/api/l;

    iput-object v1, p0, Lcom/google/android/gms/common/api/h;->ew:Lcom/google/android/gms/common/api/n;

    iput-object p3, p0, Lcom/google/android/gms/common/api/h;->et:Lcom/google/android/gms/common/api/r;

    iput-object v1, p0, Lcom/google/android/gms/common/api/h;->ex:Lcom/google/android/gms/common/api/q;

    return-void
.end method


# virtual methods
.method public dT()Lcom/google/android/gms/common/api/j;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->et:Lcom/google/android/gms/common/api/r;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->et:Lcom/google/android/gms/common/api/r;

    return-object v0
.end method

.method public dU()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dV()Lcom/google/android/gms/common/api/l;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->eu:Lcom/google/android/gms/common/api/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->eu:Lcom/google/android/gms/common/api/l;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dW()Lcom/google/android/gms/common/api/n;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->hv(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dX()Lcom/google/android/gms/common/api/s;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/h;->dU()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->eu:Lcom/google/android/gms/common/api/l;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/h;->ev:Ljava/lang/String;

    return-object v0
.end method
