.class public final Lcom/google/android/gms/internal/W;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public qF:I

.field public qG:J

.field public qH:Lcom/google/android/gms/internal/G;

.field public qI:J

.field public qJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/W;->tx()Lcom/google/android/gms/internal/W;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/W;->qF:I

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qG:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qG:J

    const/4 v1, 0x3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qI:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qI:J

    const/4 v1, 0x4

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-nez v1, :cond_4

    :goto_2
    return v0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/W;->qF:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/W;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/W;

    iget v0, p0, Lcom/google/android/gms/internal/W;->qF:I

    iget v1, p1, Lcom/google/android/gms/internal/W;->qF:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qG:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/W;->qG:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    return v4

    :cond_1
    return v5

    :cond_2
    return v4

    :cond_3
    return v4

    :cond_4
    iget-object v0, p1, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return v4

    :cond_5
    return v4

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qI:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/W;->qI:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    return v4

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    iget-object v1, p1, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/G;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    return v5

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_8

    return v4

    :cond_a
    return v4
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

    iget v2, p0, Lcom/google/android/gms/internal/W;->qF:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qG:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/W;->qG:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/W;->qI:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/W;->qI:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/G;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/W;->qF:I

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qG:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qG:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qI:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/W;->qI:J

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-nez v0, :cond_4

    :goto_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/W;->qF:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/W;->ty(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/W;

    move-result-object v0

    return-object v0
.end method

.method public tx()Lcom/google/android/gms/internal/W;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/W;->qF:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/W;->qG:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/W;->qI:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/W;->sB:I

    return-object p0
.end method

.method public ty(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/W;
    .locals 2

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
    iput v0, p0, Lcom/google/android/gms/internal/W;->qF:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/W;->qJ:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/W;->qG:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/W;->qI:J

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/G;

    invoke-direct {v0}, Lcom/google/android/gms/internal/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/W;->qH:Lcom/google/android/gms/internal/G;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
