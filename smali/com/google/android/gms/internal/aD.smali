.class public final Lcom/google/android/gms/internal/aD;
.super Lcom/google/android/gms/internal/ba;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public so:[I

.field public sp:[J

.field public sq:[J

.field public sr:[Ljava/lang/String;

.field public ss:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aD;->uJ()Lcom/google/android/gms/internal/aD;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aD;->uL()Lcom/google/android/gms/internal/aD;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    if-nez v2, :cond_b

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    if-nez v2, :cond_d

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    if-nez v2, :cond_f

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_5
    iget-object v5, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_6

    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_7

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_7
    iget-object v5, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_9

    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_a

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v4, v4

    if-lt v2, v4, :cond_c

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->so:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wh(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v4, v4

    if-lt v2, v4, :cond_e

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_3

    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aV;->wD(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v3, v3

    if-lt v1, v3, :cond_10

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aV;->wD(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/internal/aD;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/aD;

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wX([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->xe([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wZ([J[J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aX;->wZ([J[J)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_9

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_a

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v0

    :cond_5
    return v0

    :cond_6
    return v0

    :cond_7
    return v0

    :cond_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    iget-object v1, p1, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xf([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xb([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xa([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/aX;->xa([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aR;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aR;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    if-nez v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    if-nez v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    if-nez v0, :cond_b

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vX(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    aget-wide v2, v2, v0

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    aget-wide v2, v0, v1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aV;->vY(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aD;->uK(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic se()Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aD;

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aD;

    return-object v0
.end method

.method public uJ()Lcom/google/android/gms/internal/aD;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    sget-object v0, Lcom/google/android/gms/internal/aN;->sP:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    sget-object v0, Lcom/google/android/gms/internal/aN;->sP:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/aD;->sB:I

    return-object p0
.end method

.method public uK(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aD;
    .locals 6

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
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v0, v0

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v0, v0

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_8

    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v2

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_a

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_c

    :goto_9
    array-length v4, v0

    if-lt v2, v4, :cond_d

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    move v2, v1

    goto :goto_8

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :sswitch_5
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v0, v0

    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-nez v0, :cond_f

    :goto_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_a

    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v2

    move v0, v1

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_11

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-nez v2, :cond_13

    :goto_e
    array-length v4, v0

    if-lt v2, v4, :cond_14

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_12
    move v2, v1

    goto :goto_d

    :cond_13
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :sswitch_7
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v0, v0

    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-nez v0, :cond_16

    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_17

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto :goto_f

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->yc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->yf(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xL()I

    move-result v2

    move v0, v1

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xK()I

    move-result v4

    if-gtz v4, :cond_18

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/be;->xZ(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v2, v2

    :goto_12
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-nez v2, :cond_1a

    :goto_13
    array-length v4, v0

    if-lt v2, v4, :cond_1b

    iput-object v0, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/be;->xT(I)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_19
    move v2, v1

    goto :goto_12

    :cond_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xX()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x28 -> :sswitch_7
        0x2a -> :sswitch_8
    .end sparse-switch
.end method

.method public uL()Lcom/google/android/gms/internal/aD;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->se()Lcom/google/android/gms/internal/ba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aD;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->so:[I

    if-nez v1, :cond_7

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    if-nez v1, :cond_8

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    if-nez v1, :cond_9

    :cond_4
    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/aD;->sr:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/aD;->ss:[Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->so:[I

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->so:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/aD;->so:[I

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sp:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/aD;->sp:[J

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/aD;->sq:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/aD;->sq:[J

    goto :goto_4
.end method
