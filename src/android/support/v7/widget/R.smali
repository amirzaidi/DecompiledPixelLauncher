.class Landroid/support/v7/widget/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field RM:I

.field RN:Z

.field RO:Ljava/util/List;

.field RP:Z

.field RQ:I

.field RR:I

.field RS:I

.field RT:I

.field RU:I

.field RV:Z

.field RW:I

.field mOffset:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/R;->RN:Z

    .line 2186
    iput v1, p0, Landroid/support/v7/widget/R;->RT:I

    .line 2193
    iput-boolean v1, p0, Landroid/support/v7/widget/R;->RP:Z

    .line 2205
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    return-void
.end method

.method private aaV()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2242
    iget-object v1, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 2243
    :goto_0
    if-lt v1, v2, :cond_0

    .line 2254
    const/4 v0, 0x0

    return-object v0

    .line 2244
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 2245
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2246
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2249
    iget v4, p0, Landroid/support/v7/widget/R;->RR:I

    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v0

    if-eq v4, v0, :cond_2

    .line 2243
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2250
    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/R;->aaX(Landroid/view/View;)V

    .line 2251
    return-object v3
.end method


# virtual methods
.method public aaS()V
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/R;->aaX(Landroid/view/View;)V

    .line 2259
    return-void
.end method

.method aaT(Landroid/support/v7/widget/s;)Landroid/view/View;
    .locals 3

    .prologue
    .line 2226
    iget-object v0, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2229
    iget v0, p0, Landroid/support/v7/widget/R;->RR:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/s;->Yp(I)Landroid/view/View;

    move-result-object v0

    .line 2230
    iget v1, p0, Landroid/support/v7/widget/R;->RR:I

    iget v2, p0, Landroid/support/v7/widget/R;->RW:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/R;->RR:I

    .line 2231
    return-object v0

    .line 2227
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/R;->aaV()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public aaU(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2272
    iget-object v1, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 2273
    const/4 v2, 0x0

    .line 2274
    const v1, 0x7fffffff

    move v4, v0

    .line 2278
    :goto_0
    if-lt v4, v5, :cond_0

    .line 2297
    :goto_1
    return-object v2

    .line 2279
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/R;->RO:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 2280
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2281
    if-ne v3, p1, :cond_1

    move v0, v1

    move-object v1, v2

    .line 2278
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 2281
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yf()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2284
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/R;->RR:I

    sub-int/2addr v0, v6

    iget v6, p0, Landroid/support/v7/widget/R;->RW:I

    mul-int/2addr v0, v6

    .line 2286
    if-ltz v0, :cond_3

    .line 2289
    if-lt v0, v1, :cond_4

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_2
    move v0, v1

    move-object v1, v2

    .line 2282
    goto :goto_2

    :cond_3
    move v0, v1

    move-object v1, v2

    .line 2287
    goto :goto_2

    .line 2292
    :cond_4
    if-eqz v0, :cond_5

    move-object v1, v3

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 2293
    goto :goto_1
.end method

.method aaW(Landroid/support/v7/widget/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2216
    iget v1, p0, Landroid/support/v7/widget/R;->RR:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/R;->RR:I

    invoke-virtual {p1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aaX(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2262
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/R;->aaU(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2263
    if-eqz v0, :cond_0

    .line 2266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 2267
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yd()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/R;->RR:I

    .line 2269
    :goto_0
    return-void

    .line 2264
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/R;->RR:I

    goto :goto_0
.end method
