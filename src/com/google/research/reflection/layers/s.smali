.class public Lcom/google/research/reflection/layers/s;
.super Lcom/google/research/reflection/layers/v;
.source "SourceFile"


# instance fields
.field NT:[Lcom/google/research/reflection/layers/j;

.field NU:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/research/reflection/layers/v;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public VI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "LSTMLayer"

    return-object v0
.end method

.method public VP(ZLcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 89
    if-nez p3, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/s;->Oj:Z

    .line 94
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Oh:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p4}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Om:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->Uk()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Om:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->Uf()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    .line 103
    if-eqz v0, :cond_2

    .line 106
    :goto_2
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->Om:Lcom/google/research/reflection/common/a;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/b;

    .line 107
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v6

    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v7, v0

    new-instance v0, Lcom/google/research/reflection/layers/f;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/f;-><init>(Lcom/google/research/reflection/layers/s;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v6, v7, v0}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 121
    return-object v5

    .line 90
    :cond_0
    iput-boolean v1, p0, Lcom/google/research/reflection/layers/s;->Oj:Z

    .line 91
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Oi:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p3}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Om:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->Uh()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/b;

    move-object v4, v0

    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/s;->Og:I

    iget v2, p0, Lcom/google/research/reflection/layers/s;->Ol:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    goto :goto_2
.end method

.method VQ()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/research/reflection/layers/v;->VQ()V

    .line 72
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    aget-object v3, v1, v0

    .line 73
    invoke-virtual {v3}, Lcom/google/research/reflection/layers/j;->Vw()V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public VR(Lcom/google/research/reflection/layers/a;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 39
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->On:Lcom/google/research/reflection/layers/b;

    invoke-static {p3, p4, v0, v6}, Lcom/google/research/reflection/layers/b;->Vg(Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Z)Lcom/google/research/reflection/layers/b;

    .line 41
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Oh:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/layers/b;

    .line 42
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Oi:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Om:Lcom/google/research/reflection/common/a;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->Ug(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/b;

    .line 44
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v7

    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v8, v0

    new-instance v0, Lcom/google/research/reflection/layers/w;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/w;-><init>(Lcom/google/research/reflection/layers/s;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v7, v8, v0}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 59
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Oe:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clear()V

    move v0, v6

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Of:Lcom/google/research/reflection/layers/b;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/b;->clear()V

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    .line 67
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->Oe:Lcom/google/research/reflection/layers/b;

    iget-object v2, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/research/reflection/layers/j;->Vv()Lcom/google/research/reflection/layers/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/layers/s;->Of:Lcom/google/research/reflection/layers/b;

    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/j;->VA()Lcom/google/research/reflection/layers/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/b;->Ve(Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public Wc()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/research/reflection/layers/v;->Wc()V

    .line 80
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 83
    return-void

    .line 80
    :cond_0
    aget-object v3, v1, v0

    .line 81
    invoke-virtual {v3}, Lcom/google/research/reflection/layers/j;->VB()V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/google/research/reflection/layers/v;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/s;->clone()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/research/reflection/layers/s;->NT:[Lcom/google/research/reflection/layers/j;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 129
    return-void

    .line 126
    :cond_0
    aget-object v3, v1, v0

    .line 127
    invoke-virtual {v3}, Lcom/google/research/reflection/layers/j;->update()V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
