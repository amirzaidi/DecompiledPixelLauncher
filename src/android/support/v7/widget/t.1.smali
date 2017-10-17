.class public Landroid/support/v7/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private QT:I

.field QU:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    .line 5135
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/t;->QT:I

    return-void
.end method

.method private YU(I)Landroid/support/v7/widget/L;
    .locals 2

    .prologue
    .line 5258
    iget-object v0, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5259
    if-eqz v0, :cond_0

    .line 5263
    :goto_0
    return-object v0

    .line 5260
    :cond_0
    new-instance v0, Landroid/support/v7/widget/L;

    invoke-direct {v0}, Landroid/support/v7/widget/L;-><init>()V

    .line 5261
    iget-object v1, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method YM(IJ)V
    .locals 4

    .prologue
    .line 5209
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5210
    iget-wide v2, v0, Landroid/support/v7/widget/L;->RG:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/t;->YX(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/L;->RG:J

    .line 5212
    return-void
.end method

.method YN(Landroid/support/v7/widget/q;)V
    .locals 1

    .prologue
    .line 5225
    iget v0, p0, Landroid/support/v7/widget/t;->QT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/t;->QT:I

    .line 5226
    return-void
.end method

.method public YO(II)V
    .locals 2

    .prologue
    .line 5145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5146
    iput p2, v0, Landroid/support/v7/widget/L;->RJ:I

    .line 5147
    iget-object v0, v0, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    .line 5148
    if-nez v0, :cond_1

    .line 5153
    :goto_0
    return-void

    .line 5150
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5149
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    goto :goto_0
.end method

.method YP(IJJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5215
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v2

    iget-wide v2, v2, Landroid/support/v7/widget/L;->RI:J

    .line 5216
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v2, p2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method YQ(IJ)V
    .locals 4

    .prologue
    .line 5203
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5204
    iget-wide v2, v0, Landroid/support/v7/widget/L;->RI:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/t;->YX(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/L;->RI:J

    .line 5206
    return-void
.end method

.method public YR(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    .line 5183
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v0

    .line 5184
    invoke-direct {p0, v0}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    .line 5185
    iget-object v2, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    iget v0, v0, Landroid/support/v7/widget/L;->RJ:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 5191
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->resetInternal()V

    .line 5192
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5193
    return-void

    .line 5186
    :cond_0
    return-void
.end method

.method YS(IJJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5220
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->YU(I)Landroid/support/v7/widget/L;

    move-result-object v2

    iget-wide v2, v2, Landroid/support/v7/widget/L;->RG:J

    .line 5221
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v2, p2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method YT()V
    .locals 1

    .prologue
    .line 5229
    iget v0, p0, Landroid/support/v7/widget/t;->QT:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/t;->QT:I

    .line 5230
    return-void
.end method

.method public YV(I)Landroid/support/v7/widget/j;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5163
    iget-object v0, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5164
    if-nez v0, :cond_1

    .line 5168
    :cond_0
    return-object v2

    .line 5164
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5165
    iget-object v0, v0, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    .line 5166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    return-object v0
.end method

.method YW(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 5246
    if-nez p1, :cond_1

    .line 5249
    :goto_0
    if-eqz p3, :cond_2

    .line 5252
    :cond_0
    :goto_1
    if-nez p2, :cond_3

    .line 5255
    :goto_2
    return-void

    .line 5247
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->YT()V

    goto :goto_0

    .line 5249
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/t;->QT:I

    if-nez v0, :cond_0

    .line 5250
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->clear()V

    goto :goto_1

    .line 5253
    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/t;->YN(Landroid/support/v7/widget/q;)V

    goto :goto_2
.end method

.method YX(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5196
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5197
    return-wide p3

    .line 5199
    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 5138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 5142
    return-void

    .line 5139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->QU:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5140
    iget-object v0, v0, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
