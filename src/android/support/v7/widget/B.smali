.class Landroid/support/v7/widget/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/a/t;

.field final mOldChangedHolders:Landroid/support/v4/a/m;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    .line 47
    new-instance v0, Landroid/support/v4/a/m;

    invoke-direct {v0}, Landroid/support/v4/a/m;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    .line 290
    return-void
.end method

.method private ZS(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->aie(Ljava/lang/Object;)I

    move-result v2

    .line 102
    if-ltz v2, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/t;->aia(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 106
    if-nez v0, :cond_2

    .line 123
    :cond_0
    return-object v3

    .line 103
    :cond_1
    return-object v3

    .line 106
    :cond_2
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 107
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 109
    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    .line 111
    const/16 v1, 0x8

    if-eq p2, v1, :cond_4

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must provide flag PRE or POST"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    .line 117
    :goto_0
    iget v3, v0, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_5

    .line 121
    :goto_1
    return-object v1

    .line 112
    :cond_4
    iget-object v1, v0, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    goto :goto_0

    .line 118
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v3, v2}, Landroid/support/v4/a/t;->ahU(I)Ljava/lang/Object;

    .line 119
    invoke-static {v0}, Landroid/support/v7/widget/aq;->acA(Landroid/support/v7/widget/aq;)V

    goto :goto_1
.end method


# virtual methods
.method ZH(J)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/a/m;->aiV(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    return-object v0
.end method

.method ZI(Landroid/support/v7/widget/w;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    .line 253
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/t;->aib(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 221
    iget-object v1, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v1, v2}, Landroid/support/v4/a/t;->ahU(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aq;

    .line 222
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 225
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 234
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-eq v3, v4, :cond_4

    .line 237
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_5

    .line 240
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_6

    .line 243
    iget v3, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_7

    .line 246
    iget v0, v1, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v0, v0, 0x2

    .line 251
    :goto_1
    invoke-static {v1}, Landroid/support/v7/widget/aq;->acA(Landroid/support/v7/widget/aq;)V

    .line 219
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p1, v0}, Landroid/support/v7/widget/w;->Zk(Landroid/support/v7/widget/j;)V

    goto :goto_1

    .line 227
    :cond_2
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    if-eqz v3, :cond_3

    .line 232
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    iget-object v4, v1, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/w;->Zh(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-interface {p1, v0}, Landroid/support/v7/widget/w;->Zk(Landroid/support/v7/widget/j;)V

    goto :goto_1

    .line 236
    :cond_4
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    iget-object v4, v1, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/w;->Zi(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    goto :goto_1

    .line 239
    :cond_5
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    iget-object v4, v1, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/w;->Zj(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    goto :goto_1

    .line 242
    :cond_6
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    invoke-interface {p1, v0, v3, v5}, Landroid/support/v7/widget/w;->Zh(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    goto :goto_1

    .line 245
    :cond_7
    iget-object v3, v1, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    iget-object v4, v1, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    invoke-interface {p1, v0, v3, v4}, Landroid/support/v7/widget/w;->Zi(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V

    goto :goto_1
.end method

.method public ZJ(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/B;->ZR(Landroid/support/v7/widget/j;)V

    .line 278
    return-void
.end method

.method ZK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 65
    if-eqz v0, :cond_0

    .line 69
    :goto_0
    iput-object p2, v0, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    .line 70
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 71
    return-void

    .line 66
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/aq;->acB()Landroid/support/v7/widget/aq;

    move-result-object v0

    .line 67
    iget-object v1, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method ZL(Landroid/support/v7/widget/j;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 75
    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, v0, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method ZM(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 183
    if-eqz v0, :cond_0

    .line 187
    :goto_0
    iput-object p2, v0, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    .line 188
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 189
    return-void

    .line 184
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/aq;->acB()Landroid/support/v7/widget/aq;

    move-result-object v0

    .line 185
    iget-object v1, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method ZN(JLandroid/support/v7/widget/j;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/a/m;->aiR(JLjava/lang/Object;)V

    .line 133
    return-void
.end method

.method ZO(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/B;->ZS(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method ZP(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 199
    if-eqz v0, :cond_0

    .line 203
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 204
    return-void

    .line 200
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/aq;->acB()Landroid/support/v7/widget/aq;

    move-result-object v0

    .line 201
    iget-object v1, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method ZQ(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 146
    if-eqz v0, :cond_0

    .line 150
    :goto_0
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 151
    iput-object p2, v0, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    .line 152
    return-void

    .line 147
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/aq;->acB()Landroid/support/v7/widget/aq;

    move-result-object v0

    .line 148
    iget-object v1, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method ZR(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 212
    if-eqz v0, :cond_0

    .line 215
    iget v1, v0, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/support/v7/widget/aq;->TV:I

    .line 216
    return-void

    .line 213
    :cond_0
    return-void
.end method

.method ZT()V
    .locals 0

    .prologue
    .line 273
    invoke-static {}, Landroid/support/v7/widget/aq;->acC()V

    .line 274
    return-void
.end method

.method ZU(Landroid/support/v7/widget/j;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 162
    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, v0, Landroid/support/v7/widget/aq;->TV:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method ZV(Landroid/support/v7/widget/j;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v0}, Landroid/support/v4/a/m;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 266
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 267
    if-nez v0, :cond_2

    .line 270
    :goto_1
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/m;->aiU(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/m;->aiS(I)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/aq;->acA(Landroid/support/v7/widget/aq;)V

    goto :goto_1
.end method

.method ZW(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/B;->ZS(Landroid/support/v7/widget/j;I)Landroid/support/v7/widget/E;

    move-result-object v0

    return-object v0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/B;->mLayoutHolderMap:Landroid/support/v4/a/t;

    invoke-virtual {v0}, Landroid/support/v4/a/t;->clear()V

    .line 55
    iget-object v0, p0, Landroid/support/v7/widget/B;->mOldChangedHolders:Landroid/support/v4/a/m;

    invoke-virtual {v0}, Landroid/support/v4/a/m;->clear()V

    .line 56
    return-void
.end method
