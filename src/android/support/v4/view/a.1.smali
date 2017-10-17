.class public Landroid/support/v4/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private VQ:Landroid/view/ViewParent;

.field private VR:Landroid/view/ViewParent;

.field private VS:Z

.field private VT:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private agm(I)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 384
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/view/a;->VQ:Landroid/view/ViewParent;

    return-object v0

    .line 386
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/a;->VR:Landroid/view/ViewParent;

    return-object v0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private agn(ILandroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 394
    :pswitch_0
    iput-object p2, p0, Landroid/support/v4/view/a;->VQ:Landroid/view/ViewParent;

    goto :goto_0

    .line 397
    :pswitch_1
    iput-object p2, p0, Landroid/support/v4/view/a;->VR:Landroid/view/ViewParent;

    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-virtual {p0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    return v1

    .line 327
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/D;->ahG(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-virtual {p0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    return v1

    .line 347
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/D;->ahB(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .prologue
    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/a;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v6

    .line 278
    :cond_1
    invoke-direct {p0, p5}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_4

    .line 283
    if-eqz p1, :cond_5

    .line 286
    :cond_2
    if-nez p4, :cond_6

    move v8, v6

    move v9, v6

    .line 292
    :goto_1
    if-eqz p3, :cond_7

    move-object v4, p3

    .line 298
    :goto_2
    aput v6, v4, v6

    .line 299
    aput v6, v4, v7

    .line 300
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/D;->ahD(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-nez p4, :cond_9

    .line 307
    :goto_3
    aget v0, v4, v6

    if-eqz v0, :cond_a

    :cond_3
    move v0, v7

    :goto_4
    return v0

    .line 280
    :cond_4
    return v6

    .line 283
    :cond_5
    if-nez p2, :cond_2

    .line 308
    if-eqz p4, :cond_0

    .line 309
    aput v6, p4, v6

    .line 310
    aput v6, p4, v7

    goto :goto_0

    .line 287
    :cond_6
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v2, p4, v6

    .line 289
    aget v1, p4, v7

    move v8, v1

    move v9, v2

    goto :goto_1

    .line 293
    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/a;->VT:[I

    if-eqz v1, :cond_8

    .line 296
    :goto_5
    iget-object v4, p0, Landroid/support/v4/view/a;->VT:[I

    goto :goto_2

    .line 294
    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/view/a;->VT:[I

    goto :goto_5

    .line 303
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget v0, p4, v6

    sub-int/2addr v0, v9

    aput v0, p4, v6

    .line 305
    aget v0, p4, v7

    sub-int/2addr v0, v8

    aput v0, p4, v7

    goto :goto_3

    .line 307
    :cond_a
    aget v0, v4, v7

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_4
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    .prologue
    .line 203
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/a;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 9

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_1
    invoke-direct {p0, p6}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_3

    .line 225
    if-eqz p1, :cond_4

    .line 226
    :cond_2
    const/4 v2, 0x0

    .line 227
    const/4 v1, 0x0

    .line 228
    if-nez p5, :cond_5

    move v7, v1

    move v8, v2

    .line 234
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/support/v4/view/D;->ahE(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-nez p5, :cond_6

    .line 242
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_4
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 243
    if-eqz p5, :cond_0

    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 246
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p5, v1

    goto :goto_0

    .line 229
    :cond_5
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-virtual {v1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    const/4 v1, 0x0

    aget v2, p5, v1

    .line 231
    const/4 v1, 0x1

    aget v1, p5, v1

    move v7, v1

    move v8, v2

    goto :goto_1

    .line 238
    :cond_6
    iget-object v0, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    const/4 v0, 0x0

    aget v0, p5, v0

    sub-int/2addr v0, v8

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 240
    const/4 v0, 0x1

    aget v0, p5, v0

    sub-int/2addr v0, v7

    const/4 v1, 0x1

    aput v0, p5, v1

    goto :goto_2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/a;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/v4/view/a;->VS:Z

    return v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/support/v4/view/a;->VS:Z

    if-nez v0, :cond_0

    .line 72
    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/view/a;->VS:Z

    .line 73
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/f;->agt(Landroid/view/View;)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/a;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0, p2}, Landroid/support/v4/view/a;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    :cond_0
    return v3

    .line 146
    :cond_1
    return v4

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 150
    iget-object v0, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    .line 151
    :goto_0
    if-eqz v1, :cond_0

    .line 152
    iget-object v2, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Landroid/support/v4/view/D;->ahI(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 157
    instance-of v2, v1, Landroid/view/View;

    if-nez v2, :cond_4

    .line 160
    :goto_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0, p2, v1}, Landroid/support/v4/view/a;->agn(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v2, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1, p2}, Landroid/support/v4/view/D;->ahC(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 155
    return v4

    :cond_4
    move-object v0, v1

    .line 158
    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/a;->stopNestedScroll(I)V

    .line 175
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/view/a;->agm(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/a;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/D;->ahF(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    invoke-direct {p0, p1, v2}, Landroid/support/v4/view/a;->agn(ILandroid/view/ViewParent;)V

    goto :goto_0
.end method
