.class final Landroid/support/v7/widget/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static PM:Ljava/util/Comparator;

.field static final PN:Ljava/lang/ThreadLocal;


# instance fields
.field PK:J

.field PL:J

.field PO:Ljava/util/ArrayList;

.field private mTasks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/D;->PN:Ljava/lang/ThreadLocal;

    .line 187
    new-instance v0, Landroid/support/v7/widget/aF;

    invoke-direct {v0}, Landroid/support/v7/widget/aF;-><init>()V

    sput-object v0, Landroid/support/v7/widget/D;->PM:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private Zr(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/j;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 276
    invoke-static {p1, p2}, Landroid/support/v7/widget/D;->Zu(Landroid/support/v7/widget/RecyclerView;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/support/v7/widget/s;->XA(IZJ)Landroid/support/v7/widget/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 288
    if-nez v1, :cond_1

    .line 302
    :goto_0
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 304
    return-object v1

    .line 278
    :cond_0
    return-object v1

    .line 289
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/s;->Xz(Landroid/support/v7/widget/j;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    throw v0

    .line 289
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 292
    iget-object v2, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/s;->Xu(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private Zt()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    move v1, v3

    .line 216
    :goto_0
    if-lt v2, v7, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v6, v3

    move v1, v3

    .line 227
    :goto_1
    if-lt v6, v7, :cond_2

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v7/widget/D;->PM:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 218
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 216
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v4, v0, v3}, Landroid/support/v7/widget/y;->Yj(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 220
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v0, v0, Landroid/support/v7/widget/y;->mCount:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 228
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 229
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 234
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    .line 235
    iget v2, v8, Landroid/support/v7/widget/y;->Pv:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v8, Landroid/support/v7/widget/y;->Pw:I

    .line 236
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v9, v2, v4

    move v2, v3

    move v4, v1

    .line 237
    :goto_3
    iget v1, v8, Landroid/support/v7/widget/y;->mCount:I

    mul-int/lit8 v1, v1, 0x2

    if-lt v2, v1, :cond_4

    .line 227
    :goto_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v4

    goto :goto_1

    :cond_3
    move v4, v1

    .line 231
    goto :goto_4

    .line 239
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 243
    iget-object v1, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aE;

    .line 245
    :goto_5
    iget-object v5, v8, Landroid/support/v7/widget/y;->Px:[I

    add-int/lit8 v10, v2, 0x1

    aget v10, v5, v10

    .line 247
    if-le v10, v9, :cond_6

    move v5, v3

    :goto_6
    iput-boolean v5, v1, Landroid/support/v7/widget/aE;->SH:Z

    .line 248
    iput v9, v1, Landroid/support/v7/widget/aE;->SI:I

    .line 249
    iput v10, v1, Landroid/support/v7/widget/aE;->SG:I

    .line 250
    iput-object v0, v1, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    .line 251
    iget-object v5, v8, Landroid/support/v7/widget/y;->Px:[I

    aget v5, v5, v2

    iput v5, v1, Landroid/support/v7/widget/aE;->position:I

    .line 253
    add-int/lit8 v4, v4, 0x1

    .line 237
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_3

    .line 240
    :cond_5
    new-instance v1, Landroid/support/v7/widget/aE;

    invoke-direct {v1}, Landroid/support/v7/widget/aE;-><init>()V

    .line 241
    iget-object v5, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 247
    :cond_6
    const/4 v5, 0x1

    goto :goto_6
.end method

.method static Zu(Landroid/support/v7/widget/RecyclerView;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Yt()I

    move-result v2

    move v0, v1

    .line 263
    :goto_0
    if-lt v0, v2, :cond_0

    .line 271
    return v1

    .line 264
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v3

    .line 265
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 267
    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-eq v4, p1, :cond_2

    .line 263
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method private Zv(Landroid/support/v7/widget/RecyclerView;J)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 309
    if-eqz p1, :cond_1

    .line 313
    iget-boolean v1, p1, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_2

    .line 321
    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/y;->Yj(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 324
    iget v2, v1, Landroid/support/v7/widget/y;->mCount:I

    if-nez v2, :cond_3

    .line 338
    :goto_1
    return-void

    .line 310
    :cond_1
    return-void

    .line 313
    :cond_2
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    .line 314
    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Yt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    goto :goto_0

    .line 326
    :cond_3
    :try_start_0
    const-string/jumbo v2, "RV Nested Prefetch"

    invoke-static {v2}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 327
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/e;->WM(Landroid/support/v7/widget/q;)V

    .line 328
    :goto_2
    iget v2, v1, Landroid/support/v7/widget/y;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_4

    .line 335
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    goto :goto_1

    .line 331
    :cond_4
    :try_start_1
    iget-object v2, v1, Landroid/support/v7/widget/y;->Px:[I

    aget v2, v2, v0

    .line 332
    invoke-direct {p0, p1, v2, p2, p3}, Landroid/support/v7/widget/D;->Zr(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 335
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    throw v0
.end method

.method private Zx(Landroid/support/v7/widget/aE;J)V
    .locals 4

    .prologue
    .line 341
    iget-boolean v0, p1, Landroid/support/v7/widget/aE;->SH:Z

    if-nez v0, :cond_1

    move-wide v0, p2

    .line 342
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    iget v3, p1, Landroid/support/v7/widget/aE;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/support/v7/widget/D;->Zr(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 344
    if-nez v0, :cond_2

    .line 350
    :cond_0
    :goto_1
    return-void

    .line 341
    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 344
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    iget-object v0, v0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/D;->Zv(Landroid/support/v7/widget/RecyclerView;J)V

    goto :goto_1
.end method

.method private Zz(J)V
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 361
    :cond_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/D;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aE;

    .line 355
    iget-object v2, v0, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 358
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/D;->Zx(Landroid/support/v7/widget/aE;J)V

    .line 359
    invoke-virtual {v0}, Landroid/support/v7/widget/aE;->clear()V

    .line 353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public Zq(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method Zs(J)V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/support/v7/widget/D;->Zt()V

    .line 365
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/D;->Zz(J)V

    .line 366
    return-void
.end method

.method Zw(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/y;->Yl(II)V

    .line 185
    return-void

    .line 178
    :cond_1
    iget-wide v0, p0, Landroid/support/v7/widget/D;->PK:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/D;->PK:J

    .line 180
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public Zy(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 371
    :try_start_0
    const-string/jumbo v1, "RV Prefetch"

    invoke-static {v1}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    iget-object v1, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v4, v0

    move-wide v2, v6

    .line 382
    :goto_0
    if-lt v4, v5, :cond_1

    .line 389
    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 400
    iput-wide v6, p0, Landroid/support/v7/widget/D;->PK:J

    .line 401
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 391
    return-void

    .line 400
    :cond_0
    iput-wide v6, p0, Landroid/support/v7/widget/D;->PK:J

    .line 401
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 375
    return-void

    .line 383
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/widget/D;->PO:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 384
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    move-wide v0, v2

    .line 382
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 385
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_1

    .line 394
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v7/widget/D;->PL:J

    add-long/2addr v0, v2

    .line 396
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/D;->Zs(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    iput-wide v6, p0, Landroid/support/v7/widget/D;->PK:J

    .line 401
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 403
    return-void

    .line 400
    :catchall_0
    move-exception v0

    iput-wide v6, p0, Landroid/support/v7/widget/D;->PK:J

    .line 401
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    throw v0
.end method
