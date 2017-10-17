.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "SourceFile"


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mCachedScrollPositions:Landroid/util/SparseIntArray;

.field private mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

.field private mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field private mEmptySearchBackgroundTopOffset:I

.field private mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

.field private mNumAppsPerRow:I

.field private mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 50
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    invoke-virtual {p0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setDetachThumbOnFastScroll()V

    .line 77
    const v1, 0x7f0b0036

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 78
    return-void
.end method

.method private varargs putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 143
    aget v1, p4, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 144
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 145
    array-length v2, p4

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p4, v0

    .line 146
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .locals 5

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 428
    return-void

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 433
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 434
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 435
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 436
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 434
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBounds(IIII)V

    .line 437
    return-void
.end method


# virtual methods
.method protected getAvailableScrollHeight()I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbarTrackHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getContainerType(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/16 v0, 0x8

    return v0

    .line 188
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 189
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 191
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 194
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v0, v2, :cond_1

    .line 195
    const/4 v0, 0x7

    return v0

    .line 199
    :cond_1
    return v2
.end method

.method public getCurrentScrollY()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 363
    :cond_0
    return v2

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 369
    if-ne v1, v2, :cond_2

    .line 370
    return v2

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    return v0
.end method

.method public getCurrentScrollY(II)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    .line 377
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 378
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object v1, v0

    .line 379
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 380
    if-gez v2, :cond_1

    move v3, v4

    move v2, v4

    .line 382
    :goto_1
    if-ge v3, p1, :cond_0

    .line 383
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 384
    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 386
    if-eqz v1, :cond_3

    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v6, v7, :cond_3

    .line 387
    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-ne v6, v7, :cond_3

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr v0, p2

    return v0

    :cond_2
    move-object v1, v0

    .line 378
    goto :goto_0

    .line 392
    :cond_3
    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    .line 393
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 382
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 397
    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method protected getScrollbarTrackHeight()I
    .locals 2

    .prologue
    .line 408
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 408
    sub-int/2addr v0, v1

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    .line 269
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 226
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setHotspot(FF)V

    .line 230
    :cond_0
    return v0
.end method

.method public onSearchResultsChanged()V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->shouldShowEmptySearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/DrawableFactory;->getAllAppsBackground(Landroid/content/Context;)Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 213
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->animateBgAlpha(FI)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 182
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 292
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 297
    if-gez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 299
    return-void

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v2

    .line 305
    if-gtz v2, :cond_3

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 307
    return-void

    .line 310
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 311
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isDraggingThumb()Z

    move-result v3

    if-nez v3, :cond_4

    .line 316
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    .line 315
    float-to-int v2, v0

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getThumbOffsetY()I

    move-result v0

    .line 319
    sub-int v3, v2, v0

    .line 320
    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 326
    if-gez p1, :cond_5

    .line 327
    mul-int v4, p1, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 328
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 334
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 336
    if-ne v2, v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 349
    :cond_4
    :goto_1
    return-void

    .line 330
    :cond_5
    sub-int v4, v1, v0

    mul-int/2addr v4, p1

    int-to-float v4, v4

    .line 331
    sub-int v5, v1, v2

    int-to-float v5, v5

    .line 330
    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 332
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 343
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    goto :goto_1

    .line 347
    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    goto :goto_1
.end method

.method public preMeasureViews(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1, p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 119
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 121
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 125
    const/16 v2, 0x80

    .line 126
    const/16 v3, 0x20

    .line 124
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 127
    new-array v2, v5, [I

    .line 128
    const/16 v3, 0x40

    aput v3, v2, v4

    .line 127
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 129
    new-array v2, v5, [I

    .line 130
    const/16 v3, 0x10

    aput v3, v2, v4

    .line 129
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 131
    new-array v2, v5, [I

    .line 132
    const/16 v3, 0x8

    aput v3, v2, v4

    .line 131
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 140
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    const-string/jumbo v0, ""

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v3

    .line 249
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 250
    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 251
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 252
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    .line 261
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 262
    iget-object v0, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object v0

    .line 250
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isThumbDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->reattachThumbToScroll()V

    .line 158
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/HeaderElevationController;->reset()V

    .line 162
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/q;)V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->setAdapter(Landroid/support/v7/widget/q;)V

    .line 274
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/q;->registerAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onSetAdapter(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    .line 280
    return-void
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 85
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 86
    return-void
.end method

.method public setElevationController(Lcom/android/launcher3/allapps/HeaderElevationController;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mElevationController:Lcom/android/launcher3/allapps/HeaderElevationController;

    .line 90
    return-void
.end method

.method public setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 96
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    .line 99
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 100
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->XO(II)V

    .line 101
    const/16 v2, 0x40

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->XO(II)V

    .line 102
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->XO(II)V

    .line 103
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->XO(II)V

    .line 104
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/t;->XO(II)V

    .line 105
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/t;->XO(II)V

    .line 106
    const/16 v1, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/t;->XO(II)V

    .line 107
    return-void
.end method

.method protected supportsFastScrolling()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
