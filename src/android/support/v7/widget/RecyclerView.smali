.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/e;


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mAccessibilityDelegate:Landroid/support/v7/widget/z;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

.field mAdapter:Landroid/support/v7/widget/q;

.field mAdapterHelper:Landroid/support/v7/widget/C;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

.field mChildHelper:Landroid/support/v7/widget/A;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field private mDispatchScrollCounter:I

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Landroid/support/v7/widget/D;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/b;

.field private mItemAnimatorListener:Landroid/support/v7/widget/x;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/p;

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Landroid/support/v7/widget/u;

.field private mOnChildAttachStateListeners:Ljava/util/List;

.field private mOnFlingListener:Landroid/support/v7/widget/d;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroid/support/v7/widget/y;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Landroid/support/v7/widget/s;

.field mRecyclerListener:Landroid/support/v7/widget/l;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Landroid/support/v7/widget/m;

.field private mScrollListeners:Ljava/util/List;

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/d;

.field final mState:Landroid/support/v7/widget/e;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/v;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/w;

.field final mViewInfoStore:Landroid/support/v7/widget/B;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 165
    new-array v0, v2, [I

    const v3, 0x10100eb

    aput v3, v0, v1

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_4

    move v0, v1

    :goto_3
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_5

    move v0, v1

    :goto_4
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_6

    move v0, v1

    :goto_5
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 294
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 506
    new-instance v0, Landroid/support/v7/widget/ak;

    invoke-direct {v0}, Landroid/support/v7/widget/ak;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 174
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 181
    goto :goto_1

    :cond_3
    move v0, v2

    .line 183
    goto :goto_2

    :cond_4
    move v0, v2

    .line 189
    goto :goto_3

    :cond_5
    move v0, v2

    .line 195
    goto :goto_4

    :cond_6
    move v0, v2

    .line 205
    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 555
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 559
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 562
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 297
    new-instance v1, Landroid/support/v7/widget/u;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/u;

    .line 299
    new-instance v1, Landroid/support/v7/widget/s;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/s;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    .line 316
    new-instance v1, Landroid/support/v7/widget/B;

    invoke-direct {v1}, Landroid/support/v7/widget/B;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    .line 330
    new-instance v1, Landroid/support/v7/widget/aa;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aa;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 351
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 352
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 366
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 391
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 401
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 410
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 414
    new-instance v1, Landroid/support/v7/widget/Z;

    invoke-direct {v1}, Landroid/support/v7/widget/Z;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 441
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 442
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 454
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 455
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 457
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 459
    new-instance v1, Landroid/support/v7/widget/v;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/v;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    .line 462
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v1, :cond_1

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    .line 465
    new-instance v0, Landroid/support/v7/widget/e;

    invoke-direct {v0}, Landroid/support/v7/widget/e;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 471
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 472
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 473
    new-instance v0, Landroid/support/v7/widget/c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/c;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/x;

    .line 475
    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 481
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 484
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 485
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 486
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 496
    new-instance v0, Landroid/support/v7/widget/aA;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aA;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 517
    new-instance v0, Landroid/support/v7/widget/V;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/V;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/w;

    .line 563
    if-nez p2, :cond_2

    .line 568
    iput-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 570
    :goto_1
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 571
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 573
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 576
    invoke-static {v0, p1}, Landroid/support/v4/view/y;->agn(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 578
    invoke-static {v0, p1}, Landroid/support/v4/view/y;->ago(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 579
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 580
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 581
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v5

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Ws(Landroid/support/v7/widget/x;)V

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 585
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 587
    invoke-static {p0}, Landroid/support/v4/view/f;->afy(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 594
    new-instance v0, Landroid/support/v7/widget/z;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/z;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/z;)V

    .line 599
    if-nez p2, :cond_5

    .line 632
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 636
    :cond_0
    :goto_4
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 637
    return-void

    .line 462
    :cond_1
    new-instance v0, Landroid/support/v7/widget/y;

    invoke-direct {v0}, Landroid/support/v7/widget/y;-><init>()V

    goto/16 :goto_0

    .line 564
    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 565
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 566
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_3
    move v0, v6

    .line 581
    goto :goto_2

    .line 589
    :cond_4
    invoke-static {p0, v6}, Landroid/support/v4/view/f;->afA(Landroid/view/View;I)V

    goto :goto_3

    .line 601
    :cond_5
    sget-object v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 603
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 604
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 606
    if-eq v0, v4, :cond_6

    .line 609
    :goto_5
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollEnabled:I

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    .line 610
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableFastScroller:Z

    if-nez v0, :cond_7

    .line 622
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 623
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 625
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 626
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 628
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 629
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    .line 607
    :cond_6
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    goto :goto_5

    .line 611
    :cond_7
    sget v0, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalThumbDrawable:I

    .line 612
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 613
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollVerticalTrackDrawable:I

    .line 614
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 615
    sget v1, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalThumbDrawable:I

    .line 616
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 617
    sget v7, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_fastScrollHorizontalTrackDrawable:I

    .line 618
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 619
    invoke-virtual {p0, v0, v4, v1, v7}, Landroid/support/v7/widget/RecyclerView;->initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/j;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1306
    iget-object v2, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 1307
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 1308
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/s;->Xy(Landroid/support/v7/widget/j;)V

    .line 1309
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1312
    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/A;->YC(Landroid/view/View;)V

    .line 1317
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1307
    goto :goto_0

    .line 1311
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/support/v7/widget/A;->Yy(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 1313
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/A;->Ys(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private animateChange(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3903
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3904
    if-nez p5, :cond_0

    .line 3907
    :goto_0
    if-ne p1, p2, :cond_1

    .line 3918
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/b;->WF(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3921
    :goto_2
    return-void

    .line 3905
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 3908
    :cond_1
    if-nez p6, :cond_2

    .line 3911
    :goto_3
    iput-object p2, p1, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    .line 3913
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    .line 3914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->Xy(Landroid/support/v7/widget/j;)V

    .line 3915
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3916
    iput-object p1, p2, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    goto :goto_1

    .line 3909
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    goto :goto_3

    .line 3919
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_2
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 3008
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 3009
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3010
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5256
    iget-object v0, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 5272
    :goto_0
    return-void

    .line 5257
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5258
    :goto_1
    if-nez v0, :cond_1

    .line 5270
    iput-object v1, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 5259
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    .line 5263
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5264
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 5267
    goto :goto_1

    .line 5260
    :cond_2
    return-void

    .line 5265
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 662
    if-nez p2, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 675
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/p;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v4

    .line 679
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 680
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 681
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object p3, v1, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .line 691
    :goto_2
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/p;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/p;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Unable to find LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 670
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    goto :goto_1

    .line 682
    :catch_1
    move-exception v0

    .line 684
    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v0

    move-object v1, v2

    .line 689
    goto :goto_2

    .line 685
    :catch_2
    move-exception v1

    .line 686
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Error creating LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    .line 696
    :catch_3
    move-exception v0

    .line 697
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 699
    :catch_4
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 702
    :catch_5
    move-exception v0

    .line 703
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Cannot access non-public constructor "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 705
    :catch_6
    move-exception v0

    .line 706
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ": Class is not a LayoutManager "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3849
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3850
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    goto :goto_0
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3221
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3222
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3223
    if-nez v0, :cond_1

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3223
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3224
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3225
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3226
    invoke-static {v1, v0}, Landroid/support/v4/view/a/r;->aeW(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3227
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3559
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/e;->WJ(I)V

    .line 3560
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->OU:Z

    .line 3561
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3562
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2}, Landroid/support/v7/widget/B;->clear()V

    .line 3563
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3564
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3565
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3566
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v3, v3, Landroid/support/v7/widget/e;->OQ:Z

    if-nez v3, :cond_2

    :goto_0
    move v0, v1

    :cond_0
    iput-boolean v0, v2, Landroid/support/v7/widget/e;->OK:Z

    .line 3567
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3568
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v2, v2, Landroid/support/v7/widget/e;->OT:Z

    iput-boolean v2, v0, Landroid/support/v7/widget/e;->OO:Z

    .line 3569
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/e;->OR:I

    .line 3570
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OQ:Z

    if-nez v0, :cond_3

    .line 3599
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OT:Z

    if-nez v0, :cond_7

    .line 3638
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3640
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3641
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3642
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/e;->OS:I

    .line 3643
    return-void

    .line 3566
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3574
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    move v0, v1

    .line 3575
    :goto_2
    if-ge v0, v2, :cond_1

    .line 3576
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3577
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3575
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3577
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3580
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3582
    invoke-static {v3}, Landroid/support/v7/widget/b;->Wr(Landroid/support/v7/widget/j;)I

    move-result v6

    .line 3583
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3581
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/b;->WA(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v4

    .line 3584
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/B;->YI(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3585
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->OK:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3586
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3587
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v4

    .line 3595
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/B;->YL(JLandroid/support/v7/widget/j;)V

    goto :goto_3

    .line 3577
    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v4}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 3606
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OP:Z

    .line 3608
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->OP:Z

    .line 3610
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/p;->onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V

    .line 3611
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v2, Landroid/support/v7/widget/e;->OP:Z

    move v0, v1

    .line 3613
    :goto_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 3636
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto/16 :goto_1

    .line 3614
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3615
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3616
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3619
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/B;->YS(Landroid/support/v7/widget/j;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3613
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3620
    :cond_a
    invoke-static {v3}, Landroid/support/v7/widget/b;->Wr(Landroid/support/v7/widget/j;)I

    move-result v2

    .line 3621
    const/16 v4, 0x2000

    .line 3622
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v4

    .line 3623
    if-eqz v4, :cond_b

    .line 3626
    :goto_7
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3627
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3626
    invoke-virtual {v5, v6, v3, v2, v7}, Landroid/support/v7/widget/b;->WA(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v2

    .line 3628
    if-nez v4, :cond_c

    .line 3631
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v4, v3, v2}, Landroid/support/v7/widget/B;->YO(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_6

    .line 3624
    :cond_b
    or-int/lit16 v2, v2, 0x1000

    goto :goto_7

    .line 3629
    :cond_c
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_6
.end method

.method private dispatchLayoutStep2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3650
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3651
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3652
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/e;->WJ(I)V

    .line 3653
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zo()V

    .line 3654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/e;->OR:I

    .line 3655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->OH:I

    .line 3658
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OO:Z

    .line 3659
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/p;->onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V

    .line 3661
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OP:Z

    .line 3662
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3665
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OQ:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v2, Landroid/support/v7/widget/e;->OQ:Z

    .line 3666
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/e;->OS:I

    .line 3667
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3668
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3669
    return-void

    .line 3665
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->WJ(I)V

    .line 3677
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3678
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3679
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v11, v0, Landroid/support/v7/widget/e;->OS:I

    .line 3680
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OQ:Z

    if-nez v0, :cond_0

    .line 3732
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    .line 3733
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->OR:I

    iput v1, v0, Landroid/support/v7/widget/e;->ON:I

    .line 3734
    iput-boolean v10, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3735
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v10, v0, Landroid/support/v7/widget/e;->OQ:Z

    .line 3737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v10, v0, Landroid/support/v7/widget/e;->OT:Z

    .line 3738
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput-boolean v10, v0, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    .line 3739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v0, v0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 3742
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v0, v0, Landroid/support/v7/widget/p;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-nez v0, :cond_9

    .line 3750
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->onLayoutCompleted(Landroid/support/v7/widget/e;)V

    .line 3751
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3752
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->clear()V

    .line 3754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v10

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v11

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3757
    :goto_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3758
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3759
    return-void

    .line 3684
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_4
    if-gez v7, :cond_1

    .line 3729
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->YG(Landroid/support/v7/widget/w;)V

    goto :goto_0

    .line 3685
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 3686
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3689
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v8

    .line 3690
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3691
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/b;->WB(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    .line 3692
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v8, v9}, Landroid/support/v7/widget/B;->YF(J)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3693
    if-nez v1, :cond_4

    .line 3724
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/B;->YK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3684
    :cond_3
    :goto_5
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_4

    .line 3693
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3704
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/B;->YJ(Landroid/support/v7/widget/j;)Z

    move-result v5

    .line 3706
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/B;->YJ(Landroid/support/v7/widget/j;)Z

    move-result v6

    .line 3707
    if-nez v5, :cond_6

    .line 3711
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/B;->YU(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v3

    .line 3714
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v4, v2, v0}, Landroid/support/v7/widget/B;->YK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3715
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/B;->YM(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v4

    .line 3716
    if-eqz v3, :cond_7

    move-object v0, p0

    .line 3719
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;ZZ)V

    goto :goto_5

    .line 3707
    :cond_6
    if-ne v1, v2, :cond_5

    .line 3709
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/B;->YK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_5

    .line 3717
    :cond_7
    invoke-direct {p0, v8, v9, v2, v1}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/j;Landroid/support/v7/widget/j;)V

    goto :goto_5

    .line 3740
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v0, v0, Landroid/support/v7/widget/s;->Pk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 3745
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput v10, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    .line 3746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput-boolean v10, v0, Landroid/support/v7/widget/p;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3747
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->Xv()V

    goto/16 :goto_2

    .line 3755
    :cond_a
    invoke-virtual {p0, v10, v10}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    goto/16 :goto_3
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2710
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2711
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    if-nez v1, :cond_1

    .line 2727
    :goto_0
    if-nez v0, :cond_5

    .line 2737
    :cond_0
    return v2

    .line 2712
    :cond_1
    if-eqz v0, :cond_3

    .line 2716
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    invoke-interface {v1, p0, p1}, Landroid/support/v7/widget/n;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2717
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2719
    :cond_2
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2721
    :goto_1
    return v5

    .line 2714
    :cond_3
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    goto :goto_0

    .line 2717
    :cond_4
    if-eq v0, v5, :cond_2

    goto :goto_1

    .line 2728
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2729
    :goto_2
    if-ge v1, v3, :cond_0

    .line 2730
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2731
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/n;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2729
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2732
    :cond_6
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2733
    return v5
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 2693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2694
    if-ne v3, v6, :cond_1

    .line 2695
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2698
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2699
    :goto_1
    if-lt v1, v4, :cond_2

    .line 2706
    return v2

    .line 2694
    :cond_1
    if-eqz v3, :cond_0

    goto :goto_0

    .line 2700
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2701
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/n;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2699
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2701
    :cond_4
    if-eq v3, v6, :cond_3

    .line 2702
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2703
    const/4 v0, 0x1

    return v0
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 3823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v5

    .line 3824
    if-eqz v5, :cond_0

    .line 3829
    const v2, 0x7fffffff

    .line 3830
    const/high16 v0, -0x80000000

    move v3, v4

    .line 3831
    :goto_0
    if-lt v3, v5, :cond_1

    .line 3844
    aput v2, p1, v4

    .line 3845
    aput v0, p1, v7

    .line 3846
    return-void

    .line 3825
    :cond_0
    aput v1, p1, v4

    .line 3826
    aput v1, p1, v7

    .line 3827
    return-void

    .line 3832
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3833
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3836
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v1

    .line 3837
    if-lt v1, v2, :cond_3

    .line 3840
    :goto_1
    if-gt v1, v0, :cond_4

    move v1, v2

    .line 3831
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3834
    goto :goto_2

    :cond_3
    move v2, v1

    .line 3838
    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v2

    .line 3841
    goto :goto_2
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 5234
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5237
    instance-of v1, p0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 5240
    check-cast p0, Landroid/view/ViewGroup;

    .line 5241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5242
    :goto_0
    if-lt v0, v1, :cond_2

    .line 5249
    return-object v3

    .line 5235
    :cond_0
    return-object v3

    .line 5238
    :cond_1
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 5243
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5244
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 5245
    if-nez v2, :cond_3

    .line 5242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5246
    :cond_3
    return-object v2
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 3439
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->OJ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3442
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    move v1, v0

    .line 3443
    :goto_1
    if-lt v1, v2, :cond_3

    .line 3452
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3453
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    .line 3462
    return-object v5

    .line 3439
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->OJ:I

    goto :goto_0

    .line 3444
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3445
    if-eqz v3, :cond_0

    .line 3448
    iget-object v4, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3443
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3449
    :cond_4
    iget-object v0, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0

    .line 3454
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3455
    if-eqz v1, :cond_6

    .line 3458
    iget-object v2, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3459
    iget-object v0, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0

    .line 3456
    :cond_6
    return-object v5
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4336
    if-eqz p0, :cond_0

    .line 4339
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->Pa:Landroid/support/v7/widget/j;

    return-object v0

    .line 4337
    :cond_0
    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 4611
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 4612
    iget-object v1, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 4613
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/i;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4614
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/i;->topMargin:I

    sub-int/2addr v3, v4

    .line 4615
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v4, v5

    .line 4616
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    .line 4613
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4617
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 3540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    move v1, v0

    move-object v0, p1

    .line 3541
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3548
    :cond_0
    return v1

    .line 3541
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3542
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3544
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    move-object v0, p1

    .line 3547
    goto :goto_0

    .line 3545
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_1
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    const/4 v0, 0x0

    .line 714
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 717
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 718
    :cond_1
    return-object p2
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/d;
    .locals 1

    .prologue
    .line 12706
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/d;

    if-eqz v0, :cond_0

    .line 12709
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/d;

    return-object v0

    .line 12707
    :cond_0
    new-instance v0, Landroid/support/v4/view/d;

    invoke-direct {v0, p0}, Landroid/support/v4/view/d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/d;

    goto :goto_0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/j;Landroid/support/v7/widget/j;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 3779
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 3780
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cannot be found but it is necessary for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    return-void

    .line 3781
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3782
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 3783
    if-eq v2, p3, :cond_3

    .line 3786
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v4

    .line 3787
    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 3788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_2

    .line 3793
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3788
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3789
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3780
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private hasUpdatedView()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1708
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1709
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1718
    return v1

    .line 1710
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 1711
    if-nez v3, :cond_2

    .line 1709
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1711
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1714
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1715
    const/4 v0, 0x1

    return v0
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 724
    new-instance v0, Landroid/support/v7/widget/A;

    new-instance v1, Landroid/support/v7/widget/aC;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aC;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/A;-><init>(Landroid/support/v7/widget/aL;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    .line 844
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2435
    if-nez p2, :cond_1

    .line 2436
    :cond_0
    return v1

    .line 2435
    :cond_1
    if-eq p2, p0, :cond_0

    .line 2438
    if-eqz p1, :cond_3

    .line 2442
    if-ne p3, v3, :cond_4

    .line 2443
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v1

    .line 2444
    :goto_0
    if-eq p3, v3, :cond_6

    :goto_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_7

    const/16 v0, 0x11

    .line 2446
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2449
    if-eq p3, v3, :cond_9

    .line 2452
    const/16 v0, 0x21

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2439
    :cond_3
    return v2

    .line 2442
    :cond_4
    if-eq p3, v2, :cond_2

    .line 2455
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_5
    move v0, v2

    .line 2443
    goto :goto_0

    :cond_6
    move v1, v2

    .line 2444
    goto :goto_1

    :cond_7
    const/16 v0, 0x42

    goto :goto_2

    .line 2447
    :cond_8
    return v2

    .line 2450
    :cond_9
    const/16 v0, 0x82

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method private isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2464
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2465
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2466
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2467
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2468
    sparse-switch p3, :sswitch_data_0

    .line 2486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2470
    :sswitch_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_1

    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 2474
    :sswitch_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_5

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_4

    :goto_1
    move v0, v1

    :cond_4
    return v0

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 2478
    :sswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_8

    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_7

    :goto_2
    move v0, v1

    :cond_7
    return v0

    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_6

    goto :goto_2

    .line 2482
    :sswitch_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_b

    :cond_9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_a

    :goto_3
    move v0, v1

    :cond_a
    return v0

    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_9

    goto :goto_3

    .line 2468
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 3014
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-eq v2, v3, :cond_0

    .line 3021
    :goto_0
    return-void

    .line 3016
    :cond_0
    if-eqz v1, :cond_1

    .line 3017
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3018
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3019
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_0

    .line 3016
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3310
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->supportsPredictiveItemAnimations()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3320
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_4

    .line 3329
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3332
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zo()V

    .line 3334
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    .line 3335
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v3, :cond_7

    :cond_1
    :goto_3
    move v3, v1

    .line 3341
    :goto_4
    iput-boolean v3, v4, Landroid/support/v7/widget/e;->OQ:Z

    .line 3342
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->OQ:Z

    if-nez v4, :cond_c

    :cond_2
    :goto_5
    move v2, v1

    .line 3345
    :cond_3
    iput-boolean v2, v3, Landroid/support/v7/widget/e;->OT:Z

    .line 3346
    return-void

    .line 3323
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->reset()V

    .line 3324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 3330
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zd()V

    goto :goto_1

    .line 3334
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 3335
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_a

    :cond_8
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_b

    :cond_9
    move v3, v2

    .line 3341
    goto :goto_4

    .line 3335
    :cond_a
    if-nez v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v3, v3, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 3341
    invoke-virtual {v3}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 3342
    :cond_c
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_2

    .line 3345
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_5
.end method

.method private pullGlows(FFFF)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2167
    cmpg-float v2, p2, v4

    if-gez v2, :cond_3

    .line 2168
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2169
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->adE(Landroid/widget/EdgeEffect;FF)V

    move v1, v0

    .line 2177
    :cond_0
    :goto_0
    cmpg-float v2, p4, v4

    if-gez v2, :cond_4

    .line 2178
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2179
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v2, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->adE(Landroid/widget/EdgeEffect;FF)V

    .line 2187
    :goto_1
    if-eqz v0, :cond_6

    .line 2188
    :cond_1
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/f;->afw(Landroid/view/View;)V

    .line 2190
    :cond_2
    return-void

    .line 2171
    :cond_3
    cmpl-float v2, p2, v4

    if-lez v2, :cond_0

    .line 2172
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2173
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->adE(Landroid/widget/EdgeEffect;FF)V

    move v1, v0

    .line 2174
    goto :goto_0

    .line 2181
    :cond_4
    cmpl-float v2, p4, v4

    if-lez v2, :cond_5

    .line 2182
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2183
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->adE(Landroid/widget/EdgeEffect;FF)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2181
    goto :goto_1

    .line 2187
    :cond_6
    cmpl-float v0, p2, v4

    if-nez v0, :cond_1

    cmpl-float v0, p4, v4

    if-eqz v0, :cond_2

    goto :goto_2
.end method

.method private recoverFocusFromState()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 3466
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-nez v0, :cond_1

    .line 3473
    :cond_0
    return-void

    .line 3466
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3467
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_0

    .line 3468
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_5

    .line 3476
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3507
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-wide v2, v0, Landroid/support/v7/widget/e;->OI:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    move-object v0, v1

    .line 3511
    :goto_1
    if-nez v0, :cond_b

    .line 3513
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_c

    move-object v0, v1

    .line 3528
    :goto_2
    if-nez v0, :cond_d

    .line 3537
    :goto_3
    return-void

    .line 3468
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3477
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3478
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-nez v2, :cond_7

    .line 3497
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3500
    return-void

    .line 3479
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 3491
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3494
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 3495
    return-void

    .line 3479
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 3508
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-wide v2, v0, Landroid/support/v7/widget/e;->OI:J

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/j;

    move-result-object v0

    goto :goto_1

    .line 3511
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 3512
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3525
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    goto :goto_2

    .line 3520
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 3529
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->OM:I

    int-to-long v2, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    .line 3530
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->OM:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3531
    if-nez v1, :cond_f

    .line 3535
    :cond_e
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 3531
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    .line 3532
    goto :goto_5
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2194
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2198
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    .line 2202
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    .line 2206
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_3

    .line 2210
    :goto_3
    if-nez v0, :cond_4

    .line 2213
    :goto_4
    return-void

    .line 2195
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2196
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2199
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2200
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 2203
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2204
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2

    .line 2207
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2208
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3

    .line 2211
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/f;->afw(Landroid/view/View;)V

    goto :goto_4
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2507
    if-nez p2, :cond_1

    move-object v0, p1

    .line 2508
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2513
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2514
    instance-of v2, v0, Landroid/support/v7/widget/i;

    if-nez v2, :cond_2

    .line 2526
    :cond_0
    :goto_1
    if-nez p2, :cond_3

    .line 2530
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_4

    move v4, v5

    :goto_3
    if-eqz p2, :cond_5

    :goto_4
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/p;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 2532
    return-void

    :cond_1
    move-object v0, p2

    .line 2507
    goto :goto_0

    .line 2516
    :cond_2
    check-cast v0, Landroid/support/v7/widget/i;

    .line 2517
    iget-boolean v2, v0, Landroid/support/v7/widget/i;->Pb:Z

    if-nez v2, :cond_0

    .line 2518
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 2519
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2520
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2521
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2522
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2527
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move v4, v1

    .line 2530
    goto :goto_3

    :cond_5
    move v5, v1

    goto :goto_4
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3424
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/widget/e;->OI:J

    .line 3425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->OJ:I

    .line 3426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->OM:I

    .line 3427
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3003
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3004
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 3005
    return-void

    .line 3001
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private saveFocusInfo()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3404
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-nez v1, :cond_2

    :cond_0
    move-object v1, v0

    .line 3408
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 3409
    :cond_1
    if-eqz v0, :cond_3

    .line 3412
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, v1, Landroid/support/v7/widget/e;->OI:J

    .line 3416
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_5

    .line 3417
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3418
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v1

    :goto_2
    iput v1, v2, Landroid/support/v7/widget/e;->OJ:I

    .line 3419
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/e;->OM:I

    .line 3421
    :goto_3
    return-void

    .line 3404
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 3405
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 3410
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_3

    .line 3412
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    goto :goto_1

    .line 3416
    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    .line 3417
    :cond_6
    iget v1, v0, Landroid/support/v7/widget/j;->mOldPosition:I

    goto :goto_2
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_1

    .line 1079
    :goto_0
    if-nez p2, :cond_2

    .line 1080
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1082
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->reset()V

    .line 1083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 1084
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 1085
    if-nez p1, :cond_3

    .line 1089
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_4

    .line 1092
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/s;->Xr(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V

    .line 1093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OP:Z

    .line 1094
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1095
    return-void

    .line 1076
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->unregisterAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 1077
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/q;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 1079
    :cond_2
    if-nez p3, :cond_0

    goto :goto_1

    .line 1086
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/u;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/q;->registerAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 1087
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/q;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 1090
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/p;->onAdapterChanged(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;)V

    goto :goto_3
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->stop()V

    .line 2138
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 2141
    :goto_0
    return-void

    .line 2139
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->stopSmoothScroller()V

    goto :goto_0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    .prologue
    .line 2239
    if-ltz p1, :cond_1

    .line 2242
    if-gtz p1, :cond_2

    .line 2247
    :goto_0
    if-ltz p2, :cond_3

    .line 2250
    if-gtz p2, :cond_4

    .line 2255
    :goto_1
    if-eqz p1, :cond_5

    .line 2256
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/f;->afw(Landroid/view/View;)V

    .line 2258
    :goto_2
    return-void

    .line 2240
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2241
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2243
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2244
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2248
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2251
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2255
    :cond_5
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .prologue
    .line 2541
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 2542
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2544
    :goto_0
    return-void

    .line 2541
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/p;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public addItemDecoration(Landroid/support/v7/widget/o;)V
    .locals 1

    .prologue
    .line 1470
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/o;I)V

    .line 1471
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/o;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1441
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 1445
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1448
    :goto_1
    if-ltz p2, :cond_2

    .line 1451
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1453
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1454
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1455
    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    goto :goto_1

    .line 1449
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/k;)V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1153
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1154
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    goto :goto_0
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 2677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1555
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1556
    return-void

    .line 1553
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    goto :goto_0
.end method

.method animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3885
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/b;->animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3889
    :goto_0
    return-void

    .line 3887
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3893
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    .line 3894
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/b;->animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3898
    :goto_0
    return-void

    .line 3896
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2628
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2636
    return-void

    .line 2629
    :cond_0
    if-eqz p1, :cond_1

    .line 2633
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2630
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2646
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2653
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-gtz v0, :cond_2

    .line 2661
    :goto_0
    return-void

    .line 2647
    :cond_0
    if-eqz p1, :cond_1

    .line 2651
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2648
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2654
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4196
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 4197
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    .line 4196
    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/b;->Ww(Landroid/support/v7/widget/j;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4022
    instance-of v1, p1, Landroid/support/v7/widget/i;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    check-cast p1, Landroid/support/v7/widget/i;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/p;->checkLayoutParams(Landroid/support/v7/widget/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4076
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Yt()I

    move-result v1

    .line 4077
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clearOldPositions()V

    .line 4084
    return-void

    .line 4078
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4079
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4077
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4080
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->clearOldPosition()V

    goto :goto_1
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1576
    :goto_0
    return-void

    .line 1574
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1828
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1831
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1829
    :cond_0
    return v0

    .line 1831
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeHorizontalScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1803
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1806
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1804
    :cond_0
    return v0

    .line 1806
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeHorizontalScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1851
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1854
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1852
    :cond_0
    return v0

    .line 1854
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeHorizontalScrollRange(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1900
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1903
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1901
    :cond_0
    return v0

    .line 1903
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeVerticalScrollExtent(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1876
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1879
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1877
    :cond_0
    return v0

    .line 1879
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeVerticalScrollOffset(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1923
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1926
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1924
    :cond_0
    return v0

    .line 1926
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->computeVerticalScrollRange(Landroid/support/v7/widget/e;)I

    move-result v0

    goto :goto_0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2217
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_4

    .line 2221
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_5

    .line 2225
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_6

    .line 2229
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_7

    .line 2233
    :cond_3
    :goto_3
    if-nez v0, :cond_8

    .line 2236
    :goto_4
    return-void

    .line 2217
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2218
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2219
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2221
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2222
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2223
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 2225
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2226
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2227
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2

    .line 2229
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2230
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2231
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3

    .line 2234
    :cond_8
    invoke-static {p0}, Landroid/support/v4/view/f;->afw(Landroid/view/View;)V

    goto :goto_4
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1667
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 1668
    :cond_0
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1670
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 1671
    return-void

    .line 1667
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    .line 1673
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->YV(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1697
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1702
    :goto_0
    return-void

    .line 1674
    :cond_3
    return-void

    .line 1679
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    const/16 v1, 0xb

    .line 1680
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->YV(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1682
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1684
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1685
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zd()V

    .line 1686
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_5

    .line 1694
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1695
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1696
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    goto :goto_0

    .line 1687
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1691
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zi()V

    goto :goto_1

    .line 1688
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_1

    .line 1698
    :cond_7
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1700
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 3

    .prologue
    .line 3153
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3154
    invoke-static {p0}, Landroid/support/v4/view/f;->afB(Landroid/view/View;)I

    move-result v1

    .line 3152
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v0

    .line 3156
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3157
    invoke-static {p0}, Landroid/support/v4/view/f;->afD(Landroid/view/View;)I

    move-result v2

    .line 3155
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v1

    .line 3159
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3160
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6909
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 6910
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6911
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6914
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 6920
    :cond_1
    return-void

    .line 6911
    :cond_2
    if-eqz v0, :cond_0

    .line 6912
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/q;->onViewAttachedToWindow(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6915
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6916
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 6917
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/k;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/k;->Xg(Landroid/view/View;)V

    .line 6916
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6895
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 6896
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6897
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6900
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 6906
    :cond_1
    return-void

    .line 6897
    :cond_2
    if-eqz v0, :cond_0

    .line 6898
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/q;->onViewDetachedFromWindow(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6901
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6902
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 6903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/k;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/k;->Xh(Landroid/view/View;)V

    .line 6902
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3374
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_1

    .line 3379
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_2

    .line 3384
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OU:Z

    .line 3385
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->OS:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 3389
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->Zb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3393
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3394
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3399
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3400
    return-void

    .line 3375
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    return-void

    .line 3380
    :cond_2
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    return-void

    .line 3386
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3388
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_0

    .line 3389
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 3390
    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 10892
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/d;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 10897
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/d;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 10880
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/d;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .prologue
    .line 10886
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/d;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 10867
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/d;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .prologue
    .line 10874
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/d;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 4709
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 4715
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    if-nez v0, :cond_2

    .line 4721
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 4726
    :cond_0
    return-void

    .line 4710
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->onScrollStateChanged(I)V

    goto :goto_0

    .line 4719
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/m;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_1

    .line 4722
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 4723
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/m;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4722
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .prologue
    .line 4669
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4672
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4673
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4674
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4677
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4681
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    if-nez v0, :cond_1

    .line 4684
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 4689
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4690
    return-void

    .line 4682
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/m;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 4685
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 4686
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/m;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4685
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 10792
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10793
    return-void

    .line 10780
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 10781
    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 10779
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10781
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10784
    iget v2, v0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10785
    if-eq v2, v4, :cond_1

    .line 10787
    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Landroid/support/v4/view/f;->afA(Landroid/view/View;I)V

    .line 10788
    iput v4, v0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    goto :goto_1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1294
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1295
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1287
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3951
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3954
    :goto_0
    if-lt v3, v4, :cond_6

    .line 3960
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_7

    :cond_0
    move v0, v1

    .line 3968
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_b

    .line 3976
    :cond_1
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_f

    .line 3985
    :cond_2
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_13

    .line 4000
    :cond_3
    :goto_4
    if-eqz v0, :cond_17

    :cond_4
    move v2, v0

    .line 4005
    :cond_5
    :goto_5
    if-nez v2, :cond_18

    .line 4008
    :goto_6
    return-void

    .line 3955
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/o;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 3954
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3960
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3962
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_9

    move v0, v1

    .line 3963
    :goto_7
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3964
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3965
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_a

    :cond_8
    move v0, v1

    .line 3966
    :goto_8
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 3962
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_7

    .line 3965
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    .line 3968
    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3969
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3970
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v3, :cond_d

    .line 3973
    :goto_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_e

    :cond_c
    move v3, v1

    :goto_a
    or-int/2addr v0, v3

    .line 3974
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 3971
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 3973
    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_a

    .line 3976
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3977
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3978
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3979
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v3, :cond_11

    move v3, v1

    .line 3980
    :goto_b
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3981
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3982
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_12

    :cond_10
    move v3, v1

    :goto_c
    or-int/2addr v0, v3

    .line 3983
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_3

    .line 3979
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    goto :goto_b

    .line 3982
    :cond_12
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_c

    .line 3985
    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3986
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3987
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3988
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v4, :cond_15

    .line 3991
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3993
    :goto_d
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_16

    :cond_14
    :goto_e
    or-int/2addr v0, v1

    .line 3994
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    .line 3989
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_d

    .line 3993
    :cond_16
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v2

    goto :goto_e

    .line 4000
    :cond_17
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 4001
    invoke-virtual {v1}, Landroid/support/v7/widget/b;->WD()Z

    move-result v1

    if-nez v1, :cond_5

    move v2, v0

    goto/16 :goto_5

    .line 4006
    :cond_18
    invoke-static {p0}, Landroid/support/v4/view/f;->afw(Landroid/view/View;)V

    goto/16 :goto_6
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 4545
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1931
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1932
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1935
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1933
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2304
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2305
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2311
    :goto_0
    return-void

    .line 2302
    :cond_0
    return-void

    .line 2306
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2307
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2306
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2261
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2264
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2265
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2269
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2271
    :goto_0
    return-void

    .line 2262
    :cond_0
    return-void

    .line 2266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2267
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2266
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2277
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2278
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2282
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2284
    :goto_0
    return-void

    .line 2275
    :cond_0
    return-void

    .line 2279
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2280
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2279
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2290
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2291
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2295
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2298
    :goto_0
    return-void

    .line 2288
    :cond_0
    return-void

    .line 2292
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2293
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2292
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .prologue
    .line 4528
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    .line 4529
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 4540
    const/4 v0, 0x0

    return-object v0

    .line 4530
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4531
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 4532
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 4533
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 4534
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 4535
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 4536
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 4537
    return-object v1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4312
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, p1

    .line 4313
    :goto_0
    if-nez v0, :cond_1

    .line 4317
    :cond_0
    if-eq v0, p0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    .line 4313
    :cond_1
    if-eq v0, p0, :cond_0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4314
    check-cast v0, Landroid/view/View;

    .line 4315
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 4317
    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4330
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 4331
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/j;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4441
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v2, :cond_0

    .line 4444
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Yt()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4447
    :goto_0
    if-lt v2, v3, :cond_1

    .line 4458
    return-object v0

    .line 4442
    :cond_0
    return-object v1

    .line 4448
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4449
    if-nez v1, :cond_3

    .line 4447
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4449
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4450
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/j;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4451
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4454
    return-object v1

    :cond_4
    move-object v0, v1

    .line 4452
    goto :goto_1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/j;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4502
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v2, :cond_1

    .line 4503
    :cond_0
    return-object v1

    .line 4502
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4505
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Yt()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4507
    :goto_0
    if-lt v2, v3, :cond_2

    .line 4517
    return-object v0

    .line 4508
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4509
    if-nez v1, :cond_4

    .line 4507
    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4509
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4510
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4513
    return-object v1

    :cond_5
    move-object v0, v1

    .line 4511
    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 4420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 4397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4462
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Yt()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4464
    :goto_0
    if-lt v2, v3, :cond_0

    .line 4484
    return-object v0

    .line 4465
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4466
    if-nez v1, :cond_2

    .line 4464
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4466
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4467
    if-nez p2, :cond_3

    .line 4471
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 4474
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Yq(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4477
    return-object v1

    .line 4468
    :cond_3
    iget v4, v1, Landroid/support/v7/widget/j;->mPosition:I

    if-ne v4, p1, :cond_1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 4475
    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    .line 2079
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_5

    .line 2083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v3

    .line 2084
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v4

    .line 2086
    if-nez v3, :cond_6

    :cond_0
    move p1, v1

    .line 2089
    :goto_0
    if-nez v4, :cond_7

    :cond_1
    move p2, v1

    .line 2092
    :goto_1
    if-eqz p1, :cond_8

    .line 2097
    :cond_2
    int-to-float v0, p1

    int-to-float v5, p2

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2121
    :cond_3
    return v1

    .line 2075
    :cond_4
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    return v1

    .line 2080
    :cond_5
    return v1

    .line 2086
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-lt v0, v5, :cond_0

    goto :goto_0

    .line 2089
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-lt v0, v5, :cond_1

    goto :goto_1

    .line 2092
    :cond_8
    if-nez p2, :cond_2

    .line 2094
    return v1

    .line 2098
    :cond_9
    if-eqz v3, :cond_c

    :cond_a
    move v0, v2

    .line 2099
    :goto_2
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2101
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    if-nez v5, :cond_d

    .line 2105
    :cond_b
    if-eqz v0, :cond_3

    .line 2107
    if-nez v3, :cond_e

    move v0, v1

    .line 2110
    :goto_3
    if-nez v4, :cond_f

    .line 2113
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2115
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2116
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2117
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/v;->fling(II)V

    .line 2118
    return v2

    .line 2098
    :cond_c
    if-nez v4, :cond_a

    move v0, v1

    goto :goto_2

    .line 2101
    :cond_d
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/d;->WI(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2102
    return v2

    :cond_e
    move v0, v2

    .line 2108
    goto :goto_3

    .line 2111
    :cond_f
    or-int/lit8 v0, v0, 0x2

    goto :goto_4
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2349
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2350
    if-nez v0, :cond_4

    .line 2353
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_5

    :cond_0
    move v0, v2

    .line 2356
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2357
    if-nez v0, :cond_6

    .line 2396
    :goto_1
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2397
    if-eqz v1, :cond_16

    :cond_1
    move-object v0, v1

    .line 2409
    :goto_2
    if-nez v0, :cond_18

    .line 2422
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2423
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_3
    return-object v0

    .line 2351
    :cond_4
    return-object v0

    .line 2353
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 2354
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2357
    :cond_6
    if-ne p2, v7, :cond_a

    .line 2362
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 2372
    :goto_3
    if-eqz v0, :cond_f

    :cond_8
    move v1, v0

    .line 2383
    :cond_9
    :goto_4
    if-nez v1, :cond_14

    .line 2394
    :goto_5
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 2357
    :cond_a
    if-eq p2, v1, :cond_7

    goto :goto_1

    .line 2363
    :cond_b
    if-eq p2, v7, :cond_c

    const/16 v0, 0x21

    .line 2365
    :goto_6
    invoke-virtual {v4, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2366
    if-eqz v3, :cond_d

    move v3, v2

    .line 2367
    :goto_7
    sget-boolean v5, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-nez v5, :cond_e

    move v0, v3

    goto :goto_3

    .line 2363
    :cond_c
    const/16 v0, 0x82

    goto :goto_6

    :cond_d
    move v3, v1

    .line 2366
    goto :goto_7

    :cond_e
    move p2, v0

    move v0, v3

    .line 2369
    goto :goto_3

    .line 2372
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2373
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v0

    if-eq v0, v1, :cond_11

    move v0, v2

    .line 2374
    :goto_8
    if-eq p2, v7, :cond_12

    move v3, v2

    :goto_9
    xor-int/2addr v0, v3

    if-nez v0, :cond_13

    const/16 v0, 0x11

    .line 2376
    :goto_a
    invoke-virtual {v4, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2377
    if-eqz v3, :cond_10

    move v1, v2

    .line 2378
    :cond_10
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v3, :cond_9

    move p2, v0

    .line 2380
    goto :goto_4

    :cond_11
    move v0, v1

    .line 2373
    goto :goto_8

    :cond_12
    move v3, v1

    .line 2374
    goto :goto_9

    :cond_13
    const/16 v0, 0x42

    goto :goto_a

    .line 2384
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2385
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2386
    if-eqz v0, :cond_15

    .line 2390
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2391
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/p;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    .line 2392
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_5

    .line 2388
    :cond_15
    return-object v6

    .line 2397
    :cond_16
    if-eqz v0, :cond_1

    .line 2398
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2399
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2400
    if-eqz v0, :cond_17

    .line 2404
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2405
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/p;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    .line 2406
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto/16 :goto_2

    .line 2402
    :cond_17
    return-object v6

    .line 2409
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2410
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2419
    invoke-direct {p0, v0, v6}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2420
    return-object p1

    .line 2413
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 4027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4030
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->generateDefaultLayoutParams()Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4028
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 4035
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4038
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/p;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4036
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 4043
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4046
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4044
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Landroid/support/v7/widget/q;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/j;)I
    .locals 2

    .prologue
    .line 10796
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10799
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 10798
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10801
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    iget v1, p1, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->Zj(I)I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 1134
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 1132
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/j;)J
    .locals 2

    .prologue
    .line 3880
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/support/v7/widget/j;->mPosition:I

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 4358
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 4359
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 12676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    .line 12679
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/a;->Wn(II)I

    move-result v0

    return v0

    .line 12677
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 4384
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v2, :cond_1

    .line 4385
    :cond_0
    return-wide v0

    .line 4384
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4387
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4388
    if-nez v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 4373
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 4374
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 4348
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 3

    .prologue
    .line 4289
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4290
    if-nez v0, :cond_1

    .line 4294
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0

    .line 4290
    :cond_1
    if-eq v0, p0, :cond_0

    .line 4291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClipToPadding()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/z;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 4607
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4608
    return-void
.end method

.method public getItemAnimator()Landroid/support/v7/widget/b;
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 4620
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 4621
    iget-boolean v1, v0, Landroid/support/v7/widget/i;->Pb:Z

    if-eqz v1, :cond_0

    .line 4625
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->WN()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4629
    :goto_0
    iget-object v4, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 4630
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4631
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 4632
    :goto_1
    if-lt v2, v5, :cond_4

    .line 4640
    iput-boolean v3, v0, Landroid/support/v7/widget/i;->Pb:Z

    .line 4641
    return-object v4

    .line 4622
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    return-object v0

    .line 4625
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xe()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4627
    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    return-object v0

    .line 4625
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Xc()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 4633
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4634
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/o;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/o;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 4635
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 4636
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 4637
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 4638
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 4632
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getItemDecorationAt(I)Landroid/support/v7/widget/o;
    .locals 1

    .prologue
    .line 1480
    if-gez p1, :cond_1

    .line 1481
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1480
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1484
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 2159
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 2149
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .prologue
    .line 5281
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_0

    .line 5284
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5282
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/d;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 4261
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/t;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 10856
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/d;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .prologue
    .line 10861
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/d;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4742
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v1, :cond_1

    .line 4743
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4742
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    .line 4743
    invoke-virtual {v1}, Landroid/support/v7/widget/C;->Zn()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 847
    new-instance v0, Landroid/support/v7/widget/C;

    new-instance v1, Landroid/support/v7/widget/aH;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aH;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/C;-><init>(Landroid/support/v7/widget/am;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    .line 927
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    .line 10808
    if-nez p1, :cond_1

    .line 10810
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to set fast scroller without both required drawables."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10808
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 10814
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10815
    new-instance v0, Landroid/support/v7/widget/FastScroller;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 10817
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 10818
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    .line 10819
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 10820
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2314
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2315
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 4238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4241
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 4245
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4246
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4247
    return-void

    .line 4239
    :cond_0
    return-void

    .line 4242
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3217
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4058
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v1}, Landroid/support/v7/widget/b;->WD()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2617
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3251
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 2019
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 10831
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/d;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->scrollToPosition(I)V

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1606
    return-void

    .line 1602
    :cond_0
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .prologue
    .line 3941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Yt()I

    move-result v2

    .line 3942
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 3946
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->markItemDecorInsetsDirty()V

    .line 3947
    return-void

    .line 3943
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v0

    .line 3944
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/i;->Pb:Z

    .line 3942
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4222
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Yt()I

    move-result v1

    .line 4223
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4229
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->markKnownViewsInvalid()V

    .line 4231
    return-void

    .line 4224
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4225
    if-nez v2, :cond_2

    .line 4223
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4225
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4226
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    goto :goto_1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .prologue
    .line 4593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 4594
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 4597
    return-void

    .line 4595
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .prologue
    .line 4555
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 4556
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 4559
    return-void

    .line 4557
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Yt()I

    move-result v2

    move v0, v1

    .line 4122
    :goto_0
    if-lt v0, v2, :cond_0

    .line 4133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->offsetPositionRecordsForInsert(II)V

    .line 4134
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4135
    return-void

    .line 4123
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 4124
    if-nez v3, :cond_2

    .line 4122
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4124
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4129
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4130
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/e;->OP:Z

    goto :goto_1
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 4087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Yt()I

    move-result v6

    .line 4089
    if-lt p1, p2, :cond_0

    move v0, v1

    move v2, p1

    move v3, p2

    :goto_0
    move v4, v5

    .line 4099
    :goto_1
    if-lt v4, v6, :cond_1

    .line 4116
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->offsetPositionRecordsForMove(II)V

    .line 4117
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4118
    return-void

    .line 4092
    :cond_0
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    goto :goto_0

    .line 4100
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v7

    .line 4101
    if-nez v7, :cond_3

    .line 4099
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4101
    :cond_3
    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v8, v3, :cond_2

    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-gt v8, v2, :cond_2

    .line 4108
    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-eq v8, p1, :cond_4

    .line 4111
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4114
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v7, Landroid/support/v7/widget/e;->OP:Z

    goto :goto_2

    .line 4109
    :cond_4
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    goto :goto_3
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 4139
    add-int v1, p1, p2

    .line 4140
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Yt()I

    move-result v2

    .line 4141
    :goto_0
    if-lt v0, v2, :cond_0

    .line 4163
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/s;->offsetPositionRecordsForRemove(IIZ)V

    .line 4164
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4165
    return-void

    .line 4142
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 4143
    if-nez v3, :cond_2

    .line 4141
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4143
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4144
    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v4, v1, :cond_3

    .line 4152
    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4157
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/j;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4159
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v6, v3, Landroid/support/v7/widget/e;->OP:Z

    goto :goto_1

    .line 4150
    :cond_3
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4151
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v6, v3, Landroid/support/v7/widget/e;->OP:Z

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2558
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2559
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2560
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2561
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2562
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 2565
    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2567
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_3

    .line 2588
    :goto_2
    return-void

    .line 2561
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2563
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 2569
    :cond_3
    sget-object v0, Landroid/support/v7/widget/D;->PN:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/D;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    .line 2570
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    if-eqz v0, :cond_4

    .line 2586
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/D;->Zy(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 2571
    :cond_4
    new-instance v0, Landroid/support/v7/widget/D;

    invoke-direct {v0}, Landroid/support/v7/widget/D;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    .line 2575
    invoke-static {p0}, Landroid/support/v4/view/f;->afH(Landroid/view/View;)Landroid/view/Display;

    move-result-object v1

    .line 2576
    const/high16 v0, 0x42700000    # 60.0f

    .line 2577
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2583
    :cond_5
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v2, v0

    float-to-long v2, v0

    iput-wide v2, v1, Landroid/support/v7/widget/D;->PL:J

    .line 2584
    sget-object v0, Landroid/support/v7/widget/D;->PN:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 2577
    :cond_6
    if-eqz v1, :cond_5

    .line 2578
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2579
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    move v0, v1

    .line 2580
    goto :goto_4
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4572
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4584
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2592
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 2596
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2597
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2598
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 2601
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->YR()V

    .line 2605
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_2

    .line 2610
    :goto_2
    return-void

    .line 2594
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->WG()V

    goto :goto_0

    .line 2599
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/p;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    goto :goto_1

    .line 2607
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/D;->Zq(Landroid/support/v7/widget/RecyclerView;)V

    .line 2608
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    goto :goto_2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 4012
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4014
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4015
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 4018
    return-void

    .line 4016
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/o;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 4015
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3194
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3195
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 3199
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3202
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3203
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 3214
    :cond_0
    :goto_0
    return-void

    .line 3208
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3209
    if-eqz p1, :cond_0

    .line 3210
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3211
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 3028
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    .line 3031
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 3070
    :cond_0
    :goto_0
    return v4

    .line 3026
    :cond_1
    return v4

    .line 3029
    :cond_2
    return v4

    .line 3033
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 3046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    move v0, v1

    move v2, v1

    .line 3065
    :goto_1
    cmpl-float v3, v2, v1

    if-nez v3, :cond_4

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 3066
    :cond_4
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3034
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 3041
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 3044
    goto :goto_1

    .line 3037
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_2

    .line 3042
    :cond_7
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    .line 3047
    :cond_8
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3048
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3053
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    move v2, v1

    .line 3058
    goto :goto_1

    .line 3051
    :cond_9
    neg-float v0, v0

    move v2, v0

    move v0, v1

    .line 3052
    goto :goto_1

    :cond_a
    move v2, v1

    .line 3055
    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2742
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    .line 2747
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_3

    .line 2756
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v0

    .line 2757
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v3

    .line 2759
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4

    .line 2762
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 2765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2767
    packed-switch v4, :pswitch_data_0

    .line 2841
    :cond_0
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v0, v2, :cond_e

    move v0, v1

    :goto_2
    return v0

    .line 2745
    :cond_1
    return v1

    .line 2748
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2749
    return v2

    .line 2753
    :cond_3
    return v1

    .line 2760
    :cond_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2769
    :pswitch_1
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-nez v4, :cond_5

    .line 2772
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2774
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2776
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 2782
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v5, v2

    aput v1, v4, v1

    .line 2785
    if-nez v0, :cond_7

    move v0, v1

    .line 2788
    :goto_5
    if-nez v3, :cond_8

    .line 2791
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    goto :goto_1

    .line 2770
    :cond_5
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    goto :goto_3

    .line 2777
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2778
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_4

    :cond_7
    move v0, v2

    .line 2786
    goto :goto_5

    .line 2789
    :cond_8
    or-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 2795
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2796
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2797
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 2801
    :pswitch_3
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2802
    if-ltz v4, :cond_b

    .line 2808
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 2809
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 2810
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v6, v2, :cond_0

    .line 2811
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v6, v5, v6

    .line 2812
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v7, v4, v7

    .line 2814
    if-nez v0, :cond_c

    :cond_9
    move v0, v1

    .line 2818
    :goto_7
    if-nez v3, :cond_d

    .line 2822
    :cond_a
    :goto_8
    if-eqz v0, :cond_0

    .line 2823
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2803
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "RecyclerView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    return v1

    .line 2814
    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v6, :cond_9

    .line 2815
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    .line 2816
    goto :goto_7

    .line 2818
    :cond_d
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v5, :cond_a

    .line 2819
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    .line 2820
    goto :goto_8

    .line 2829
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2833
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2834
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_1

    .line 2838
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 2841
    goto/16 :goto_2

    .line 2767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 3925
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3927
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 3928
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3929
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3075
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v2, :cond_1

    .line 3079
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v2, v2, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    if-nez v2, :cond_2

    .line 3112
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-nez v2, :cond_8

    .line 3117
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-nez v2, :cond_9

    .line 3134
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_b

    .line 3137
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v0, v1, Landroid/support/v7/widget/e;->OR:I

    .line 3139
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3140
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3141
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3142
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v1, Landroid/support/v7/widget/e;->OO:Z

    .line 3144
    :cond_0
    :goto_2
    return-void

    .line 3076
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3077
    return-void

    .line 3080
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 3081
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3082
    if-eq v2, v5, :cond_5

    .line 3084
    :cond_3
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3085
    if-eqz v0, :cond_6

    .line 3086
    :cond_4
    return-void

    .line 3082
    :cond_5
    if-ne v3, v5, :cond_3

    move v0, v1

    goto :goto_3

    .line 3085
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_4

    .line 3088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->OS:I

    if-eq v0, v1, :cond_7

    .line 3093
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 3094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OU:Z

    .line 3095
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3098
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimensionFromChildren(II)V

    .line 3102
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 3104
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3105
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3103
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 3106
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->OU:Z

    .line 3107
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimensionFromChildren(II)V

    goto :goto_2

    .line 3089
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    goto :goto_4

    .line 3113
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3114
    return-void

    .line 3118
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3119
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3120
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3121
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3123
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v2, v2, Landroid/support/v7/widget/e;->OT:Z

    if-nez v2, :cond_a

    .line 3127
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v1}, Landroid/support/v7/widget/C;->Zo()V

    .line 3128
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v1, Landroid/support/v7/widget/e;->OO:Z

    .line 3130
    :goto_5
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3131
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto/16 :goto_0

    .line 3124
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->OO:Z

    goto :goto_5

    .line 3135
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/e;->OR:I

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2548
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2553
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 2551
    :cond_0
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1269
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_1

    .line 1274
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->afq()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1271
    return-void

    .line 1276
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->OV:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->OV:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1255
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1256
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v1, :cond_0

    .line 1258
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_1

    .line 1261
    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->OV:Landroid/os/Parcelable;

    .line 1264
    :goto_0
    return-object v0

    .line 1257
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->WP(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->OV:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 4704
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .prologue
    .line 4666
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 3164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3165
    if-eq p1, p3, :cond_1

    .line 3166
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 3169
    :goto_0
    return-void

    .line 3165
    :cond_1
    if-ne p2, p4, :cond_0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2856
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 2857
    :cond_0
    return v5

    .line 2856
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-nez v0, :cond_0

    .line 2859
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2864
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    .line 2868
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v7

    .line 2869
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v8

    .line 2871
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 2876
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2880
    if-eqz v0, :cond_6

    .line 2883
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2885
    packed-switch v0, :pswitch_data_0

    .line 2991
    :cond_2
    :goto_2
    :pswitch_0
    if-eqz v5, :cond_1c

    .line 2994
    :goto_3
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 2996
    return v6

    .line 2860
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2861
    return v6

    .line 2865
    :cond_4
    return v5

    .line 2872
    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2881
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v5, v4, v6

    aput v5, v3, v5

    goto :goto_1

    .line 2887
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2892
    if-nez v7, :cond_7

    move v0, v5

    .line 2895
    :goto_4
    if-nez v8, :cond_8

    .line 2898
    :goto_5
    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    goto :goto_2

    :cond_7
    move v0, v6

    .line 2893
    goto :goto_4

    .line 2896
    :cond_8
    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 2902
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2903
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2904
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_2

    .line 2908
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2909
    if-ltz v0, :cond_b

    .line 2915
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v11

    float-to-int v10, v1

    .line 2916
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v11, v0

    .line 2917
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int v1, v0, v10

    .line 2918
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v2, v0, v11

    .line 2920
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2929
    :goto_6
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v6, :cond_d

    .line 2952
    :cond_9
    :goto_7
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v6, :cond_2

    .line 2953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v5

    sub-int v0, v10, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    sub-int v0, v11, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2956
    if-nez v7, :cond_14

    move v3, v5

    :goto_8
    if-nez v8, :cond_15

    move v0, v5

    :goto_9
    invoke-virtual {p0, v3, v0, v9}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2962
    :goto_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_17

    .line 2963
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/D;->Zw(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_2

    .line 2910
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    return v5

    .line 2921
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v5

    sub-int/2addr v1, v0

    .line 2922
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v6

    sub-int/2addr v2, v0

    .line 2923
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v9, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2925
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 2926
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    goto/16 :goto_6

    .line 2931
    :cond_d
    if-nez v7, :cond_10

    :cond_e
    move v0, v5

    .line 2939
    :goto_b
    if-nez v8, :cond_12

    .line 2947
    :cond_f
    :goto_c
    if-eqz v0, :cond_9

    .line 2948
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_7

    .line 2931
    :cond_10
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v3, :cond_e

    .line 2932
    if-gtz v1, :cond_11

    .line 2935
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v1

    :goto_d
    move v1, v0

    move v0, v6

    .line 2937
    goto :goto_b

    .line 2933
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int v0, v1, v0

    goto :goto_d

    .line 2939
    :cond_12
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_f

    .line 2940
    if-gtz v2, :cond_13

    .line 2943
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v2

    :goto_e
    move v2, v0

    move v0, v6

    .line 2945
    goto :goto_c

    .line 2941
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int v0, v2, v0

    goto :goto_e

    :cond_14
    move v3, v1

    .line 2956
    goto/16 :goto_8

    :cond_15
    move v0, v2

    goto/16 :goto_9

    .line 2960
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_a

    .line 2962
    :cond_17
    if-nez v2, :cond_a

    goto/16 :goto_2

    .line 2969
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2973
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2975
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2976
    if-nez v7, :cond_19

    move v0, v1

    .line 2978
    :goto_f
    if-nez v8, :cond_1a

    move v2, v1

    .line 2980
    :goto_10
    cmpl-float v3, v0, v1

    if-nez v3, :cond_18

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1b

    :cond_18
    float-to-int v0, v0

    float-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2983
    :goto_11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    move v5, v6

    .line 2984
    goto/16 :goto_2

    .line 2976
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2977
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_f

    .line 2978
    :cond_1a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2979
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_10

    .line 2981
    :cond_1b
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_11

    .line 2987
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 2992
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .prologue
    .line 3303
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-eqz v0, :cond_1

    .line 3307
    :cond_0
    :goto_0
    return-void

    .line 3303
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->afE(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3305
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    goto :goto_0
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3813
    const/16 v0, 0x2000

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 3814
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->OK:Z

    if-nez v0, :cond_1

    .line 3819
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/B;->YI(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3820
    return-void

    .line 3814
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3815
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3816
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v0

    .line 3817
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/B;->YL(JLandroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method removeAndRecycleViews()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 1061
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1062
    return-void

    .line 1050
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->WG()V

    goto :goto_0

    .line 1057
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 1058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    goto :goto_1
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1326
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1327
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/A;->Yw(Landroid/view/View;)Z

    move-result v1

    .line 1328
    if-nez v1, :cond_0

    .line 1337
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1338
    return v1

    .line 1329
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 1330
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/s;->Xy(Landroid/support/v7/widget/j;)V

    .line 1331
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/s;->XI(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 1337
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 3856
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 3857
    if-nez v0, :cond_1

    .line 3869
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3871
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3872
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3873
    return-void

    .line 3858
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3860
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3861
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3859
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearTmpDetachFlag()V

    goto :goto_0
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/o;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1497
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_0

    .line 1501
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1502
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1505
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1506
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1507
    return-void

    .line 1498
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    const-string/jumbo v2, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0

    .line 1503
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/k;)V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1166
    return-void

    .line 1163
    :cond_0
    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 2686
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2687
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    if-eq v0, p1, :cond_0

    .line 2690
    :goto_0
    return-void

    .line 2688
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    goto :goto_0
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1567
    :goto_0
    return-void

    .line 1565
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method repositionShadowingViews()V
    .locals 7

    .prologue
    .line 4989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 4990
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 5004
    return-void

    .line 4991
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4992
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 4993
    if-nez v3, :cond_2

    .line 4990
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4993
    :cond_2
    iget-object v4, v3, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    if-eqz v4, :cond_1

    .line 4994
    iget-object v3, v3, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    iget-object v3, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 4995
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 4996
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 4997
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 4999
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5000
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 4998
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 4997
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v2, v5, :cond_3

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/p;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2494
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2495
    return-void

    .line 2491
    :cond_1
    if-eqz p2, :cond_0

    .line 2492
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/p;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .prologue
    .line 2846
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2847
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 2851
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2852
    return-void

    .line 2848
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2849
    invoke-interface {v0, p1}, Landroid/support/v7/widget/n;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3933
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-eqz v0, :cond_1

    .line 3936
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3938
    :goto_0
    return-void

    .line 3933
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3934
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1938
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-lt v0, v2, :cond_1

    .line 1945
    :goto_0
    if-eqz p1, :cond_2

    .line 1956
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-eq v0, v2, :cond_3

    .line 1966
    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1967
    return-void

    .line 1943
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    goto :goto_0

    .line 1954
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_1

    .line 1958
    :cond_3
    if-nez p1, :cond_5

    .line 1962
    :cond_4
    :goto_3
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1963
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_2

    .line 1958
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_4

    .line 1960
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_3
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4062
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Yt()I

    move-result v1

    .line 4063
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4073
    return-void

    .line 4064
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4069
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4063
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4070
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->saveOldPosition()V

    goto :goto_1
.end method

.method public scrollBy(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1643
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_3

    .line 1648
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_4

    .line 1651
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    .line 1652
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v2

    .line 1653
    if-eqz v1, :cond_5

    .line 1654
    :cond_0
    if-nez v1, :cond_1

    move p1, v0

    :cond_1
    if-nez v2, :cond_2

    move p2, v0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1656
    :goto_0
    return-void

    .line 1644
    :cond_3
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    return-void

    .line 1649
    :cond_4
    return-void

    .line 1653
    :cond_5
    if-nez v2, :cond_0

    goto :goto_0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1736
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_2

    move v2, v6

    move v1, v6

    move v4, v6

    move v3, v6

    .line 1754
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1758
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1768
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    .line 1774
    :goto_2
    if-eqz v1, :cond_b

    .line 1775
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1777
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1780
    :goto_4
    if-eqz v1, :cond_d

    :cond_1
    move v6, v7

    :goto_5
    return v6

    .line 1738
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1739
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1740
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/c;->ari(Ljava/lang/String;)V

    .line 1741
    if-nez p1, :cond_3

    move v2, v6

    move v3, v6

    .line 1745
    :goto_6
    if-nez p2, :cond_4

    move v0, v6

    move v1, v6

    .line 1749
    :goto_7
    invoke-static {}, Landroid/support/v4/os/c;->arh()V

    .line 1750
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1751
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1752
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    move v4, v1

    move v1, v2

    move v2, v0

    goto :goto_0

    .line 1742
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/p;->scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v2

    .line 1743
    sub-int v3, p1, v2

    goto :goto_6

    .line 1746
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/v7/widget/p;->scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 1747
    sub-int v1, p2, v0

    goto :goto_7

    .line 1755
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 1761
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1762
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1763
    if-nez p3, :cond_7

    .line 1766
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 1767
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    goto :goto_2

    .line 1764
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_8

    .line 1769
    :cond_8
    if-nez p3, :cond_a

    .line 1772
    :cond_9
    :goto_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto/16 :goto_2

    .line 1769
    :cond_a
    const/16 v0, 0x2002

    invoke-static {p3, v0}, Landroid/support/v4/view/x;->agm(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1770
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    goto :goto_9

    .line 1774
    :cond_b
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1778
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_4

    .line 1780
    :cond_d
    if-nez v2, :cond_1

    goto/16 :goto_5
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 1637
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .prologue
    .line 1587
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->scrollToPosition(I)V

    .line 1597
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1598
    return-void

    .line 1588
    :cond_0
    return-void

    .line 1592
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3283
    return-void

    .line 3280
    :cond_0
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/z;)V
    .locals 1

    .prologue
    .line 653
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->aft(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 655
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/q;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1039
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1040
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V

    .line 1041
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1042
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/a;)V
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-eq p1, v0, :cond_0

    .line 1525
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    .line 1526
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1527
    return-void

    .line 1523
    :cond_0
    return-void

    .line 1526
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/j;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10769
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10774
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/f;->afA(Landroid/view/View;I)V

    .line 10775
    const/4 v0, 0x1

    return v0

    .line 10770
    :cond_0
    iput p2, p1, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10772
    return v1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-ne p1, v0, :cond_0

    .line 957
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 958
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 959
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 962
    :goto_1
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    goto :goto_0

    .line 960
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1
.end method

.method setDataSetChangedAfterLayout()V
    .locals 1

    .prologue
    .line 4213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4214
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4215
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 941
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 942
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3183
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 3187
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 3188
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_1

    .line 3191
    :goto_1
    return-void

    .line 3184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->WG()V

    .line 3185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Ws(Landroid/support/v7/widget/x;)V

    goto :goto_0

    .line 3189
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Ws(Landroid/support/v7/widget/x;)V

    goto :goto_1
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->Xt(I)V

    .line 1399
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1992
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-ne p1, v0, :cond_0

    .line 2010
    :goto_0
    return-void

    .line 1993
    :cond_0
    const-string/jumbo v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1994
    if-eqz p1, :cond_1

    .line 2001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2002
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2004
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2005
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2006
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2007
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0

    .line 1995
    :cond_1
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1996
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1999
    :cond_2
    :goto_1
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 1996
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_2

    .line 1997
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1
.end method

.method public setLayoutManager(Landroid/support/v7/widget/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1191
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eq p1, v0, :cond_1

    .line 1194
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1197
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 1212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1215
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->YB()V

    .line 1216
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 1217
    if-nez p1, :cond_5

    .line 1227
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->Xv()V

    .line 1228
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1229
    return-void

    .line 1192
    :cond_1
    return-void

    .line 1199
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_3

    .line 1202
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 1203
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    .line 1204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1206
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_4

    .line 1209
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/p;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1210
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    goto :goto_0

    .line 1200
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->WG()V

    goto :goto_2

    .line 1207
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/p;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    goto :goto_3

    .line 1218
    :cond_5
    iget-object v0, p1, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1222
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1223
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 1219
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 10826
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/d;->setNestedScrollingEnabled(Z)V

    .line 10827
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/d;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    .line 1241
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 0

    .prologue
    .line 1539
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    .line 1540
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .prologue
    .line 4279
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4280
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/t;)V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->setRecycledViewPool(Landroid/support/v7/widget/t;)V

    .line 1373
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/l;)V
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    .line 1119
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 1419
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1420
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1423
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1424
    return-void

    .line 1413
    :cond_0
    return-void

    .line 1421
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    goto :goto_0
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .prologue
    .line 991
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 992
    packed-switch p1, :pswitch_data_0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 1005
    :goto_0
    return-void

    .line 1002
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 992
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/r;)V
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->setViewCacheExtension(Landroid/support/v7/widget/r;)V

    .line 1384
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3263
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3274
    return v1

    .line 3265
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 3268
    :goto_0
    if-eqz v0, :cond_2

    .line 3271
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3272
    const/4 v0, 0x1

    return v0

    .line 3266
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/a/r;->aeX(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3269
    goto :goto_1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .prologue
    .line 2029
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2030
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2041
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_1

    .line 2046
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_2

    .line 2049
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2052
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2055
    :goto_1
    if-eqz p1, :cond_5

    .line 2056
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/v;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2058
    :goto_2
    return-void

    .line 2042
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    return-void

    .line 2047
    :cond_2
    return-void

    :cond_3
    move p1, v0

    .line 2050
    goto :goto_0

    :cond_4
    move p2, v0

    .line 2053
    goto :goto_1

    .line 2055
    :cond_5
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .prologue
    .line 1624
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1627
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 1632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/p;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;I)V

    .line 1633
    return-void

    .line 1625
    :cond_0
    return-void

    .line 1628
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 10836
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/d;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .prologue
    .line 10841
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/d;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 10846
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/d;->stopNestedScroll()V

    .line 10847
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .prologue
    .line 10851
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/d;->stopNestedScroll(I)V

    .line 10852
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 2129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2130
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 2131
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1024
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V

    .line 1025
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1027
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4174
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Yt()I

    move-result v2

    .line 4175
    add-int v3, p1, p2

    move v1, v0

    .line 4177
    :goto_0
    if-lt v1, v2, :cond_0

    .line 4192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->Xx(II)V

    .line 4193
    return-void

    .line 4178
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/A;->Yp(I)Landroid/view/View;

    move-result-object v0

    .line 4179
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v4

    .line 4180
    if-nez v4, :cond_2

    .line 4177
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4180
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4183
    iget v5, v4, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v5, v3, :cond_1

    .line 4186
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 4187
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/j;->addChangePayload(Ljava/lang/Object;)V

    .line 4189
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/i;->Pb:Z

    goto :goto_1
.end method
