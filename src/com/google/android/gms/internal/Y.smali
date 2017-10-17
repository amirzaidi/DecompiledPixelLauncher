.class public final Lcom/google/android/gms/internal/Y;
.super Lcom/google/android/gms/internal/ba;


# instance fields
.field public qV:I

.field public qW:Ljava/lang/String;

.field public qX:J

.field public qY:I

.field public qZ:Ljava/lang/String;

.field public ra:[B

.field public rb:Ljava/lang/String;

.field public rc:[Ljava/lang/String;

.field public rd:[I

.field public re:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/Y;->tC()Lcom/google/android/gms/internal/Y;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/Y;->type:I

    if-nez v1, :cond_4

    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/Y;->re:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/Y;->re:J

    const/4 v1, 0x2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/Y;->qV:I

    if-nez v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    sget-object v3, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    if-nez v1, :cond_9

    :cond_1
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_2
    :goto_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->qX:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->qX:J

    const/16 v1, 0x9

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/Y;->qY:I

    if-nez v1, :cond_e

    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_8
    return v0

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/Y;->type:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/Y;->qV:I

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    const/4 v3, 0x6

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wM(I[B)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v2

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v4, v4

    if-lt v1, v4, :cond_a

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_a
    iget-object v4, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_c

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_6

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_d

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_b

    :cond_e
    iget v1, p0, Lcom/google/android/gms/internal/Y;->qY:I

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_7

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/internal/Y;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/Y;

    iget v2, p0, Lcom/google/android/gms/internal/Y;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/Y;->type:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->re:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/Y;->re:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/Y;->qV:I

    iget v3, p1, Lcom/google/android/gms/internal/Y;->qV:I

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->ra:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->rd:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->xe([I[I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->qX:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/Y;->qX:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v0

    :cond_6
    return v0

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v0

    :cond_8
    return v0

    :cond_9
    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    if-eqz v2, :cond_5

    return v0

    :cond_a
    return v0

    :cond_b
    return v0

    :cond_c
    return v0

    :cond_d
    return v0

    :cond_e
    iget v2, p0, Lcom/google/android/gms/internal/Y;->qY:I

    iget v3, p1, Lcom/google/android/gms/internal/Y;->qY:I

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_15

    :cond_10
    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_16

    :cond_11
    move v0, v1

    :goto_0
    return v0

    :cond_12
    return v0

    :cond_13
    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    if-eqz v2, :cond_f

    return v0

    :cond_14
    return v0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_16
    iget-object v2, p1, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/Y;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->re:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/Y;->re:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/Y;->qV:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xb([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->qX:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/Y;->qX:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/Y;->qY:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/Y;->type:I

    if-nez v0, :cond_4

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->re:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/Y;->re:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/Y;->qV:I

    if-nez v0, :cond_5

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    sget-object v2, Lcom/google/android/gms/internal/aN;->sQ:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    if-nez v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/Y;->qX:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/Y;->qX:J

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/Y;->qY:I

    if-nez v0, :cond_c

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/Y;->type:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/Y;->qV:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->wz(I[B)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    aget v2, v2, v0

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vX(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_b

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_9

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/Y;->qY:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/Y;->tD(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/Y;

    move-result-object v0

    return-object v0
.end method

.method public tC()Lcom/google/android/gms/internal/Y;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/Y;->type:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/Y;->re:J

    iput v2, p0, Lcom/google/android/gms/internal/Y;->qV:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sQ:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    sget-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/Y;->qX:J

    iput v2, p0, Lcom/google/android/gms/internal/Y;->qY:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/Y;->sB:I

    return-object p0
.end method

.method public tD(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/Y;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ba;->xt(Lcom/google/android/gms/internal/be;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/Y;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/Y;->re:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_4
    iput v0, p0, Lcom/google/android/gms/internal/Y;->qV:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->rb:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->qW:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xP()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->ra:[B

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x38

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_6

    :goto_5
    array-length v4, v0

    if-lt v2, v4, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/Y;->rd:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :sswitch_a
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    array-length v0, v0

    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_9

    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/Y;->rc:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/Y;->qX:J

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/Y;->qY:I

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/Y;->qZ:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x38 -> :sswitch_8
        0x3a -> :sswitch_9
        0x42 -> :sswitch_a
        0x48 -> :sswitch_b
        0x50 -> :sswitch_c
        0x5a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x64 -> :sswitch_4
        0x66 -> :sswitch_4
        0x68 -> :sswitch_4
        0x69 -> :sswitch_4
    .end sparse-switch
.end method
