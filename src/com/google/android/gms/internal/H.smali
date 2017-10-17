.class public final Lcom/google/android/gms/internal/H;
.super Lcom/google/android/gms/internal/aC;


# instance fields
.field public qf:J

.field public qg:I

.field public qh:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aC;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/H;->tc()Lcom/google/android/gms/internal/H;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/aC;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/H;->qh:I

    if-nez v1, :cond_1

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/H;->qf:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/H;->qf:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/aP;->wu(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/H;->qg:I

    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/H;->qh:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/H;->qg:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/H;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/H;

    iget v0, p0, Lcom/google/android/gms/internal/H;->qh:I

    iget v1, p1, Lcom/google/android/gms/internal/H;->qh:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/H;->qf:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/H;->qf:J

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
    iget v0, p0, Lcom/google/android/gms/internal/H;->qg:I

    iget v1, p1, Lcom/google/android/gms/internal/H;->qg:I

    if-ne v0, v1, :cond_4

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

    iget v1, p0, Lcom/google/android/gms/internal/H;->qh:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/H;->qf:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/H;->qf:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/H;->qg:I

    add-int/2addr v0, v1

    return v0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/H;->qh:I

    if-nez v0, :cond_1

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/H;->qf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/H;->qf:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/H;->qg:I

    if-nez v0, :cond_2

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aC;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/H;->qh:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/H;->qg:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_1
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/H;->tb(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/H;

    move-result-object v0

    return-object v0
.end method

.method public tb(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/H;
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
    iput v0, p0, Lcom/google/android/gms/internal/H;->qh:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/H;->qf:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/google/android/gms/internal/H;->qg:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
        :pswitch_1
    .end packed-switch
.end method

.method public tc()Lcom/google/android/gms/internal/H;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/H;->qh:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/H;->qf:J

    iput v2, p0, Lcom/google/android/gms/internal/H;->qg:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/H;->sH:I

    return-object p0
.end method
