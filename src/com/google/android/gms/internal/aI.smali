.class public abstract Lcom/google/android/gms/internal/aI;
.super Ljava/lang/Object;


# instance fields
.field protected volatile sB:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aI;->sB:I

    return-void
.end method

.method public static final uU(Lcom/google/android/gms/internal/aI;[BII)Lcom/google/android/gms/internal/aI;
    .locals 2

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/be;->xR([BII)Lcom/google/android/gms/internal/be;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aI;->sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->xU(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaxw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final uV(Lcom/google/android/gms/internal/aI;[B)Lcom/google/android/gms/internal/aI;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/aI;->uU(Lcom/google/android/gms/internal/aI;[BII)Lcom/google/android/gms/internal/aI;

    move-result-object v0

    return-object v0
.end method

.method public static final uW(Lcom/google/android/gms/internal/aI;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->uY()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/gms/internal/aI;->uZ(Lcom/google/android/gms/internal/aI;[BII)V

    return-object v0
.end method

.method public static final uZ(Lcom/google/android/gms/internal/aI;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/aV;->wE([BII)Lcom/google/android/gms/internal/aV;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aV;->vQ()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->sg()Lcom/google/android/gms/internal/aI;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 0

    return-void
.end method

.method public abstract sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
.end method

.method public sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aI;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/aE;->uP(Lcom/google/android/gms/internal/aI;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aI;->sB:I

    if-ltz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/aI;->sB:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->uY()I

    goto :goto_0
.end method

.method public uY()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aI;->sB:I

    return v0
.end method
