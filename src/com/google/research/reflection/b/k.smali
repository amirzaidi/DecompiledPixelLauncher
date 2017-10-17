.class public Lcom/google/research/reflection/b/k;
.super Lcom/google/research/reflection/b/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/research/reflection/b/d;-><init>()V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/research/reflection/b/k;->Nc:I

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/research/reflection/b/d;-><init>(I)V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/research/reflection/b/k;->Nc:I

    .line 31
    return-void
.end method


# virtual methods
.method protected TA(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;JJI)Ljava/util/ArrayList;
    .locals 13

    .prologue
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 65
    const-string/jumbo v2, "app_usage"

    .line 66
    invoke-static {p2, v2}, Lcom/google/research/reflection/common/b;->Tc(Lcom/google/research/reflection/a/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/google/research/reflection/b/h;

    invoke-direct {v3, p0}, Lcom/google/research/reflection/b/h;-><init>(Lcom/google/research/reflection/b/k;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 78
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-object v4

    .line 78
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/a/a;

    .line 79
    invoke-interface {p2}, Lcom/google/research/reflection/a/b;->F()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v2}, Lcom/google/research/reflection/a/a;->D()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 80
    cmp-long v3, v8, p3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_0

    .line 81
    invoke-interface {v2}, Lcom/google/research/reflection/a/a;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/research/reflection/a/b;->F()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v2, v8, v9}, Lcom/google/research/reflection/b/k;->TB(Ljava/lang/String;J)I

    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/common/c;

    .line 83
    if-eqz v2, :cond_4

    .line 90
    :goto_2
    iget v3, v2, Lcom/google/research/reflection/common/c;->MW:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v3, v7

    iput v3, v2, Lcom/google/research/reflection/common/c;->MW:F

    goto :goto_0

    .line 80
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    move/from16 v0, p7

    if-ge v2, v0, :cond_1

    .line 87
    new-instance v2, Lcom/google/research/reflection/common/c;

    invoke-direct {v2, v3}, Lcom/google/research/reflection/common/c;-><init>(I)V

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/research/reflection/b/k;->clone()Lcom/google/research/reflection/b/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/b/d;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/research/reflection/b/k;->clone()Lcom/google/research/reflection/b/k;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/research/reflection/b/k;
    .locals 5

    .prologue
    .line 35
    new-instance v2, Lcom/google/research/reflection/b/k;

    iget v0, p0, Lcom/google/research/reflection/b/k;->Ne:I

    invoke-direct {v2, v0}, Lcom/google/research/reflection/b/k;-><init>(I)V

    .line 36
    iget-object v0, p0, Lcom/google/research/reflection/b/k;->Nf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/research/reflection/b/k;->Nd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/google/research/reflection/b/k;->Nb:[Z

    iget-object v1, p0, Lcom/google/research/reflection/b/k;->Nb:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, v2, Lcom/google/research/reflection/b/k;->Nb:[Z

    .line 43
    iget-object v0, p0, Lcom/google/research/reflection/b/k;->MX:Lcom/google/research/reflection/b/a;

    invoke-virtual {v2, v0}, Lcom/google/research/reflection/b/k;->Tq(Lcom/google/research/reflection/b/a;)V

    .line 44
    return-object v2

    .line 36
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    iget-object v4, v2, Lcom/google/research/reflection/b/k;->Nf:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    iget-object v4, v2, Lcom/google/research/reflection/b/k;->Nd:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/research/reflection/b/k;->clone()Lcom/google/research/reflection/b/k;

    move-result-object v0

    return-object v0
.end method
