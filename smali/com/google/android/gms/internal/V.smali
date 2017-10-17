.class public final Lcom/google/android/gms/internal/V;
.super Lcom/google/android/gms/internal/ba;


# instance fields
.field public qA:Lcom/google/android/gms/internal/Y;

.field public qB:Lcom/google/android/gms/internal/B;

.field public qC:Lcom/google/android/gms/internal/U;

.field public qD:J

.field public qE:Lcom/google/android/gms/internal/ae;

.field public qy:I

.field public qz:Lcom/google/android/gms/internal/R;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/V;->tv()Lcom/google/android/gms/internal/V;

    return-void
.end method

.method public static tw([B)Lcom/google/android/gms/internal/V;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/V;

    invoke-direct {v0}, Lcom/google/android/gms/internal/V;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aI;->uV(Lcom/google/android/gms/internal/aI;[B)Lcom/google/android/gms/internal/aI;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/V;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/V;->qD:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/V;->qD:J

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/V;->qy:I

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-nez v1, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-nez v1, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-nez v1, :cond_5

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/V;->qy:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/internal/V;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/V;

    iget-wide v2, p0, Lcom/google/android/gms/internal/V;->qD:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/V;->qD:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/V;->qy:I

    iget v3, p1, Lcom/google/android/gms/internal/V;->qy:I

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    iget-object v3, p1, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/B;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    iget-object v3, p1, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/Y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    iget-object v3, p1, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ae;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    iget-object v3, p1, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/R;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    iget-object v3, p1, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/U;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_15

    :cond_8
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_16

    :cond_9
    move v0, v1

    :goto_0
    return v0

    :cond_a
    return v0

    :cond_b
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-eqz v2, :cond_3

    return v0

    :cond_c
    return v0

    :cond_d
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-eqz v2, :cond_4

    return v0

    :cond_e
    return v0

    :cond_f
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-eqz v2, :cond_5

    return v0

    :cond_10
    return v0

    :cond_11
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-eqz v2, :cond_6

    return v0

    :cond_12
    return v0

    :cond_13
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-eqz v2, :cond_7

    return v0

    :cond_14
    return v0

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_16
    iget-object v2, p1, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/V;->qD:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/V;->qD:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/V;->qy:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/B;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/Y;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/R;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/U;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_6

    :cond_0
    :goto_5
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
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/V;->qD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/V;->qD:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/V;->qy:I

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-nez v0, :cond_5

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-nez v0, :cond_6

    :goto_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/V;->qy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_5
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/V;->tu(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/V;

    move-result-object v0

    return-object v0
.end method

.method public tu(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/V;
    .locals 2

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/V;->qD:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    iput v0, p0, Lcom/google/android/gms/internal/V;->qy:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/B;

    invoke-direct {v0}, Lcom/google/android/gms/internal/B;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/Y;

    invoke-direct {v0}, Lcom/google/android/gms/internal/Y;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    goto :goto_2

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    if-eqz v0, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    goto :goto_3

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    if-eqz v0, :cond_4

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/R;

    invoke-direct {v0}, Lcom/google/android/gms/internal/R;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    goto :goto_4

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    if-eqz v0, :cond_5

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/U;

    invoke-direct {v0}, Lcom/google/android/gms/internal/U;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x10 -> :sswitch_3
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_3
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_3
        0x1c -> :sswitch_3
        0x1d -> :sswitch_3
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
        0x20 -> :sswitch_3
        0x21 -> :sswitch_3
        0x22 -> :sswitch_3
        0x23 -> :sswitch_3
        0x24 -> :sswitch_3
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x1869f -> :sswitch_3
    .end sparse-switch
.end method

.method public tv()Lcom/google/android/gms/internal/V;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/V;->qD:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/V;->qy:I

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->qB:Lcom/google/android/gms/internal/B;

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->qA:Lcom/google/android/gms/internal/Y;

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->qE:Lcom/google/android/gms/internal/ae;

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->qz:Lcom/google/android/gms/internal/R;

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->qC:Lcom/google/android/gms/internal/U;

    iput-object v2, p0, Lcom/google/android/gms/internal/V;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/V;->sB:I

    return-object p0
.end method
