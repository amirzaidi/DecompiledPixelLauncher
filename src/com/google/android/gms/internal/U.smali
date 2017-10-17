.class public final Lcom/google/android/gms/internal/U;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public ro:I

.field public rp:I

.field public rq:I

.field public rr:J

.field public rs:J

.field public rt:D

.field public ru:I

.field public rv:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/U;->tG()Lcom/google/android/gms/internal/U;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/U;->rq:I

    if-nez v1, :cond_4

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/U;->ru:I

    if-nez v1, :cond_5

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rs:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rs:J

    const/4 v1, 0x3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/U;->rp:I

    if-nez v1, :cond_6

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/U;->ro:I

    if-nez v1, :cond_7

    :goto_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rt:D

    const/4 v1, 0x6

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wM(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rv:D

    const/4 v1, 0x7

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wM(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rr:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rr:J

    const/16 v1, 0x8

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/U;->rq:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/U;->ru:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/U;->rp:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/google/android/gms/internal/U;->ro:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/U;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/U;

    iget v0, p0, Lcom/google/android/gms/internal/U;->rq:I

    iget v1, p1, Lcom/google/android/gms/internal/U;->rq:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/U;->ru:I

    iget v1, p1, Lcom/google/android/gms/internal/U;->ru:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rs:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/U;->rs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    return v4

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    return v4

    :cond_3
    return v4

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/U;->rp:I

    iget v1, p1, Lcom/google/android/gms/internal/U;->rp:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/U;->ro:I

    iget v1, p1, Lcom/google/android/gms/internal/U;->ro:I

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/U;->rt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    return v4

    :cond_5
    return v4

    :cond_6
    return v4

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/U;->rv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    return v4

    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rr:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/U;->rr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    return v4

    :cond_9
    return v5
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

    iget v1, p0, Lcom/google/android/gms/internal/U;->rq:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/U;->ru:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rs:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/U;->rs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/U;->rp:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/U;->ro:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rt:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rv:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/U;->rr:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/U;->rr:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/U;->rq:I

    if-nez v0, :cond_4

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/U;->ru:I

    if-nez v0, :cond_5

    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rs:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rs:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/U;->rp:I

    if-nez v0, :cond_6

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/U;->ro:I

    if-nez v0, :cond_7

    :goto_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rt:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rt:D

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->wj(ID)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rv:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rv:D

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->wj(ID)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rr:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/U;->rr:J

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/U;->rq:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/U;->ru:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/U;->rp:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/U;->ro:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_3
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/U;->tF(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/U;

    move-result-object v0

    return-object v0
.end method

.method public tF(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/U;
    .locals 2

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
    iput v0, p0, Lcom/google/android/gms/internal/U;->rq:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/U;->ru:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/U;->rs:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/U;->rp:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/U;->ro:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xR()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/U;->rt:D

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xR()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/U;->rv:D

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/U;->rr:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x31 -> :sswitch_6
        0x39 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public tG()Lcom/google/android/gms/internal/U;
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/U;->rq:I

    iput v0, p0, Lcom/google/android/gms/internal/U;->ru:I

    iput-wide v4, p0, Lcom/google/android/gms/internal/U;->rs:J

    iput v0, p0, Lcom/google/android/gms/internal/U;->rp:I

    iput v0, p0, Lcom/google/android/gms/internal/U;->ro:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/U;->rt:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/U;->rv:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/U;->rr:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/U;->sH:I

    return-object p0
.end method
