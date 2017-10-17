.class public Lcom/google/research/reflection/b/g;
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
.method public Ts()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x4

    return v0
.end method

.method public Tt(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    .line 31
    new-instance v4, Lcom/google/research/reflection/layers/b;

    const/4 v0, 0x4

    invoke-direct {v4, v2, v0}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 32
    const-string/jumbo v0, "headset"

    .line 33
    invoke-static {p2, v0}, Lcom/google/research/reflection/common/b;->Tc(Lcom/google/research/reflection/a/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    return-object v4

    .line 35
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/a;

    .line 36
    invoke-interface {p2}, Lcom/google/research/reflection/a/b;->F()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->D()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "headset_wired_in"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "headset_wired_out"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 41
    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "headset_bluetooth_in"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 43
    invoke-interface {v0}, Lcom/google/research/reflection/a/a;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "headset_bluetooth_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, v4, Lcom/google/research/reflection/layers/b;->Nl:[D

    const/4 v1, 0x3

    aput-wide v10, v0, v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 36
    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, v4, Lcom/google/research/reflection/layers/b;->Nl:[D

    aput-wide v10, v0, v3

    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, v4, Lcom/google/research/reflection/layers/b;->Nl:[D

    aput-wide v10, v0, v2

    goto :goto_0

    .line 42
    :cond_5
    iget-object v0, v4, Lcom/google/research/reflection/layers/b;->Nl:[D

    const/4 v1, 0x2

    aput-wide v10, v0, v1

    goto :goto_0
.end method

.method public clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/research/reflection/b/g;

    invoke-direct {v0}, Lcom/google/research/reflection/b/g;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/research/reflection/b/g;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
