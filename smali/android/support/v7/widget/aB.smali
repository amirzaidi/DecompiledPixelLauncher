.class public abstract Landroid/support/v7/widget/aB;
.super Landroid/support/v7/widget/b;
.source "SourceFile"


# instance fields
.field SE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/widget/b;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/aB;->SE:Z

    return-void
.end method


# virtual methods
.method public WF(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
    .locals 7

    .prologue
    .line 153
    iget v3, p3, Landroid/support/v7/widget/E;->PQ:I

    .line 154
    iget v4, p3, Landroid/support/v7/widget/E;->PR:I

    .line 156
    invoke-virtual {p2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget v5, p4, Landroid/support/v7/widget/E;->PQ:I

    .line 161
    iget v6, p4, Landroid/support/v7/widget/E;->PR:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 163
    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/aB;->aaI(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;IIII)Z

    move-result v0

    return v0

    .line 157
    :cond_0
    iget v5, p3, Landroid/support/v7/widget/E;->PQ:I

    .line 158
    iget v6, p3, Landroid/support/v7/widget/E;->PR:I

    goto :goto_0
.end method

.method public Wt(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
    .locals 6

    .prologue
    .line 135
    iget v0, p2, Landroid/support/v7/widget/E;->PQ:I

    iget v1, p3, Landroid/support/v7/widget/E;->PQ:I

    if-eq v0, v1, :cond_1

    .line 140
    :cond_0
    iget v2, p2, Landroid/support/v7/widget/E;->PQ:I

    iget v3, p2, Landroid/support/v7/widget/E;->PR:I

    iget v4, p3, Landroid/support/v7/widget/E;->PQ:I

    iget v5, p3, Landroid/support/v7/widget/E;->PR:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aB;->aaz(Landroid/support/v7/widget/j;IIII)Z

    move-result v0

    return v0

    .line 135
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/E;->PR:I

    iget v1, p3, Landroid/support/v7/widget/E;->PR:I

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->ach(Landroid/support/v7/widget/j;)V

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public abstract aaC(Landroid/support/v7/widget/j;)Z
.end method

.method public abstract aaE(Landroid/support/v7/widget/j;)Z
.end method

.method public abstract aaI(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;IIII)Z
.end method

.method public abstract aaz(Landroid/support/v7/widget/j;IIII)Z
.end method

.method public final abS(Landroid/support/v7/widget/j;Z)V
    .locals 0

    .prologue
    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aB;->abT(Landroid/support/v7/widget/j;Z)V

    .line 318
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->WE(Landroid/support/v7/widget/j;)V

    .line 319
    return-void
.end method

.method public abT(Landroid/support/v7/widget/j;Z)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public abU(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public final abV(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->aca(Landroid/support/v7/widget/j;)V

    .line 303
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->WE(Landroid/support/v7/widget/j;)V

    .line 304
    return-void
.end method

.method public abW(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public final abX(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->acb(Landroid/support/v7/widget/j;)V

    .line 346
    return-void
.end method

.method public final abY(Landroid/support/v7/widget/j;Z)V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/aB;->acc(Landroid/support/v7/widget/j;Z)V

    .line 359
    return-void
.end method

.method public final abZ(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->acf(Landroid/support/v7/widget/j;)V

    .line 328
    return-void
.end method

.method public aca(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public acb(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public acc(Landroid/support/v7/widget/j;Z)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public acd(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public final ace(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->acd(Landroid/support/v7/widget/j;)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->WE(Landroid/support/v7/widget/j;)V

    .line 280
    return-void
.end method

.method public acf(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public final acg(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->abW(Landroid/support/v7/widget/j;)V

    .line 337
    return-void
.end method

.method public final ach(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->abU(Landroid/support/v7/widget/j;)V

    .line 293
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->WE(Landroid/support/v7/widget/j;)V

    .line 294
    return-void
.end method

.method public animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
    .locals 6

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 128
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->aaE(Landroid/support/v7/widget/j;)Z

    move-result v0

    return v0

    .line 116
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/E;->PQ:I

    iget v1, p3, Landroid/support/v7/widget/E;->PQ:I

    if-eq v0, v1, :cond_2

    .line 122
    :cond_1
    iget v2, p2, Landroid/support/v7/widget/E;->PQ:I

    iget v3, p2, Landroid/support/v7/widget/E;->PR:I

    iget v4, p3, Landroid/support/v7/widget/E;->PQ:I

    iget v5, p3, Landroid/support/v7/widget/E;->PR:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aB;->aaz(Landroid/support/v7/widget/j;IIII)Z

    move-result v0

    return v0

    .line 116
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/E;->PR:I

    iget v1, p3, Landroid/support/v7/widget/E;->PR:I

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method

.method public animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z
    .locals 7

    .prologue
    .line 92
    iget v2, p2, Landroid/support/v7/widget/E;->PQ:I

    .line 93
    iget v3, p2, Landroid/support/v7/widget/E;->PR:I

    .line 94
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 95
    if-eqz p3, :cond_0

    iget v4, p3, Landroid/support/v7/widget/E;->PQ:I

    .line 96
    :goto_0
    if-eqz p3, :cond_1

    iget v5, p3, Landroid/support/v7/widget/E;->PR:I

    .line 97
    :goto_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aB;->aaC(Landroid/support/v7/widget/j;)Z

    move-result v0

    return v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_1

    .line 97
    :cond_2
    if-eq v2, v4, :cond_4

    .line 99
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 98
    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/aB;->aaz(Landroid/support/v7/widget/j;IIII)Z

    move-result v0

    return v0

    .line 97
    :cond_4
    if-ne v3, v5, :cond_3

    goto :goto_2
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-boolean v1, p0, Landroid/support/v7/widget/aB;->SE:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
