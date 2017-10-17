.class public Lcom/google/research/reflection/b/e;
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
    .line 30
    const/4 v0, 0x7

    return v0
.end method

.method public UG(Lcom/google/research/reflection/common/a;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/layers/b;
    .locals 6

    .prologue
    .line 22
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-virtual {p0}, Lcom/google/research/reflection/b/e;->UF()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    .line 23
    invoke-static {p2}, Lcom/google/research/reflection/common/e;->UB(Lcom/google/research/reflection/a/b;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 24
    iget-object v2, v0, Lcom/google/research/reflection/layers/b;->Mr:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v2, v1

    .line 25
    return-object v0
.end method

.method public clone()Lcom/google/research/reflection/b/b;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/research/reflection/b/e;

    invoke-direct {v0}, Lcom/google/research/reflection/b/e;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/research/reflection/b/e;->clone()Lcom/google/research/reflection/b/b;

    move-result-object v0

    return-object v0
.end method
