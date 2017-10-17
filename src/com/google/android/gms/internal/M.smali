.class public final Lcom/google/android/gms/internal/M;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public qq:I

.field public qr:[I

.field public qs:D

.field public qt:D

.field public qu:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/M;->tn()Lcom/google/android/gms/internal/M;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 8

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/M;->qq:I

    if-nez v2, :cond_4

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wM(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wM(ID)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qu:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qu:J

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/M;->qr:[I

    if-nez v2, :cond_5

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/M;->qq:I

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v3, v3

    if-lt v1, v3, :cond_6

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/M;->qr:[I

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

    instance-of v0, p1, Lcom/google/android/gms/internal/M;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/M;

    iget v0, p0, Lcom/google/android/gms/internal/M;->qq:I

    iget v1, p1, Lcom/google/android/gms/internal/M;->qq:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/M;->qt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/M;->qt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

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
    iget-wide v0, p0, Lcom/google/android/gms/internal/M;->qs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/M;->qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    return v4

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/M;->qu:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/M;->qu:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    return v4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/M;->qr:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/M;->qr:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aR;->xd([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/M;->qq:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qu:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/M;->qu:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/aR;->xa([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/M;->qq:I

    if-nez v1, :cond_4

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wj(ID)V

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wj(ID)V

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qu:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/M;->qu:J

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    if-nez v1, :cond_5

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/M;->qq:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v1, v1

    if-lez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    aget v1, v1, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aP;->vW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/M;->to(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/M;

    move-result-object v0

    return-object v0
.end method

.method public tn()Lcom/google/android/gms/internal/M;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/M;->qq:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/M;->qt:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/M;->qs:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/M;->qu:J

    sget-object v0, Lcom/google/android/gms/internal/aH;->sU:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/M;->qr:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/M;->sH:I

    return-object p0
.end method

.method public to(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/M;
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
    iput v0, p0, Lcom/google/android/gms/internal/M;->qq:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xR()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/M;->qt:D

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xR()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/M;->qs:D

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/M;->qu:J

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v2

    move v0, v2

    :goto_1
    if-lt v3, v4, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v1, v1

    :goto_2
    if-eqz v1, :cond_5

    :cond_1
    add-int v3, v1, v0

    new-array v3, v3, [I

    if-nez v1, :cond_6

    :goto_3
    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/M;->qr:[I

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

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

    iput-object v5, p0, Lcom/google/android/gms/internal/M;->qr:[I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/M;->qr:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :sswitch_6
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

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_6

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/M;->qr:[I

    array-length v1, v1

    :goto_8
    add-int/2addr v0, v1

    new-array v4, v0, [I

    if-nez v1, :cond_a

    :goto_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v0

    if-gtz v0, :cond_b

    iput-object v4, p0, Lcom/google/android/gms/internal/M;->qr:[I

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/M;->qr:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_9

    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_9

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
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
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
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
        :pswitch_3
    .end packed-switch
.end method
