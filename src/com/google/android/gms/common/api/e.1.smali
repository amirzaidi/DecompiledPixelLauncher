.class public final Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;


# instance fields
.field private final hb:Lcom/google/android/gms/common/api/q;

.field private final hc:Lcom/google/android/gms/common/api/j;

.field private final hd:Ljava/lang/String;

.field private final he:Lcom/google/android/gms/common/api/l;

.field private final hf:Lcom/google/android/gms/common/api/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/api/q;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/l;->kc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->hd:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->hc:Lcom/google/android/gms/common/api/j;

    iput-object v1, p0, Lcom/google/android/gms/common/api/e;->he:Lcom/google/android/gms/common/api/l;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->hb:Lcom/google/android/gms/common/api/q;

    iput-object v1, p0, Lcom/google/android/gms/common/api/e;->hf:Lcom/google/android/gms/common/api/p;

    return-void
.end method


# virtual methods
.method public gA()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public gB()Lcom/google/android/gms/common/api/j;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hc:Lcom/google/android/gms/common/api/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hc:Lcom/google/android/gms/common/api/j;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public gC()Lcom/google/android/gms/common/api/l;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "This API was constructed with a ClientBuilder. Use getClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/l;->kj(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public gD()Lcom/google/android/gms/common/api/r;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->gA()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hc:Lcom/google/android/gms/common/api/j;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hd:Ljava/lang/String;

    return-object v0
.end method

.method public gz()Lcom/google/android/gms/common/api/h;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hb:Lcom/google/android/gms/common/api/q;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->hb:Lcom/google/android/gms/common/api/q;

    return-object v0
.end method
