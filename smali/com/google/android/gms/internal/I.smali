.class public final Lcom/google/android/gms/internal/I;
.super Lcom/google/android/gms/internal/ba;


# instance fields
.field public pA:I

.field public pB:Ljava/lang/String;

.field public pC:[Ljava/lang/String;

.field public pD:Lcom/google/android/gms/internal/ad;

.field public px:Lcom/google/android/gms/internal/ac;

.field public py:[Ljava/lang/String;

.field public pz:Lcom/google/android/gms/internal/Q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ba;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/I;->sP()Lcom/google/android/gms/internal/I;

    return-void
.end method

.method public static sR([B)Lcom/google/android/gms/internal/I;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/I;

    invoke-direct {v0}, Lcom/google/android/gms/internal/I;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/aI;->uV(Lcom/google/android/gms/internal/aI;[B)Lcom/google/android/gms/internal/aI;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/I;

    return-object v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ba;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/I;->pA:I

    if-ne v1, v4, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    if-nez v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_0
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    if-nez v1, :cond_b

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    if-nez v1, :cond_c

    :goto_6
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/aV;->wl(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/I;->pA:I

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wn(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_7
    iget-object v5, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_6

    add-int/2addr v0, v3

    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_7

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    move v1, v2

    move v3, v2

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_9

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_a

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/aV;->wi(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_a

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/aV;->wL(ILcom/google/android/gms/internal/aI;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public sP()Lcom/google/android/gms/internal/I;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/I;->pA:I

    iput-object v1, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/aN;->sJ:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    iput-object v1, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    iput-object v1, p0, Lcom/google/android/gms/internal/I;->tt:Lcom/google/android/gms/internal/aR;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/I;->sB:I

    return-object p0
.end method

.method public sQ(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/I;
    .locals 4

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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xF()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/I;->pA:I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ac;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    array-length v0, v0

    :goto_2
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/aN;->vk(Lcom/google/android/gms/internal/be;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    array-length v0, v0

    :goto_4
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-nez v0, :cond_6

    :goto_5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->ya()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/be;->xG()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    if-eqz v0, :cond_8

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    goto :goto_6

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    if-eqz v0, :cond_9

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/be;->xQ(Lcom/google/android/gms/internal/aI;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/Q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

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

.method public sa(Lcom/google/android/gms/internal/aV;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/I;->pA:I

    if-ne v0, v3, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    if-nez v0, :cond_9

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    if-nez v0, :cond_a

    :goto_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ba;->sa(Lcom/google/android/gms/internal/aV;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pB:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/I;->pA:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vX(II)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->px:Lcom/google/android/gms/internal/ac;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/I;->py:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_6

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pC:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_8

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/aV;->vU(ILjava/lang/String;)V

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pD:Lcom/google/android/gms/internal/ad;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/I;->pz:Lcom/google/android/gms/internal/Q;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/aV;->wQ(ILcom/google/android/gms/internal/aI;)V

    goto :goto_4
.end method

.method public synthetic sc(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/aI;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/I;->sQ(Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/I;

    move-result-object v0

    return-object v0
.end method
