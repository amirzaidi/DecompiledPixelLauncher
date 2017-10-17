.class public final Lcom/google/android/gms/internal/ax;
.super Lcom/google/android/gms/internal/aU;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public su:[I

.field public sv:[J

.field public sw:[J

.field public sx:[Ljava/lang/String;

.field public sy:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ax;->uI()Lcom/google/android/gms/internal/ax;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ax;->uK()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->computeSerializedSize()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    if-nez v2, :cond_b

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    if-nez v2, :cond_d

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    if-nez v2, :cond_f

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_5
    iget-object v5, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_6

    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_7

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aP;->wh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_6

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_7
    iget-object v5, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_9

    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-nez v5, :cond_a

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aP;->wh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v1

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v4, v4

    if-lt v2, v4, :cond_c

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->su:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/aP;->wg(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v4, v4

    if-lt v2, v4, :cond_e

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_3

    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    aget-wide v4, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aP;->wC(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v3, v3

    if-lt v1, v3, :cond_10

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_10
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aP;->wC(J)I

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

    instance-of v2, p1, Lcom/google/android/gms/internal/ax;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->wW([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->wW([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->xd([I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->wY([J[J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/aR;->wY([J[J)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v2, :cond_9

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    iget-object v1, p1, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_a
    iget-object v2, p1, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

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

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->xe([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->xe([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->xa([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->wZ([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/aR;->wZ([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/aL;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aL;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    if-nez v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    if-nez v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    if-nez v0, :cond_b

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aU;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aP;->vW(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    aget-wide v2, v2, v0

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    aget-wide v2, v0, v1

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/aP;->vX(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ax;->uJ(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/ax;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sg()Lcom/google/android/gms/internal/aU;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ax;

    return-object v0
.end method

.method public synthetic si()Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ax;

    return-object v0
.end method

.method public uI()Lcom/google/android/gms/internal/ax;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aH;->sP:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sP:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sU:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    sget-object v0, Lcom/google/android/gms/internal/aH;->sV:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    sget-object v0, Lcom/google/android/gms/internal/aH;->sV:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ax;->sH:I

    return-object p0
.end method

.method public uJ(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/ax;
    .locals 6

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/aU;->xs(Lcom/google/android/gms/internal/aY;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v0, v0

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v0, v0

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v0, v0

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-nez v0, :cond_8

    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->yb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->ye(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v2

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v4

    if-gtz v4, :cond_a

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v2, v2

    :goto_8
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-nez v2, :cond_c

    :goto_9
    array-length v4, v0

    if-lt v2, v4, :cond_d

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xS(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    move v2, v1

    goto :goto_8

    :cond_c
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :sswitch_5
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v0, v0

    :goto_a
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-nez v0, :cond_f

    :goto_b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto :goto_a

    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->yb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->ye(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v2

    move v0, v1

    :goto_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v4

    if-gtz v4, :cond_11

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-nez v2, :cond_13

    :goto_e
    array-length v4, v0

    if-lt v2, v4, :cond_14

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xS(I)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_12
    move v2, v1

    goto :goto_d

    :cond_13
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :sswitch_7
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v0, v0

    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [J

    if-nez v0, :cond_16

    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_17

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v4

    aput-wide v4, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto :goto_f

    :cond_16
    iget-object v3, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10

    :cond_17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    move-result-wide v4

    aput-wide v4, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->yb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->ye(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xK()I

    move-result v2

    move v0, v1

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xJ()I

    move-result v4

    if-gtz v4, :cond_18

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/aY;->xY(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v2, v2

    :goto_12
    add-int/2addr v0, v2

    new-array v0, v0, [J

    if-nez v2, :cond_1a

    :goto_13
    array-length v4, v0

    if-lt v2, v4, :cond_1b

    iput-object v0, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/aY;->xS(I)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_19
    move v2, v1

    goto :goto_12

    :cond_1a
    iget-object v4, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xW()J

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

.method public uK()Lcom/google/android/gms/internal/ax;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->sg()Lcom/google/android/gms/internal/aU;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ax;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->su:[I

    if-nez v1, :cond_7

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    if-nez v1, :cond_8

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sw:[J

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ax;->sx:[Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ax;->sy:[Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->su:[I

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->su:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/ax;->su:[I

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    array-length v1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sv:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/ax;->sv:[J

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ax;->sw:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/google/android/gms/internal/ax;->sw:[J

    goto :goto_4
.end method
