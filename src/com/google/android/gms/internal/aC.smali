.class public abstract Lcom/google/android/gms/internal/aC;
.super Ljava/lang/Object;


# instance fields
.field protected volatile sH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aC;->sH:I

    return-void
.end method

.method public static final uT(Lcom/google/android/gms/internal/aC;[BII)Lcom/google/android/gms/internal/aC;
    .locals 2

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/aY;->xQ([BII)Lcom/google/android/gms/internal/aY;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aC;->se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aY;->xT(I)V
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

.method public static final uU(Lcom/google/android/gms/internal/aC;[B)Lcom/google/android/gms/internal/aC;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/aC;->uT(Lcom/google/android/gms/internal/aC;[BII)Lcom/google/android/gms/internal/aC;

    move-result-object v0

    return-object v0
.end method

.method public static final uV(Lcom/google/android/gms/internal/aC;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aC;->uX()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/android/gms/internal/aC;->uY(Lcom/google/android/gms/internal/aC;[BII)V

    return-object v0
.end method

.method public static final uY(Lcom/google/android/gms/internal/aC;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/aP;->wD([BII)Lcom/google/android/gms/internal/aP;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aP;->vP()V
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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aC;->si()Lcom/google/android/gms/internal/aC;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 0

    return-void
.end method

.method public abstract se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
.end method

.method public si()Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aC;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ay;->uO(Lcom/google/android/gms/internal/aC;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aC;->sH:I

    if-ltz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/aC;->sH:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aC;->uX()I

    goto :goto_0
.end method

.method public uX()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aC;->sH:I

    return v0
.end method
