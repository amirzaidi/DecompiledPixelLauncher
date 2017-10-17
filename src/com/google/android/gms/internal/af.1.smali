.class public final Lcom/google/android/gms/internal/af;
.super Lcom/google/android/gms/internal/aI;


# instance fields
.field public rA:[Ljava/lang/String;

.field public rB:I

.field public rC:[Ljava/lang/String;

.field public rD:J

.field public rE:J

.field public rF:Ljava/lang/String;

.field public rG:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aI;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/af;->tQ()Lcom/google/android/gms/internal/af;

    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aI;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/af;->rB:I

    if-nez v1, :cond_5

    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rE:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rE:J

    const/4 v1, 0x2

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rG:[I

    if-nez v1, :cond_6

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_2
    :goto_2
    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rD:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rD:J

    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/aV;->wv(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_4
    return v0

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/af;->rB:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v2

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v4, v4

    if-lt v1, v4, :cond_7

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/internal/af;->rG:[I

    aget v4, v4, v1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_6
    iget-object v5, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_9

    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_a

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    :goto_8
    iget-object v4, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_c

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_d

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/af;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/af;

    iget v0, p0, Lcom/google/android/gms/internal/af;->rB:I

    iget v1, p1, Lcom/google/android/gms/internal/af;->rB:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/af;->rE:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/af;->rE:J

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
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    iget-object v1, p1, Lcom/google/android/gms/internal/af;->rG:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->xe([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/google/android/gms/internal/af;->rD:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/af;->rD:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    return v4

    :cond_4
    return v4

    :cond_5
    return v4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    return v5

    :cond_8
    return v4

    :cond_9
    iget-object v0, p1, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    if-eqz v0, :cond_7

    return v4

    :cond_a
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

    iget v1, p0, Lcom/google/android/gms/internal/af;->rB:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rE:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rE:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rG:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xb([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rD:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/af;->rD:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/af;->rB:I

    if-nez v0, :cond_5

    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rE:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rE:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rD:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/af;->rD:J

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aI;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/af;->rB:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rG:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vX(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_a

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/af;->tR(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/af;

    move-result-object v0

    return-object v0
.end method

.method public tQ()Lcom/google/android/gms/internal/af;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/af;->rB:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/af;->rE:J

    sget-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/af;->rD:J

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/af;->sB:I

    return-object p0
.end method

.method public tR(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/af;
    .locals 5

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
    iput v0, p0, Lcom/google/android/gms/internal/af;->rB:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/af;->rE:J

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

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

    iput-object v2, p0, Lcom/google/android/gms/internal/af;->rG:[I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/af;->rG:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_4
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

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rG:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/af;->rG:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_6

    :goto_5
    array-length v4, v0

    if-lt v2, v4, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rG:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/af;->rG:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :sswitch_5
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

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

    iput-object v2, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/af;->rC:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/af;->rD:J

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    array-length v0, v0

    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_c

    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/android/gms/internal/af;->rA:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/af;->rF:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
