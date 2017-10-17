.class public Landroid/support/v7/widget/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Pm:I

.field Pn:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5095
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    .line 5097
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/t;->Pm:I

    return-void
.end method

.method private XU(I)Landroid/support/v7/widget/L;
    .locals 2

    .prologue
    .line 5220
    iget-object v0, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5221
    if-eqz v0, :cond_0

    .line 5225
    :goto_0
    return-object v0

    .line 5222
    :cond_0
    new-instance v0, Landroid/support/v7/widget/L;

    invoke-direct {v0}, Landroid/support/v7/widget/L;-><init>()V

    .line 5223
    iget-object v1, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method XM(IJ)V
    .locals 4

    .prologue
    .line 5171
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5172
    iget-wide v2, v0, Landroid/support/v7/widget/L;->PZ:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/t;->XX(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/L;->PZ:J

    .line 5174
    return-void
.end method

.method XN(Landroid/support/v7/widget/q;)V
    .locals 1

    .prologue
    .line 5187
    iget v0, p0, Landroid/support/v7/widget/t;->Pm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/t;->Pm:I

    .line 5188
    return-void
.end method

.method public XO(II)V
    .locals 2

    .prologue
    .line 5107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5108
    iput p2, v0, Landroid/support/v7/widget/L;->Qc:I

    .line 5109
    iget-object v0, v0, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    .line 5110
    if-nez v0, :cond_1

    .line 5115
    :goto_0
    return-void

    .line 5112
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5111
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    goto :goto_0
.end method

.method XP(IJJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5177
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v2

    iget-wide v2, v2, Landroid/support/v7/widget/L;->Qb:J

    .line 5178
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

.method XQ(IJ)V
    .locals 4

    .prologue
    .line 5165
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v0

    .line 5166
    iget-wide v2, v0, Landroid/support/v7/widget/L;->Qb:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/t;->XX(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/L;->Qb:J

    .line 5168
    return-void
.end method

.method public XR(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    .line 5145
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v0

    .line 5146
    invoke-direct {p0, v0}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    .line 5147
    iget-object v2, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    iget v0, v0, Landroid/support/v7/widget/L;->Qc:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 5153
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->resetInternal()V

    .line 5154
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5155
    return-void

    .line 5148
    :cond_0
    return-void
.end method

.method XS(IJJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/t;->XU(I)Landroid/support/v7/widget/L;

    move-result-object v2

    iget-wide v2, v2, Landroid/support/v7/widget/L;->PZ:J

    .line 5183
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

.method XT()V
    .locals 1

    .prologue
    .line 5191
    iget v0, p0, Landroid/support/v7/widget/t;->Pm:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/t;->Pm:I

    .line 5192
    return-void
.end method

.method public XV(I)Landroid/support/v7/widget/j;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5125
    iget-object v0, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5126
    if-nez v0, :cond_1

    .line 5130
    :cond_0
    return-object v2

    .line 5126
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5127
    iget-object v0, v0, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    .line 5128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    return-object v0
.end method

.method XW(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 5208
    if-nez p1, :cond_1

    .line 5211
    :goto_0
    if-eqz p3, :cond_2

    .line 5214
    :cond_0
    :goto_1
    if-nez p2, :cond_3

    .line 5217
    :goto_2
    return-void

    .line 5209
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->XT()V

    goto :goto_0

    .line 5211
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/t;->Pm:I

    if-nez v0, :cond_0

    .line 5212
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->clear()V

    goto :goto_1

    .line 5215
    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/t;->XN(Landroid/support/v7/widget/q;)V

    goto :goto_2
.end method

.method XX(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5158
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5159
    return-wide p3

    .line 5161
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
    .line 5100
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 5104
    return-void

    .line 5101
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t;->Pn:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/L;

    .line 5102
    iget-object v0, v0, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
