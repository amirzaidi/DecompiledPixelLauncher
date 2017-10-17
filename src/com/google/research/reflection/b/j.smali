.class public Lcom/google/research/reflection/b/j;
.super Lcom/google/research/reflection/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public UF()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    return v0
.end method

.method public UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    .line 30
    new-instance v1, Lcom/google/research/reflection/layers/b;

    const/4 v0, 0x2

    invoke-direct {v1, v5, v0}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 31
    const-string/jumbo v0, "semantic_place"

    .line 32
    invoke-static {p2, v0}, Lcom/google/research/reflection/common/b;->Up(Lcom/google/research/reflection/a/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v1

    .line 35
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->at()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "Work"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->at()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "Home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    aput-wide v6, v0, v5

    goto :goto_0

    .line 38
    :cond_2
    iget-object v0, v1, Lcom/google/research/reflection/layers/b;->Mr:[D

    aput-wide v6, v0, v4

    goto :goto_0
.end method

.method public clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/research/reflection/b/j;

    invoke-direct {v0}, Lcom/google/research/reflection/b/j;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/research/reflection/b/j;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
