.class Landroid/support/v7/widget/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final Rg:Ljava/util/List;

.field final Rh:Landroid/support/v7/widget/aL;

.field final Ri:Landroid/support/v7/widget/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aL;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    .line 50
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0}, Landroid/support/v7/widget/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    .line 52
    return-void
.end method

.method private ZC(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adn(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method private ZF(I)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 114
    if-ltz p1, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->getChildCount()I

    move-result v1

    move v0, p1

    .line 119
    :goto_0
    if-lt v0, v1, :cond_1

    .line 131
    return v3

    .line 115
    :cond_0
    return v3

    .line 120
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ah;->acq(I)I

    move-result v2

    .line 121
    sub-int v2, v0, v2

    sub-int v2, p1, v2

    .line 122
    if-eqz v2, :cond_3

    .line 128
    add-int/2addr v0, v2

    goto :goto_0

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    return v0
.end method

.method private Zz(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adj(Landroid/view/View;)V

    .line 62
    return-void
.end method


# virtual methods
.method ZA(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    .prologue
    .line 230
    if-ltz p2, :cond_0

    .line 233
    invoke-direct {p0, p2}, Landroid/support/v7/widget/A;->ZF(I)I

    move-result v0

    .line 235
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0, p4}, Landroid/support/v7/widget/ah;->aco(IZ)V

    .line 236
    if-nez p4, :cond_1

    .line 239
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, p1, v0, p3}, Landroid/support/v7/widget/aL;->adm(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->getChildCount()I

    move-result v0

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->Zz(Landroid/view/View;)V

    goto :goto_1
.end method

.method ZB(I)V
    .locals 2

    .prologue
    .line 282
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZF(I)I

    move-result v0

    .line 283
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acn(I)Z

    .line 284
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->adk(I)V

    .line 288
    return-void
.end method

.method ZD()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->reset()V

    .line 189
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->removeAllViews()V

    .line 197
    return-void

    .line 190
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/aL;->adn(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 189
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method ZE(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adl(Landroid/view/View;)I

    move-result v0

    .line 329
    if-ltz v0, :cond_0

    .line 335
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acr(I)V

    .line 336
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->Zz(Landroid/view/View;)V

    .line 340
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ZG(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adl(Landroid/view/View;)I

    move-result v0

    .line 351
    if-ltz v0, :cond_0

    .line 354
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acm(I)V

    .line 358
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZC(Landroid/view/View;)Z

    .line 359
    return-void

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trying to unhide a view that was not hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method Zr(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method Zs(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method Zt(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adl(Landroid/view/View;)I

    move-result v0

    .line 298
    if-eq v0, v2, :cond_0

    .line 301
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acq(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 299
    :cond_0
    return v2

    .line 305
    :cond_1
    return v2
.end method

.method Zu(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/A;->Zx(Landroid/view/View;IZ)V

    .line 86
    return-void
.end method

.method Zv()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->getChildCount()I

    move-result v0

    return v0
.end method

.method Zw(I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 207
    :goto_0
    if-lt v1, v2, :cond_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 209
    iget-object v3, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/aL;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 207
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 212
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    return-object v0
.end method

.method Zx(Landroid/view/View;IZ)V
    .locals 2

    .prologue
    .line 98
    if-ltz p2, :cond_0

    .line 101
    invoke-direct {p0, p2}, Landroid/support/v7/widget/A;->ZF(I)I

    move-result v0

    .line 103
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0, p3}, Landroid/support/v7/widget/ah;->aco(IZ)V

    .line 104
    if-nez p3, :cond_1

    .line 107
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/aL;->addView(Landroid/view/View;I)V

    .line 111
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->getChildCount()I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->Zz(Landroid/view/View;)V

    goto :goto_1
.end method

.method Zy(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adl(Landroid/view/View;)I

    move-result v0

    .line 374
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    return v2

    .line 375
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZC(Landroid/view/View;)Z

    move-result v0

    .line 378
    return v3

    .line 381
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acn(I)Z

    .line 382
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZC(Landroid/view/View;)Z

    move-result v1

    .line 386
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->removeViewAt(I)V

    .line 387
    return v3
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZF(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getChildCount()I
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0}, Landroid/support/v7/widget/aL;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method removeView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/aL;->adl(Landroid/view/View;)I

    move-result v0

    .line 141
    if-ltz v0, :cond_0

    .line 144
    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ah;->acn(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->removeViewAt(I)V

    .line 151
    return-void

    .line 142
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZC(Landroid/view/View;)Z

    goto :goto_0
.end method

.method removeViewAt(I)V
    .locals 3

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/support/v7/widget/A;->ZF(I)I

    move-result v0

    .line 161
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ah;->acn(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/A;->Rh:Landroid/support/v7/widget/aL;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/aL;->removeViewAt(I)V

    .line 172
    return-void

    .line 163
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/A;->ZC(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/A;->Ri:Landroid/support/v7/widget/ah;

    invoke-virtual {v1}, Landroid/support/v7/widget/ah;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/A;->Rg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
