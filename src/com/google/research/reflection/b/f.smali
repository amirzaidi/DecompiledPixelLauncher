.class public Lcom/google/research/reflection/b/f;
.super Lcom/google/research/reflection/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/research/reflection/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public UF()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x18

    return v0
.end method

.method public UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 8

    .prologue
    const/16 v5, 0x1e

    const/16 v1, 0x17

    const/4 v2, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 22
    new-instance v3, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/b/f;->UF()I

    move-result v0

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 23
    invoke-static {p2}, Lcom/google/research/reflection/common/e;->Ux(Lcom/google/research/reflection/a/b;)I

    move-result v0

    .line 24
    iget-object v4, v3, Lcom/google/research/reflection/layers/b;->Mr:[D

    aput-wide v6, v4, v0

    .line 25
    invoke-static {p2}, Lcom/google/research/reflection/common/e;->Uy(Lcom/google/research/reflection/a/b;)I

    move-result v4

    .line 26
    if-lt v4, v5, :cond_0

    .line 32
    if-gt v4, v5, :cond_2

    .line 39
    :goto_0
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    if-ltz v0, :cond_1

    .line 31
    :goto_1
    iget-object v1, v3, Lcom/google/research/reflection/layers/b;->Mr:[D

    aput-wide v6, v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 29
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 34
    if-gt v0, v1, :cond_3

    .line 37
    :goto_2
    iget-object v1, v3, Lcom/google/research/reflection/layers/b;->Mr:[D

    aput-wide v6, v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 35
    goto :goto_2
.end method

.method public clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/research/reflection/b/f;

    invoke-direct {v0}, Lcom/google/research/reflection/b/f;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/research/reflection/b/f;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
