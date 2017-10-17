.class public Lcom/google/research/reflection/b/i;
.super Lcom/google/research/reflection/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public Ts()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method public Tt(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    new-instance v1, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/b/i;->Ts()I

    move-result v0

    invoke-direct {v1, v7, v0}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 26
    const-string/jumbo v0, "lat_long"

    .line 27
    invoke-static {p2, v0}, Lcom/google/research/reflection/common/b;->Tc(Lcom/google/research/reflection/a/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 36
    :goto_0
    return-object v1

    .line 29
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 30
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 31
    invoke-static {v4, v5, v2, v3}, Lcom/google/research/reflection/common/d;->Th(DD)[F

    move-result-object v0

    .line 32
    iget-object v2, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget v3, v0, v6

    float-to-double v4, v3

    aput-wide v4, v2, v6

    .line 33
    iget-object v2, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget v3, v0, v7

    float-to-double v4, v3

    aput-wide v4, v2, v7

    .line 34
    iget-object v2, v1, Lcom/google/research/reflection/layers/b;->Nl:[D

    aget v0, v0, v8

    float-to-double v4, v0

    aput-wide v4, v2, v8

    goto :goto_0
.end method

.method public clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/research/reflection/b/i;

    invoke-direct {v0}, Lcom/google/research/reflection/b/i;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/research/reflection/b/i;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
