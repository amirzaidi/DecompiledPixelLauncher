.class final Lcom/google/android/gms/internal/aV;
.super Ljava/lang/Object;


# instance fields
.field final tA:[B

.field final tB:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/aV;->tB:I

    iput-object p2, p0, Lcom/google/android/gms/internal/aV;->tA:[B

    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aV;->tB:I

    invoke-static {v0}, Lcom/google/android/gms/internal/aP;->vY(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tA:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_1

    instance-of v2, p1, Lcom/google/android/gms/internal/aV;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/aV;

    iget v2, p0, Lcom/google/android/gms/internal/aV;->tB:I

    iget v3, p1, Lcom/google/android/gms/internal/aV;->tB:I

    if-eq v2, v3, :cond_3

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aV;->tA:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/aV;->tA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/aV;->tB:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/aV;->tA:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method xA(Lcom/google/android/gms/internal/aP;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aV;->tB:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aP;->wa(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aV;->tA:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aP;->vS([B)V

    return-void
.end method
