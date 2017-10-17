.class public Lcom/google/research/reflection/layers/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Uo(Lcom/google/research/reflection/layers/b;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/b;->TW(Z)I

    move-result v1

    .line 115
    :goto_0
    if-lt v0, v1, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/google/research/reflection/layers/k;->Us(Lcom/google/research/reflection/layers/b;IZ)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static Up([D)V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 13
    return-void
.end method

.method static Uq(D)D
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    cmpl-double v0, p0, v2

    if-lez v0, :cond_0

    .line 72
    return-wide p0

    .line 74
    :cond_0
    return-wide v2
.end method

.method static Ur(Lcom/google/research/reflection/layers/b;ILcom/google/research/reflection/layers/b;)V
    .locals 10

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/research/reflection/layers/b;->TU(Z)I

    move-result v6

    .line 18
    const-wide v0, -0x10000000000001L

    .line 19
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/google/research/reflection/layers/b;->TS(ZII)I

    move-result v2

    .line 20
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1, v6}, Lcom/google/research/reflection/layers/b;->TS(ZII)I

    move-result v7

    move v3, v2

    .line 21
    :goto_0
    if-lt v3, v7, :cond_0

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    :goto_1
    if-lt v2, v7, :cond_2

    .line 31
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_3

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "softmax sum = 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iget-object v4, p0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v4, v4, v3

    cmpl-double v4, v4, v0

    if-lez v4, :cond_1

    .line 23
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v0, v0, v3

    .line 21
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_2
    iget-object v3, p2, Lcom/google/research/reflection/layers/b;->Nl:[D

    iget-object v8, p0, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v8, v8, v2

    sub-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    aput-wide v8, v3, v2

    .line 29
    iget-object v3, p2, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v8, v3, v2

    add-double/2addr v4, v8

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v6, :cond_4

    .line 37
    return-void

    .line 35
    :cond_4
    iget-object v1, p2, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget-wide v2, v1, v0

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static Us(Lcom/google/research/reflection/layers/b;IZ)V
    .locals 10

    .prologue
    const-wide v8, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/layers/b;->TU(Z)I

    move-result v6

    .line 101
    if-nez p2, :cond_1

    .line 106
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    move v3, v1

    .line 107
    :goto_0
    if-lt v3, v6, :cond_2

    .line 111
    :cond_0
    return-void

    :cond_1
    move v3, v1

    .line 102
    :goto_1
    if-ge v3, v6, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v7}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v4

    mul-double/2addr v4, v8

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/reflection/layers/b;->TQ(ZIID)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static Ut(D)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 55
    neg-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    add-double/2addr v0, v4

    div-double v0, v4, v0

    return-wide v0

    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
