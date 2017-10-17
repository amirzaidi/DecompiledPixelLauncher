.class Landroid/support/v7/widget/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Qf:I

.field Qg:Z

.field Qh:Ljava/util/List;

.field Qi:Z

.field Qj:I

.field Qk:I

.field Ql:I

.field Qm:I

.field Qn:I

.field Qo:Z

.field Qp:I

.field mOffset:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/R;->Qg:Z

    .line 2168
    iput v1, p0, Landroid/support/v7/widget/R;->Qm:I

    .line 2175
    iput-boolean v1, p0, Landroid/support/v7/widget/R;->Qi:Z

    .line 2187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    return-void
.end method

.method private ZT()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2224
    iget-object v1, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 2225
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2236
    const/4 v0, 0x0

    return-object v0

    .line 2226
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 2227
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2228
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2231
    iget v4, p0, Landroid/support/v7/widget/R;->Qk:I

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v0

    if-eq v4, v0, :cond_2

    .line 2225
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2232
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/R;->ZV(Landroid/view/View;)V

    .line 2233
    return-object v3
.end method


# virtual methods
.method public ZQ()V
    .locals 1

    .prologue
    .line 2240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/R;->ZV(Landroid/view/View;)V

    .line 2241
    return-void
.end method

.method ZR(Landroid/support/v7/widget/s;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2211
    iget v0, p0, Landroid/support/v7/widget/R;->Qk:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->Xp(I)Landroid/view/View;

    move-result-object v0

    .line 2212
    iget v1, p0, Landroid/support/v7/widget/R;->Qk:I

    iget v2, p0, Landroid/support/v7/widget/R;->Qp:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/R;->Qk:I

    .line 2213
    return-object v0

    .line 2209
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/R;->ZT()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ZS(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2254
    iget-object v1, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 2255
    const/4 v2, 0x0

    .line 2256
    const v1, 0x7fffffff

    move v4, v0

    .line 2260
    :goto_0
    if-lt v4, v5, :cond_0

    .line 2279
    :goto_1
    return-object v2

    .line 2261
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/R;->Qh:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 2262
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2263
    if-ne v3, p1, :cond_1

    move v0, v1

    move-object v1, v2

    .line 2260
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 2263
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xf()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2266
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/R;->Qk:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/R;->Qp:I

    mul-int/2addr v0, v6

    .line 2268
    if-ltz v0, :cond_3

    .line 2271
    if-lt v0, v1, :cond_4

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    move v0, v1

    move-object v1, v2

    .line 2264
    goto :goto_2

    :cond_3
    move v0, v1

    move-object v1, v2

    .line 2269
    goto :goto_2

    .line 2274
    :cond_4
    if-eqz v0, :cond_5

    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 2275
    goto :goto_1
.end method

.method ZU(Landroid/support/v7/widget/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2198
    iget v1, p0, Landroid/support/v7/widget/R;->Qk:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/R;->Qk:I

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ZV(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2244
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/R;->ZS(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2245
    if-eqz v0, :cond_0

    .line 2248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2249
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xd()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/R;->Qk:I

    .line 2251
    :goto_0
    return-void

    .line 2246
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/R;->Qk:I

    goto :goto_0
.end method
