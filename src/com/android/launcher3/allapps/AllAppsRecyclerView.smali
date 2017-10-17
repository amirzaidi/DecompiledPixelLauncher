.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# static fields
.field public static final CONTENT_TRANS_Y:Landroid/util/Property;


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mCachedScrollPositions:Landroid/util/SparseIntArray;

.field private mContentTranslationY:F

.field private mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field private mEmptySearchBackgroundTopOffset:I

.field private mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

.field private mNumAppsPerRow:I

.field private mOverScrollHelper:Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

.field private mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

.field private mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

.field private mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOverScrollHelper:Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "appsRecyclerViewContentTransY"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    sput-object v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->CONTENT_TRANS_Y:Landroid/util/Property;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mContentTranslationY:F

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 97
    const v1, 0x7f0b003f

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 99
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOverScrollHelper:Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    .line 100
    new-instance v0, Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOverScrollHelper:Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setListener(Lcom/android/launcher3/allapps/VerticalPullDetector$Listener;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/VerticalPullDetector;->setDetectableScrollConditions(IZ)V

    .line 103
    return-void
.end method

.method private varargs putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 181
    aget v1, p4, v0

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 182
    invoke-virtual {v1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 183
    array-length v2, p4

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p4, v0

    .line 184
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .locals 5

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 475
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 480
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 481
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 482
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 483
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 481
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBounds(IIII)V

    .line 484
    return-void
.end method


# virtual methods
.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/16 v0, 0x8

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 254
    :goto_0
    return-void

    .line 239
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 242
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    .line 244
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 245
    iget v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v1, v2, :cond_1

    .line 246
    const/4 v1, 0x7

    iput v1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 247
    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 248
    return-void

    .line 252
    :cond_1
    iput v2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_0
.end method

.method public getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v1

    .line 466
    sub-int/2addr v0, v1

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    .line 466
    add-int/2addr v0, v1

    return v0
.end method

.method public getContentTranslationY()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mContentTranslationY:F

    return v0
.end method

.method public getCurrentScrollY()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 417
    :cond_0
    return v2

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 423
    if-ne v1, v2, :cond_2

    .line 424
    return v2

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v2

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    .line 426
    add-int/2addr v0, v2

    return v0
.end method

.method public getCurrentScrollY(II)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 431
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v5

    .line 432
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 433
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object v1, v0

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 435
    if-gez v2, :cond_1

    move v3, v4

    move v2, v4

    .line 437
    :goto_1
    if-ge v3, p1, :cond_0

    .line 438
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 439
    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 441
    if-eqz v1, :cond_3

    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v6, v7, :cond_3

    .line 442
    iget v6, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-ne v6, v7, :cond_3

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    :cond_1
    sub-int v0, v2, p2

    return v0

    :cond_2
    move-object v1, v0

    .line 433
    goto :goto_0

    .line 447
    :cond_3
    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    .line 448
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 437
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 452
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

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mContentTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFastScrollCompleted()V

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    .line 323
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 279
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOverScrollHelper:Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->isInOverScroll()Z

    move-result v0

    .line 280
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setHotspot(FF)V

    .line 284
    :cond_0
    return v0

    .line 279
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSearchResultsChanged()V
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->shouldShowEmptySearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/launcher3/graphics/DrawableFactory;->getAllAppsBackground(Landroid/content/Context;)Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 266
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->animateBgAlpha(FI)V

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 232
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mPullDetector:Lcom/android/launcher3/allapps/VerticalPullDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/VerticalPullDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 115
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->addMovement(Landroid/view/MotionEvent;)V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateScrollbar(I)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 346
    return-void

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 351
    if-gez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 353
    return-void

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v1

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v2

    .line 359
    if-gtz v2, :cond_3

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 361
    return-void

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isThumbDetached()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 365
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v3

    if-nez v3, :cond_4

    .line 370
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    .line 369
    float-to-int v2, v0

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    .line 373
    sub-int v3, v2, v0

    .line 374
    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 380
    if-gez p1, :cond_5

    .line 381
    mul-int v4, p1, v0

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 382
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 388
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 390
    if-ne v2, v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    .line 403
    :cond_4
    :goto_1
    return-void

    .line 384
    :cond_5
    sub-int v4, v1, v0

    mul-int/2addr v4, p1

    int-to-float v4, v4

    .line 385
    sub-int v5, v1, v2

    int-to-float v5, v5

    .line 384
    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 386
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 397
    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    goto :goto_1

    .line 401
    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    goto :goto_1
.end method

.method public preMeasureViews(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x80000000

    .line 154
    invoke-virtual {p1, p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 159
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 161
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 165
    const/16 v2, 0x40

    .line 166
    const/16 v3, 0x20

    .line 164
    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 167
    new-array v2, v5, [I

    .line 168
    const/16 v3, 0x10

    aput v3, v2, v4

    .line 167
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 169
    new-array v2, v5, [I

    .line 170
    const/16 v3, 0x8

    aput v3, v2, v4

    .line 169
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->putSameHeightFor(Lcom/android/launcher3/allapps/AllAppsGridAdapter;II[I)V

    .line 178
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    .line 293
    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v0, ""

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->stopScroll()V

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v3

    .line 303
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 304
    const/4 v1, 0x1

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 305
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 306
    iget v4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    .line 315
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 316
    iget-object v0, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object v0

    .line 304
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0
.end method

.method public scrollToTop()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 197
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/q;)V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->setAdapter(Landroid/support/v7/widget/q;)V

    .line 328
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$2;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/q;->registerAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onSetAdapter(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    .line 334
    return-void
.end method

.method public setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 126
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 127
    return-void
.end method

.method public setContentTranslationY(F)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mContentTranslationY:F

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->invalidate()V

    .line 222
    return-void
.end method

.method public setNumAppsPerRow(Lcom/android/launcher3/DeviceProfile;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 137
    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    .line 140
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 141
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->YO(II)V

    .line 142
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->YO(II)V

    .line 143
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/t;->YO(II)V

    .line 144
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/t;->YO(II)V

    .line 145
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/t;->YO(II)V

    .line 146
    const/16 v1, 0x40

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/t;->YO(II)V

    .line 147
    return-void
.end method

.method public setSpringAnimationHandler(Lcom/android/launcher3/anim/SpringAnimationHandler;)V
    .locals 2

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_PHYSICS:Z

    if-eqz v0, :cond_0

    .line 107
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    .line 108
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 110
    :cond_0
    return-void
.end method

.method public supportsFastScrolling()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 226
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
