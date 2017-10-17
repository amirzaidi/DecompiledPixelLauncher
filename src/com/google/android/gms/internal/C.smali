.class public final Lcom/google/android/gms/internal/C;
.super Lcom/google/android/gms/internal/aU;


# instance fields
.field public pE:Lcom/google/android/gms/internal/W;

.field public pF:[Ljava/lang/String;

.field public pG:Lcom/google/android/gms/internal/K;

.field public pH:I

.field public pI:Ljava/lang/String;

.field public pJ:[Ljava/lang/String;

.field public pK:Lcom/google/android/gms/internal/X;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aU;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/C;->sO()Lcom/google/android/gms/internal/C;

    return-void
.end method

.method public static sQ([B)Lcom/google/android/gms/internal/C;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/C;

    invoke-direct {v0}, Lcom/google/android/gms/internal/C;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aC;->uU(Lcom/google/android/gms/internal/aC;[B)Lcom/google/android/gms/internal/aC;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/C;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/aU;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/C;->pH:I

    if-ne v1, v4, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    if-nez v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    if-nez v1, :cond_b

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    if-nez v1, :cond_c

    :goto_6
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/aP;->wk(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/C;->pH:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aP;->wm(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_7
    iget-object v5, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_6

    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_7

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aP;->wh(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v2

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_9

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_a

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aP;->wh(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aP;->wK(ILcom/google/android/gms/internal/aC;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public sO()Lcom/google/android/gms/internal/C;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/C;->pH:I

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sP:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aH;->sP:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    iput-object v1, p0, Lcom/google/android/gms/internal/C;->tz:Lcom/google/android/gms/internal/aL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/C;->sH:I

    return-object p0
.end method

.method public sP(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/C;
    .locals 4

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/C;->pH:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/W;

    invoke-direct {v0}, Lcom/google/android/gms/internal/W;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    array-length v0, v0

    :goto_2
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aH;->vj(Lcom/google/android/gms/internal/aY;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    array-length v0, v0

    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_6

    :goto_5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xZ()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aY;->xF()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_8

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/X;

    invoke-direct {v0}, Lcom/google/android/gms/internal/X;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    goto :goto_6

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    if-eqz v0, :cond_9

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/aY;->xP(Lcom/google/android/gms/internal/aC;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/K;

    invoke-direct {v0}, Lcom/google/android/gms/internal/K;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x42 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sc(Lcom/google/android/gms/internal/aP;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/C;->pH:I

    if-ne v0, v3, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    if-nez v0, :cond_9

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    if-nez v0, :cond_a

    :goto_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/aU;->sc(Lcom/google/android/gms/internal/aP;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pI:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/C;->pH:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vW(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pE:Lcom/google/android/gms/internal/W;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/C;->pF:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pJ:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aP;->vT(ILjava/lang/String;)V

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pK:Lcom/google/android/gms/internal/X;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/C;->pG:Lcom/google/android/gms/internal/K;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aP;->wP(ILcom/google/android/gms/internal/aC;)V

    goto :goto_4
.end method

.method public synthetic se(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/aC;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/C;->sP(Lcom/google/android/gms/internal/aY;)Lcom/google/android/gms/internal/C;

    move-result-object v0

    return-object v0
.end method
