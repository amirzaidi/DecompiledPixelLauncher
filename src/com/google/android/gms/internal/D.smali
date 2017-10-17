.class public final Lcom/google/android/gms/internal/D;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public ph:J

.field public pi:[Lcom/google/android/gms/internal/E;

.field public pj:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/D;->sG()Lcom/google/android/gms/internal/D;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/D;->pj:I

    if-nez v2, :cond_2

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/D;->pj:I

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    array-length v2, v2

    if-lez v2, :cond_1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    aget-object v2, v2, v0

    if-nez v2, :cond_5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/D;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/D;

    iget v0, p0, Lcom/google/android/gms/internal/D;->pj:I

    iget v1, p1, Lcom/google/android/gms/internal/D;->pj:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/D;->ph:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/D;->ph:J

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
    iget-object v0, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    iget-object v1, p1, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

    iget v1, p0, Lcom/google/android/gms/internal/D;->pj:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/D;->ph:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sF(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/D;
    .locals 4

    const/4 v1, 0x0

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
    iput v0, p0, Lcom/google/android/gms/internal/D;->pj:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/E;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/E;

    invoke-direct {v3}, Lcom/google/android/gms/internal/E;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/E;

    invoke-direct {v3}, Lcom/google/android/gms/internal/E;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sG()Lcom/google/android/gms/internal/D;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/D;->pj:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/D;->ph:J

    invoke-static {}, Lcom/google/android/gms/internal/E;->sI()[Lcom/google/android/gms/internal/E;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/D;->sB:I

    return-object p0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/D;->pj:I

    if-nez v1, :cond_2

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/D;->ph:J

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    if-nez v1, :cond_3

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/D;->pj:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    array-length v1, v1

    if-lez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/D;->pi:[Lcom/google/android/gms/internal/E;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_2
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/D;->sF(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/D;

    move-result-object v0

    return-object v0
.end method
