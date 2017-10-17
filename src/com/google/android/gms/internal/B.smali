.class public final Lcom/google/android/gms/internal/B;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public pB:[I

.field public pC:J

.field public pD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/B;->sM()Lcom/google/android/gms/internal/B;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/B;->pD:I

    if-nez v2, :cond_2

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/B;->pC:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/B;->pC:J

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/B;->pB:[I

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/B;->pD:I

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v3, v3

    if-lt v1, v3, :cond_4

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/B;->pB:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/aP;->wg(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/B;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/B;

    iget v0, p0, Lcom/google/android/gms/internal/B;->pD:I

    iget v1, p1, Lcom/google/android/gms/internal/B;->pD:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/B;->pC:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/B;->pC:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    return v4

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/B;->pB:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/B;->pB:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aR;->xd([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v5

    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/B;->pD:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/B;->pC:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/B;->pC:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/aR;->xa([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sM()Lcom/google/android/gms/internal/B;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/B;->pD:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/B;->pC:J

    sget-object v0, Lcom/google/android/gms/internal/aH;->sU:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/B;->pB:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/B;->sH:I

    return-object p0
.end method

.method public sN(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/B;
    .locals 7

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vm(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/B;->pD:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/B;->pC:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v2

    move v0, v2

    :goto_1
    if-lt v3, v4, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v1, v1

    :goto_2
    if-eqz v1, :cond_5

    :cond_1
    add-int v3, v1, v0

    new-array v3, v3, [I

    if-nez v1, :cond_6

    :goto_3
    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/B;->pB:[I

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    goto :goto_4

    :sswitch_4
    add-int/lit8 v1, v0, 0x1

    aput v6, v5, v0

    move v0, v1

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_1

    iput-object v5, p0, Lcom/google/android/gms/internal/B;->pB:[I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/B;->pB:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->yb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->ye(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v1

    move v0, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v4

    if-gtz v4, :cond_7

    if-nez v0, :cond_8

    :goto_7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xS(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_6

    :sswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-nez v1, :cond_a

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v0

    if-gtz v0, :cond_b

    iput-object v4, p0, Lcom/google/android/gms/internal/B;->pB:[I

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/B;->pB:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    goto :goto_9

    :sswitch_7
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3e8 -> :sswitch_4
        0x0 -> :sswitch_4
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_4
        0xf -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x3e8 -> :sswitch_6
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_6
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x3e8 -> :sswitch_7
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x4 -> :sswitch_7
        0x5 -> :sswitch_7
        0x6 -> :sswitch_7
        0x7 -> :sswitch_7
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
    .end sparse-switch
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/B;->pD:I

    if-nez v1, :cond_2

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/B;->pC:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/B;->pC:J

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    if-nez v1, :cond_3

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/B;->pD:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v1, v1

    if-lez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/B;->pB:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/B;->sN(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/B;

    move-result-object v0

    return-object v0
.end method
