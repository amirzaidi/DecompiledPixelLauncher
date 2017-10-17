.class public final Lcom/google/android/gms/internal/J;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public pE:I

.field public pF:[I

.field public pG:J

.field public pH:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/J;->sS()Lcom/google/android/gms/internal/J;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/J;->pE:I

    if-nez v1, :cond_3

    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->pG:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->pG:J

    const/4 v1, 0x2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    if-nez v1, :cond_4

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    if-nez v1, :cond_6

    :cond_2
    :goto_2
    return v0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/J;->pE:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v4, v4

    if-lt v1, v4, :cond_5

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->pH:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v3, v3

    if-lt v2, v3, :cond_7

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/J;->pF:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/J;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/J;

    iget v0, p0, Lcom/google/android/gms/internal/J;->pE:I

    iget v1, p1, Lcom/google/android/gms/internal/J;->pE:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/J;->pG:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/J;->pG:J

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
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pH:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/J;->pH:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->xe([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/J;->pF:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->xe([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v5

    :cond_4
    return v4

    :cond_5
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

    iget v1, p0, Lcom/google/android/gms/internal/J;->pE:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->pG:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/J;->pG:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xb([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xb([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sS()Lcom/google/android/gms/internal/J;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/J;->pE:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->pG:J

    sget-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->pH:[I

    sget-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/J;->sB:I

    return-object p0
.end method

.method public sT(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/J;
    .locals 7

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vn(Lcom/google/android/gms/internal/be;I)Z

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
    iput v0, p0, Lcom/google/android/gms/internal/J;->pE:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/J;->pG:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v2

    move v0, v2

    :goto_1
    if-lt v3, v4, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v1, v1

    :goto_2
    if-eqz v1, :cond_5

    :cond_1
    add-int v3, v1, v0

    new-array v3, v3, [I

    if-nez v1, :cond_6

    :goto_3
    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/J;->pH:[I

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    goto :goto_4

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    aput v6, v5, v0

    move v0, v1

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_1

    iput-object v5, p0, Lcom/google/android/gms/internal/J;->pH:[I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->pH:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v1

    move v0, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_7

    if-nez v0, :cond_8

    :goto_7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-nez v1, :cond_a

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v0

    if-gtz v0, :cond_b

    iput-object v4, p0, Lcom/google/android/gms/internal/J;->pH:[I

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pH:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_9

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_9

    :sswitch_5
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v2

    move v0, v2

    :goto_a
    if-lt v3, v4, :cond_d

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v1, v1

    :goto_b
    if-eqz v1, :cond_10

    :cond_c
    add-int v3, v1, v0

    new-array v3, v3, [I

    if-nez v1, :cond_11

    :goto_c
    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/J;->pF:[I

    goto/16 :goto_0

    :cond_d
    if-nez v3, :cond_e

    :goto_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v6

    packed-switch v6, :pswitch_data_4

    :goto_e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    goto :goto_d

    :pswitch_4
    add-int/lit8 v1, v0, 0x1

    aput v6, v5, v0

    move v0, v1

    goto :goto_e

    :cond_f
    move v1, v2

    goto :goto_b

    :cond_10
    if-ne v0, v4, :cond_c

    iput-object v5, p0, Lcom/google/android/gms/internal/J;->pF:[I

    goto/16 :goto_0

    :cond_11
    iget-object v4, p0, Lcom/google/android/gms/internal/J;->pF:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v1

    move v0, v2

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_12

    if-nez v0, :cond_13

    :goto_10
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v4

    packed-switch v4, :pswitch_data_5

    goto :goto_f

    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v1, v1

    :goto_11
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-nez v1, :cond_15

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v0

    if-gtz v0, :cond_16

    iput-object v4, p0, Lcom/google/android/gms/internal/J;->pF:[I

    goto :goto_10

    :cond_14
    move v1, v2

    goto :goto_11

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v5

    packed-switch v5, :pswitch_data_6

    goto :goto_12

    :pswitch_6
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_12

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/J;->pE:I

    if-nez v0, :cond_3

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->pG:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/J;->pG:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pH:[I

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    if-nez v0, :cond_5

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/J;->pE:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/J;->pH:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/J;->pH:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vX(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v0, v0

    if-lez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/J;->pF:[I

    aget v0, v0, v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/J;->sT(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/J;

    move-result-object v0

    return-object v0
.end method
