.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/b;


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

.field private mScrollingChildHelper:Landroid/support/v4/view/a;

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
    invoke-static {v0, p1}, Landroid/support/v4/view/y;->ahw(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 578
    invoke-static {v0, p1}, Landroid/support/v4/view/y;->ahx(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

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

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Xq(Landroid/support/v7/widget/x;)V

    .line 584
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 585
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 587
    invoke-static {p0}, Landroid/support/v4/view/f;->agA(Landroid/view/View;)I

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
    invoke-static {p0, v6}, Landroid/support/v4/view/f;->agC(Landroid/view/View;I)V

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

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
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

    .line 1318
    iget-object v2, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 1319
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 1320
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/s;->Yy(Landroid/support/v7/widget/j;)V

    .line 1321
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1324
    if-eqz v0, :cond_2

    .line 1327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/A;->ZE(Landroid/view/View;)V

    .line 1329
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1319
    goto :goto_0

    .line 1323
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/support/v7/widget/A;->ZA(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    .line 1325
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/A;->Zu(Landroid/view/View;Z)V

    goto :goto_1
.end method

.method private animateChange(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3940
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3941
    if-nez p5, :cond_0

    .line 3944
    :goto_0
    if-ne p1, p2, :cond_1

    .line 3955
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/b;->XD(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3958
    :goto_2
    return-void

    .line 3942
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 3945
    :cond_1
    if-nez p6, :cond_2

    .line 3948
    :goto_3
    iput-object p2, p1, Landroid/support/v7/widget/j;->mShadowedHolder:Landroid/support/v7/widget/j;

    .line 3950
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    .line 3951
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->Yy(Landroid/support/v7/widget/j;)V

    .line 3952
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3953
    iput-object p1, p2, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    goto :goto_1

    .line 3946
    :cond_2
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    goto :goto_3

    .line 3956
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_2
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 3023
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    .line 3024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 3025
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/j;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5294
    iget-object v0, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 5310
    :goto_0
    return-void

    .line 5295
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5296
    :goto_1
    if-nez v0, :cond_1

    .line 5308
    iput-object v1, p0, Landroid/support/v7/widget/j;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 5297
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    .line 5301
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5302
    instance-of v2, v0, Landroid/view/View;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 5305
    goto :goto_1

    .line 5298
    :cond_2
    return-void

    .line 5303
    :cond_3
    check-cast v0, Landroid/view/View;

    goto :goto_1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 673
    if-nez p2, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 686
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

    .line 690
    :try_start_1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 691
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 692
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

    .line 702
    :goto_2
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 703
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

    .line 704
    :catch_0
    move-exception v0

    .line 705
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

    .line 681
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

    .line 693
    :catch_1
    move-exception v0

    .line 695
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

    .line 700
    goto :goto_2

    .line 696
    :catch_2
    move-exception v1

    .line 697
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 698
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

    .line 707
    :catch_3
    move-exception v0

    .line 708
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

    .line 710
    :catch_4
    move-exception v0

    .line 711
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

    .line 713
    :catch_5
    move-exception v0

    .line 714
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

    .line 716
    :catch_6
    move-exception v0

    .line 717
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

    .line 3886
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3887
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

    .line 3244
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3245
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3246
    if-nez v0, :cond_1

    .line 3252
    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3247
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3248
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3249
    invoke-static {v1, v0}, Landroid/support/v4/view/a/n;->afX(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3250
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3593
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/e;->XH(I)V

    .line 3594
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/e;)V

    .line 3595
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->QA:Z

    .line 3596
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3597
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2}, Landroid/support/v7/widget/B;->clear()V

    .line 3598
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3599
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3600
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 3601
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v3, v3, Landroid/support/v7/widget/e;->Qw:Z

    if-nez v3, :cond_2

    :goto_0
    move v0, v1

    :cond_0
    iput-boolean v0, v2, Landroid/support/v7/widget/e;->Qo:Z

    .line 3602
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 3603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v2, v2, Landroid/support/v7/widget/e;->Qz:Z

    iput-boolean v2, v0, Landroid/support/v7/widget/e;->Qt:Z

    .line 3604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/e;->Qx:I

    .line 3605
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qw:Z

    if-nez v0, :cond_3

    .line 3634
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qz:Z

    if-nez v0, :cond_7

    .line 3673
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 3675
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3676
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/e;->Qy:I

    .line 3678
    return-void

    .line 3601
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3609
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    move v0, v1

    .line 3610
    :goto_2
    if-ge v0, v2, :cond_1

    .line 3611
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3612
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3610
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3612
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_6

    .line 3615
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3617
    invoke-static {v3}, Landroid/support/v7/widget/b;->Xp(Landroid/support/v7/widget/j;)I

    move-result v6

    .line 3618
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3616
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/b;->Xy(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v4

    .line 3619
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/B;->ZK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3620
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->Qo:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3621
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3622
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v4

    .line 3630
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/B;->ZN(JLandroid/support/v7/widget/j;)V

    goto :goto_3

    .line 3612
    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v4}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 3641
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 3642
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qv:Z

    .line 3643
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->Qv:Z

    .line 3645
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/p;->onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V

    .line 3646
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v2, Landroid/support/v7/widget/e;->Qv:Z

    move v0, v1

    .line 3648
    :goto_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 3671
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto/16 :goto_1

    .line 3649
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3650
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3651
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3654
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/B;->ZU(Landroid/support/v7/widget/j;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3648
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3655
    :cond_a
    invoke-static {v3}, Landroid/support/v7/widget/b;->Xp(Landroid/support/v7/widget/j;)I

    move-result v2

    .line 3656
    const/16 v4, 0x2000

    .line 3657
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v4

    .line 3658
    if-eqz v4, :cond_b

    .line 3661
    :goto_7
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3662
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 3661
    invoke-virtual {v5, v6, v3, v2, v7}, Landroid/support/v7/widget/b;->Xy(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;ILjava/util/List;)Landroid/support/v7/widget/E;

    move-result-object v2

    .line 3663
    if-nez v4, :cond_c

    .line 3666
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v4, v3, v2}, Landroid/support/v7/widget/B;->ZQ(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_6

    .line 3659
    :cond_b
    or-int/lit16 v2, v2, 0x1000

    goto :goto_7

    .line 3664
    :cond_c
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_6
.end method

.method private dispatchLayoutStep2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3685
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3686
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3687
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/e;->XH(I)V

    .line 3688
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aaq()V

    .line 3689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/e;->Qx:I

    .line 3690
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->Ql:I

    .line 3693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->Qt:Z

    .line 3694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/p;->onLayoutChildren(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)V

    .line 3696
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->Qv:Z

    .line 3697
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 3700
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qw:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v2, Landroid/support/v7/widget/e;->Qw:Z

    .line 3701
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/e;->Qy:I

    .line 3702
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3703
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3704
    return-void

    .line 3700
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

    .line 3711
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/e;->XH(I)V

    .line 3712
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3713
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v11, v0, Landroid/support/v7/widget/e;->Qy:I

    .line 3715
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qw:Z

    if-nez v0, :cond_0

    .line 3767
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    .line 3768
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->Qx:I

    iput v1, v0, Landroid/support/v7/widget/e;->Qs:I

    .line 3769
    iput-boolean v10, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3770
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v10, v0, Landroid/support/v7/widget/e;->Qw:Z

    .line 3772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v10, v0, Landroid/support/v7/widget/e;->Qz:Z

    .line 3773
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput-boolean v10, v0, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    .line 3774
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v0, v0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    .line 3777
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v0, v0, Landroid/support/v7/widget/p;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-nez v0, :cond_9

    .line 3785
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->onLayoutCompleted(Landroid/support/v7/widget/e;)V

    .line 3786
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3787
    invoke-virtual {p0, v10}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->clear()V

    .line 3789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v10

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v1, v11

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3792
    :goto_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 3793
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    .line 3794
    return-void

    .line 3719
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_4
    if-gez v7, :cond_1

    .line 3764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/B;->ZI(Landroid/support/v7/widget/w;)V

    goto :goto_0

    .line 3720
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 3721
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3724
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v8

    .line 3725
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    .line 3726
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/b;->Xz(Landroid/support/v7/widget/e;Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v0

    .line 3727
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v8, v9}, Landroid/support/v7/widget/B;->ZH(J)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3728
    if-nez v1, :cond_4

    .line 3759
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/B;->ZM(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3719
    :cond_3
    :goto_5
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_4

    .line 3728
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3739
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/B;->ZL(Landroid/support/v7/widget/j;)Z

    move-result v5

    .line 3741
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/B;->ZL(Landroid/support/v7/widget/j;)Z

    move-result v6

    .line 3742
    if-nez v5, :cond_6

    .line 3746
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/B;->ZW(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v3

    .line 3749
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v4, v2, v0}, Landroid/support/v7/widget/B;->ZM(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/B;->ZO(Landroid/support/v7/widget/j;)Landroid/support/v7/widget/E;

    move-result-object v4

    .line 3751
    if-eqz v3, :cond_7

    move-object v0, p0

    .line 3754
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/j;Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;ZZ)V

    goto :goto_5

    .line 3742
    :cond_6
    if-ne v1, v2, :cond_5

    .line 3744
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/B;->ZM(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    goto :goto_5

    .line 3752
    :cond_7
    invoke-direct {p0, v8, v9, v2, v1}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/j;Landroid/support/v7/widget/j;)V

    goto :goto_5

    .line 3775
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v0, v0, Landroid/support/v7/widget/s;->QR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 3780
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput v10, v0, Landroid/support/v7/widget/p;->mPrefetchMaxCountObserved:I

    .line 3781
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iput-boolean v10, v0, Landroid/support/v7/widget/p;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 3782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->Yv()V

    goto/16 :goto_2

    .line 3790
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

    .line 2725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2726
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    if-nez v1, :cond_1

    .line 2742
    :goto_0
    if-nez v0, :cond_5

    .line 2752
    :cond_0
    return v2

    .line 2727
    :cond_1
    if-eqz v0, :cond_3

    .line 2731
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    invoke-interface {v1, p0, p1}, Landroid/support/v7/widget/n;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2732
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2734
    :cond_2
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2736
    :goto_1
    return v5

    .line 2729
    :cond_3
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    goto :goto_0

    .line 2732
    :cond_4
    if-eq v0, v5, :cond_2

    goto :goto_1

    .line 2743
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 2744
    :goto_2
    if-ge v1, v3, :cond_0

    .line 2745
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2746
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/n;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2744
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2747
    :cond_6
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2748
    return v5
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 2708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2709
    if-ne v3, v6, :cond_1

    .line 2710
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2713
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 2714
    :goto_1
    if-lt v1, v4, :cond_2

    .line 2721
    return v2

    .line 2709
    :cond_1
    if-eqz v3, :cond_0

    goto :goto_0

    .line 2715
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2716
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/n;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2714
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2716
    :cond_4
    if-eq v3, v6, :cond_3

    .line 2717
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    .line 2718
    const/4 v0, 0x1

    return v0
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 3860
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v5

    .line 3861
    if-eqz v5, :cond_0

    .line 3866
    const v2, 0x7fffffff

    .line 3867
    const/high16 v0, -0x80000000

    move v3, v4

    .line 3868
    :goto_0
    if-lt v3, v5, :cond_1

    .line 3881
    aput v2, p1, v4

    .line 3882
    aput v0, p1, v7

    .line 3883
    return-void

    .line 3862
    :cond_0
    aput v1, p1, v4

    .line 3863
    aput v1, p1, v7

    .line 3864
    return-void

    .line 3869
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3870
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3873
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v1

    .line 3874
    if-lt v1, v2, :cond_3

    .line 3877
    :goto_1
    if-gt v1, v0, :cond_4

    move v1, v2

    .line 3868
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 3871
    goto :goto_2

    :cond_3
    move v2, v1

    .line 3875
    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v2

    .line 3878
    goto :goto_2
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 5272
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5275
    instance-of v1, p0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 5278
    check-cast p0, Landroid/view/ViewGroup;

    .line 5279
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5280
    :goto_0
    if-lt v0, v1, :cond_2

    .line 5287
    return-object v3

    .line 5273
    :cond_0
    return-object v3

    .line 5276
    :cond_1
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 5281
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5282
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    .line 5283
    if-nez v2, :cond_3

    .line 5280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5284
    :cond_3
    return-object v2
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 3462
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->Qn:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3465
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->getItemCount()I

    move-result v2

    move v1, v0

    .line 3466
    :goto_1
    if-lt v1, v2, :cond_3

    .line 3475
    :cond_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3476
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    .line 3485
    return-object v5

    .line 3462
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->Qn:I

    goto :goto_0

    .line 3467
    :cond_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 3468
    if-eqz v3, :cond_0

    .line 3471
    iget-object v4, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3472
    :cond_4
    iget-object v0, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0

    .line 3477
    :cond_5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 3478
    if-eqz v1, :cond_6

    .line 3481
    iget-object v2, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3482
    iget-object v0, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    return-object v0

    .line 3479
    :cond_6
    return-object v5
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4373
    if-eqz p0, :cond_0

    .line 4376
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    iget-object v0, v0, Landroid/support/v7/widget/i;->QH:Landroid/support/v7/widget/j;

    return-object v0

    .line 4374
    :cond_0
    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 4648
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 4649
    iget-object v1, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 4650
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/i;->leftMargin:I

    sub-int/2addr v2, v3

    .line 4651
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/i;->topMargin:I

    sub-int/2addr v3, v4

    .line 4652
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v4, v5

    .line 4653
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v0, v1

    .line 4650
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4654
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 3563
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    move v1, v0

    move-object v0, p1

    .line 3564
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3571
    :cond_0
    return v1

    .line 3564
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3565
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 3566
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 3567
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    move-object v0, p1

    .line 3570
    goto :goto_0

    .line 3568
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

    .line 725
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 728
    const-string/jumbo v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
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

    .line 726
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

    .line 729
    :cond_1
    return-object p2
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/a;
    .locals 1

    .prologue
    .line 12777
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/a;

    if-eqz v0, :cond_0

    .line 12780
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/a;

    return-object v0

    .line 12778
    :cond_0
    new-instance v0, Landroid/support/v4/view/a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/a;

    goto :goto_0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/j;Landroid/support/v7/widget/j;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 3814
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 3815
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3838
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

    const-string/jumbo v1, "RecyclerView"

    .line 3840
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3838
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    return-void

    .line 3816
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3817
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 3818
    if-eq v2, p3, :cond_3

    .line 3821
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v4

    .line 3822
    cmp-long v3, v4, p1

    if-nez v3, :cond_3

    .line 3823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_2

    .line 3829
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

    .line 3833
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3823
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3824
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

    .line 3827
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3815
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private hasUpdatedView()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1721
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1730
    return v1

    .line 1722
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 1723
    if-nez v3, :cond_2

    .line 1721
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1723
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1726
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1727
    const/4 v0, 0x1

    return v0
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 735
    new-instance v0, Landroid/support/v7/widget/A;

    new-instance v1, Landroid/support/v7/widget/aC;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aC;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/A;-><init>(Landroid/support/v7/widget/aL;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    .line 855
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2449
    if-nez p2, :cond_1

    .line 2450
    :cond_0
    return v1

    .line 2449
    :cond_1
    if-eq p2, p0, :cond_0

    .line 2452
    if-eqz p1, :cond_3

    .line 2456
    if-ne p3, v3, :cond_4

    .line 2457
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v1

    .line 2458
    :goto_0
    if-eq p3, v3, :cond_6

    :goto_1
    xor-int/2addr v0, v1

    if-nez v0, :cond_7

    const/16 v0, 0x11

    .line 2460
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2463
    if-eq p3, v3, :cond_9

    .line 2466
    const/16 v0, 0x21

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2453
    :cond_3
    return v2

    .line 2456
    :cond_4
    if-eq p3, v2, :cond_2

    .line 2469
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocusAbsolute(Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_5
    move v0, v2

    .line 2457
    goto :goto_0

    :cond_6
    move v1, v2

    .line 2458
    goto :goto_1

    :cond_7
    const/16 v0, 0x42

    goto :goto_2

    .line 2461
    :cond_8
    return v2

    .line 2464
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

    .line 2478
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2479
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2480
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2481
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2482
    sparse-switch p3, :sswitch_data_0

    .line 2500
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "direction must be absolute. received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2501
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2484
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

    .line 2488
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

    .line 2492
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

    .line 2496
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

    .line 2482
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

    .line 3028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 3029
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-eq v2, v3, :cond_0

    .line 3036
    :goto_0
    return-void

    .line 3031
    :cond_0
    if-eqz v1, :cond_1

    .line 3032
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 3033
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 3034
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_0

    .line 3031
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3333
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

    .line 3343
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_4

    .line 3352
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aaq()V

    .line 3357
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    .line 3358
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v3, :cond_7

    :cond_1
    :goto_3
    move v3, v1

    .line 3364
    :goto_4
    iput-boolean v3, v4, Landroid/support/v7/widget/e;->Qw:Z

    .line 3365
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v4, v4, Landroid/support/v7/widget/e;->Qw:Z

    if-nez v4, :cond_c

    :cond_2
    :goto_5
    move v2, v1

    .line 3368
    :cond_3
    iput-boolean v2, v3, Landroid/support/v7/widget/e;->Qz:Z

    .line 3369
    return-void

    .line 3346
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->reset()V

    .line 3347
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 3353
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aaf()V

    goto :goto_1

    .line 3357
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 3358
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

    .line 3364
    goto :goto_4

    .line 3358
    :cond_a
    if-nez v0, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v3, v3, Landroid/support/v7/widget/p;->mRequestedSimpleAnimations:Z

    if-nez v3, :cond_8

    goto :goto_3

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 3364
    invoke-virtual {v3}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_3

    .line 3365
    :cond_c
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_2

    .line 3368
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

    .line 2181
    cmpg-float v2, p2, v4

    if-gez v2, :cond_3

    .line 2182
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2183
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

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->ahK(Landroid/widget/EdgeEffect;FF)V

    move v1, v0

    .line 2191
    :cond_0
    :goto_0
    cmpg-float v2, p4, v4

    if-gez v2, :cond_4

    .line 2192
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2193
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

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->ahK(Landroid/widget/EdgeEffect;FF)V

    .line 2201
    :goto_1
    if-eqz v0, :cond_6

    .line 2202
    :cond_1
    :goto_2
    invoke-static {p0}, Landroid/support/v4/view/f;->agy(Landroid/view/View;)V

    .line 2204
    :cond_2
    return-void

    .line 2185
    :cond_3
    cmpl-float v2, p2, v4

    if-lez v2, :cond_0

    .line 2186
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2187
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->ahK(Landroid/widget/EdgeEffect;FF)V

    move v1, v0

    .line 2188
    goto :goto_0

    .line 2195
    :cond_4
    cmpl-float v2, p4, v4

    if-lez v2, :cond_5

    .line 2196
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2197
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

    invoke-static {v1, v2, v3}, Landroid/support/v4/widget/g;->ahK(Landroid/widget/EdgeEffect;FF)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2195
    goto :goto_1

    .line 2201
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

    .line 3489
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-nez v0, :cond_1

    .line 3496
    :cond_0
    return-void

    .line 3489
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3490
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_0

    .line 3491
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_5

    .line 3499
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3530
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-wide v2, v0, Landroid/support/v7/widget/e;->Qm:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    move-object v0, v1

    .line 3534
    :goto_1
    if-nez v0, :cond_b

    .line 3536
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_c

    move-object v0, v1

    .line 3551
    :goto_2
    if-nez v0, :cond_d

    .line 3560
    :goto_3
    return-void

    .line 3491
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3500
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3501
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-nez v2, :cond_7

    .line 3520
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3523
    return-void

    .line 3502
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    .line 3514
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 3517
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 3518
    return-void

    .line 3502
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 3531
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-wide v2, v0, Landroid/support/v7/widget/e;->Qm:J

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/j;

    move-result-object v0

    goto :goto_1

    .line 3534
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 3535
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3548
    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    goto :goto_2

    .line 3543
    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 3552
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->Qq:I

    int-to-long v2, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    .line 3553
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v1, v1, Landroid/support/v7/widget/e;->Qq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3554
    if-nez v1, :cond_f

    .line 3558
    :cond_e
    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 3554
    :cond_f
    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v0, v1

    .line 3555
    goto :goto_5
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2208
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2212
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    .line 2216
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    .line 2220
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_3

    .line 2224
    :goto_3
    if-nez v0, :cond_4

    .line 2227
    :goto_4
    return-void

    .line 2209
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2210
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2214
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 2217
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2218
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2

    .line 2221
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2222
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3

    .line 2225
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/f;->agy(Landroid/view/View;)V

    goto :goto_4
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2522
    if-nez p2, :cond_1

    move-object v0, p1

    .line 2523
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2528
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2529
    instance-of v2, v0, Landroid/support/v7/widget/i;

    if-nez v2, :cond_2

    .line 2541
    :cond_0
    :goto_1
    if-nez p2, :cond_3

    .line 2545
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

    .line 2547
    return-void

    :cond_1
    move-object v0, p2

    .line 2522
    goto :goto_0

    .line 2531
    :cond_2
    check-cast v0, Landroid/support/v7/widget/i;

    .line 2532
    iget-boolean v2, v0, Landroid/support/v7/widget/i;->QI:Z

    if-nez v2, :cond_0

    .line 2533
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 2534
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2535
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2536
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2537
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 2542
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2543
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    move v4, v1

    .line 2545
    goto :goto_3

    :cond_5
    move v5, v1

    goto :goto_4
.end method

.method private resetFocusInfo()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3447
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Landroid/support/v7/widget/e;->Qm:J

    .line 3448
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->Qn:I

    .line 3449
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v1, v0, Landroid/support/v7/widget/e;->Qq:I

    .line 3450
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3018
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3019
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 3020
    return-void

    .line 3016
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private saveFocusInfo()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3427
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-nez v1, :cond_2

    :cond_0
    move-object v1, v0

    .line 3431
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 3432
    :cond_1
    if-eqz v0, :cond_3

    .line 3435
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, v1, Landroid/support/v7/widget/e;->Qm:J

    .line 3439
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_5

    .line 3440
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3441
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getAdapterPosition()I

    move-result v1

    :goto_2
    iput v1, v2, Landroid/support/v7/widget/e;->Qn:I

    .line 3442
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v0, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/e;->Qq:I

    .line 3444
    :goto_3
    return-void

    .line 3427
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v1, :cond_0

    .line 3428
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 3433
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_3

    .line 3435
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v2

    goto :goto_1

    .line 3439
    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    .line 3440
    :cond_6
    iget v1, v0, Landroid/support/v7/widget/j;->mOldPosition:I

    goto :goto_2
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_1

    .line 1090
    :goto_0
    if-nez p2, :cond_2

    .line 1091
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1093
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->reset()V

    .line 1094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 1095
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    .line 1096
    if-nez p1, :cond_3

    .line 1100
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_4

    .line 1103
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/s;->Yr(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;Z)V

    .line 1104
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->Qv:Z

    .line 1105
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1106
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/q;->unregisterAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 1088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/q;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 1090
    :cond_2
    if-nez p3, :cond_0

    goto :goto_1

    .line 1097
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/u;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/q;->registerAdapterDataObserver(Landroid/support/v7/widget/h;)V

    .line 1098
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/q;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 1101
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/p;->onAdapterChanged(Landroid/support/v7/widget/q;Landroid/support/v7/widget/q;)V

    goto :goto_3
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->stop()V

    .line 2152
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->stopSmoothScroller()V

    goto :goto_0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    .prologue
    .line 2253
    if-ltz p1, :cond_1

    .line 2256
    if-gtz p1, :cond_2

    .line 2261
    :goto_0
    if-ltz p2, :cond_3

    .line 2264
    if-gtz p2, :cond_4

    .line 2269
    :goto_1
    if-eqz p1, :cond_5

    .line 2270
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/f;->agy(Landroid/view/View;)V

    .line 2272
    :goto_2
    return-void

    .line 2254
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2257
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 2262
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2263
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2265
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2266
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2269
    :cond_5
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 2557
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2559
    :goto_0
    return-void

    .line 2556
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
    .line 1482
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/o;I)V

    .line 1483
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/o;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1453
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 1457
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1460
    :goto_1
    if-ltz p2, :cond_2

    .line 1463
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1465
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1466
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1467
    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    goto :goto_1

    .line 1461
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/k;)V
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1164
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    return-void

    .line 1162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    goto :goto_0
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1567
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    return-void

    .line 1565
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

    .line 3922
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3923
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/b;->animateAppearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3926
    :goto_0
    return-void

    .line 3924
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3930
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/j;)V

    .line 3931
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->setIsRecyclable(Z)V

    .line 3932
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/b;->animateDisappearance(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;Landroid/support/v7/widget/E;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3935
    :goto_0
    return-void

    .line 3933
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2643
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2651
    return-void

    .line 2644
    :cond_0
    if-eqz p1, :cond_1

    .line 2648
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2645
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2646
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2661
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2668
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-gtz v0, :cond_2

    .line 2676
    :goto_0
    return-void

    .line 2662
    :cond_0
    if-eqz p1, :cond_1

    .line 2666
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2663
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2664
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2669
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 2674
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2669
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/j;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4233
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 4234
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v2

    .line 4233
    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/b;->Xu(Landroid/support/v7/widget/j;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4059
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

    .line 4113
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Zv()I

    move-result v1

    .line 4114
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4120
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clearOldPositions()V

    .line 4121
    return-void

    .line 4115
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4116
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4114
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4117
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->clearOldPosition()V

    goto :goto_1
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1588
    :goto_0
    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1841
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1844
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1842
    :cond_0
    return v0

    .line 1844
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

    .line 1816
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1819
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1817
    :cond_0
    return v0

    .line 1819
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

    .line 1864
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1867
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1865
    :cond_0
    return v0

    .line 1867
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

    .line 1913
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1916
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1914
    :cond_0
    return v0

    .line 1916
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

    .line 1889
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1890
    :cond_0
    return v0

    .line 1892
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

    .line 1936
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    .line 1937
    :cond_0
    return v0

    .line 1939
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

    .line 2231
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_4

    .line 2235
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_5

    .line 2239
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_6

    .line 2243
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_7

    .line 2247
    :cond_3
    :goto_3
    if-nez v0, :cond_8

    .line 2250
    :goto_4
    return-void

    .line 2231
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 2232
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2233
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    .line 2235
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2236
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2237
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    .line 2239
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 2240
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2241
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2

    .line 2243
    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 2244
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2245
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3

    .line 2248
    :cond_8
    invoke-static {p0}, Landroid/support/v4/view/f;->agy(Landroid/view/View;)V

    goto :goto_4
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1679
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 1680
    :cond_0
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1682
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    .line 1683
    return-void

    .line 1679
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    .line 1685
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aap()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1691
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->ZX(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1709
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aap()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1714
    :goto_0
    return-void

    .line 1686
    :cond_3
    return-void

    .line 1691
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    const/16 v1, 0xb

    .line 1692
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->ZX(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1694
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1696
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1697
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aaf()V

    .line 1698
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_5

    .line 1706
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1707
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1708
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    goto :goto_0

    .line 1699
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1703
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aak()V

    goto :goto_1

    .line 1700
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_1

    .line 1710
    :cond_7
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1712
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 3

    .prologue
    .line 3176
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3177
    invoke-static {p0}, Landroid/support/v4/view/f;->agD(Landroid/view/View;)I

    move-result v1

    .line 3175
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v0

    .line 3179
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3180
    invoke-static {p0}, Landroid/support/v4/view/f;->agF(Landroid/view/View;)I

    move-result v2

    .line 3178
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/p;->chooseSize(III)I

    move-result v1

    .line 3182
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3183
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6953
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 6954
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 6955
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6958
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 6964
    :cond_1
    return-void

    .line 6955
    :cond_2
    if-eqz v0, :cond_0

    .line 6956
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/q;->onViewAttachedToWindow(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6959
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6960
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 6961
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/k;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/k;->Yg(Landroid/view/View;)V

    .line 6960
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6939
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 6940
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 6941
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_2

    .line 6944
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 6950
    :cond_1
    return-void

    .line 6941
    :cond_2
    if-eqz v0, :cond_0

    .line 6942
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/q;->onViewDetachedFromWindow(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 6945
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6946
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 6947
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/k;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/k;->Yh(Landroid/view/View;)V

    .line 6946
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_1

    .line 3402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_2

    .line 3407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->QA:Z

    .line 3408
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->Qy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 3412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v0}, Landroid/support/v7/widget/C;->aad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3416
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3417
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3422
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3423
    return-void

    .line 3398
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    return-void

    .line 3403
    :cond_2
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    return-void

    .line 3409
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3410
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 3411
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_0

    .line 3412
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 3413
    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3420
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .prologue
    .line 10937
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .prologue
    .line 10942
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .prologue
    .line 10925
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/a;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .prologue
    .line 10931
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/a;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .prologue
    .line 10912
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/a;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .prologue
    .line 10919
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/a;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 4746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 4752
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 4755
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    if-nez v0, :cond_2

    .line 4758
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 4763
    :cond_0
    return-void

    .line 4747
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->onScrollStateChanged(I)V

    goto :goto_0

    .line 4756
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/m;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_1

    .line 4759
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 4760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/m;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4759
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .prologue
    .line 4706
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4709
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 4710
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 4711
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 4714
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 4718
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    if-nez v0, :cond_1

    .line 4721
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 4726
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 4727
    return-void

    .line 4719
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/m;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 4722
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    .line 4723
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/m;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4722
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 10824
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    .line 10837
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10838
    return-void

    .line 10825
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/j;

    .line 10826
    iget-object v2, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 10824
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10826
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10829
    iget v2, v0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10830
    if-eq v2, v4, :cond_1

    .line 10832
    iget-object v3, v0, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Landroid/support/v4/view/f;->agC(Landroid/view/View;I)V

    .line 10833
    iput v4, v0, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    goto :goto_1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1307
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 1298
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1299
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3988
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 3991
    :goto_0
    if-lt v3, v4, :cond_6

    .line 3997
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_7

    :cond_0
    move v0, v1

    .line 4005
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_b

    .line 4013
    :cond_1
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_f

    .line 4022
    :cond_2
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_13

    .line 4037
    :cond_3
    :goto_4
    if-eqz v0, :cond_17

    :cond_4
    move v2, v0

    .line 4042
    :cond_5
    :goto_5
    if-nez v2, :cond_18

    .line 4045
    :goto_6
    return-void

    .line 3992
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/o;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 3991
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 3997
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3998
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3999
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_9

    move v0, v1

    .line 4000
    :goto_7
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4001
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4002
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_a

    :cond_8
    move v0, v1

    .line 4003
    :goto_8
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 3999
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_7

    .line 4002
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    .line 4005
    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4007
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v3, :cond_d

    .line 4010
    :goto_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_e

    :cond_c
    move v3, v1

    :goto_a
    or-int/2addr v0, v3

    .line 4011
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 4008
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_9

    .line 4010
    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_a

    .line 4013
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4014
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 4015
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 4016
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v3, :cond_11

    move v3, v1

    .line 4017
    :goto_b
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4018
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4019
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v3, :cond_12

    :cond_10
    move v3, v1

    :goto_c
    or-int/2addr v0, v3

    .line 4020
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_3

    .line 4016
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    goto :goto_b

    .line 4019
    :cond_12
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_c

    .line 4022
    :cond_13
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 4024
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4025
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v4, :cond_15

    .line 4028
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4030
    :goto_d
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_16

    :cond_14
    :goto_e
    or-int/2addr v0, v1

    .line 4031
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    .line 4026
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

    .line 4030
    :cond_16
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v2

    goto :goto_e

    .line 4037
    :cond_17
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 4038
    invoke-virtual {v1}, Landroid/support/v7/widget/b;->XB()Z

    move-result v1

    if-nez v1, :cond_5

    move v2, v0

    goto/16 :goto_5

    .line 4043
    :cond_18
    invoke-static {p0}, Landroid/support/v4/view/f;->agy(Landroid/view/View;)V

    goto/16 :goto_6
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 4582
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1944
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1945
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1948
    :cond_0
    :goto_0
    return-void

    .line 1945
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1946
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2318
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2319
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2325
    :goto_0
    return-void

    .line 2316
    :cond_0
    return-void

    .line 2320
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

    .line 2321
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2320
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 2275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2278
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2279
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2283
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2285
    :goto_0
    return-void

    .line 2276
    :cond_0
    return-void

    .line 2280
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

    .line 2281
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2280
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2288
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2291
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2292
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2296
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2298
    :goto_0
    return-void

    .line 2289
    :cond_0
    return-void

    .line 2293
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

    .line 2294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2293
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 2304
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2305
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-nez v0, :cond_1

    .line 2309
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2312
    :goto_0
    return-void

    .line 2302
    :cond_0
    return-void

    .line 2306
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

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Landroid/support/v7/widget/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3575
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3580
    iput v2, p1, Landroid/support/v7/widget/e;->Qr:I

    .line 3581
    iput v2, p1, Landroid/support/v7/widget/e;->Qu:I

    .line 3583
    :goto_0
    return-void

    .line 3576
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->Za(Landroid/support/v7/widget/v;)Landroid/widget/OverScroller;

    move-result-object v0

    .line 3577
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/e;->Qr:I

    .line 3578
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p1, Landroid/support/v7/widget/e;->Qu:I

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .prologue
    .line 4565
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    .line 4566
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 4577
    const/4 v0, 0x0

    return-object v0

    .line 4567
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4568
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 4569
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 4570
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 4571
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 4572
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 4573
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 4574
    return-object v1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4349
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, p1

    .line 4350
    :goto_0
    if-nez v0, :cond_1

    .line 4354
    :cond_0
    if-eq v0, p0, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    .line 4350
    :cond_1
    if-eq v0, p0, :cond_0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4351
    check-cast v0, Landroid/view/View;

    .line 4352
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 4354
    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4367
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 4368
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

    .line 4478
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v2, :cond_0

    .line 4481
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Zv()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4484
    :goto_0
    if-lt v2, v3, :cond_1

    .line 4495
    return-object v0

    .line 4479
    :cond_0
    return-object v1

    .line 4485
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4486
    if-nez v1, :cond_3

    .line 4484
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4486
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4487
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/j;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4488
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4491
    return-object v1

    :cond_4
    move-object v0, v1

    .line 4489
    goto :goto_1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/j;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4539
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v2, :cond_1

    .line 4540
    :cond_0
    return-object v1

    .line 4539
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4542
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Zv()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4544
    :goto_0
    if-lt v2, v3, :cond_2

    .line 4554
    return-object v0

    .line 4545
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4546
    if-nez v1, :cond_4

    .line 4544
    :cond_3
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4546
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4547
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4550
    return-object v1

    :cond_5
    move-object v0, v1

    .line 4548
    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 4457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 4434
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

    .line 4499
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Zv()I

    move-result v3

    move v2, v0

    move-object v0, v1

    .line 4501
    :goto_0
    if-lt v2, v3, :cond_0

    .line 4521
    return-object v0

    .line 4502
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    .line 4503
    if-nez v1, :cond_2

    .line 4501
    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4503
    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4504
    if-nez p2, :cond_3

    .line 4508
    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 4511
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    iget-object v4, v1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/A;->Zs(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4514
    return-object v1

    .line 4505
    :cond_3
    iget v4, v1, Landroid/support/v7/widget/j;->mPosition:I

    if-ne v4, p1, :cond_1

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 4512
    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    .line 2093
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_5

    .line 2097
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v3

    .line 2098
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v4

    .line 2100
    if-nez v3, :cond_6

    :cond_0
    move p1, v1

    .line 2103
    :goto_0
    if-nez v4, :cond_7

    :cond_1
    move p2, v1

    .line 2106
    :goto_1
    if-eqz p1, :cond_8

    .line 2111
    :cond_2
    int-to-float v0, p1

    int-to-float v5, p2

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2135
    :cond_3
    return v1

    .line 2089
    :cond_4
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return v1

    .line 2094
    :cond_5
    return v1

    .line 2100
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-lt v0, v5, :cond_0

    goto :goto_0

    .line 2103
    :cond_7
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-lt v0, v5, :cond_1

    goto :goto_1

    .line 2106
    :cond_8
    if-nez p2, :cond_2

    .line 2108
    return v1

    .line 2112
    :cond_9
    if-eqz v3, :cond_c

    :cond_a
    move v0, v2

    .line 2113
    :goto_2
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2115
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    if-nez v5, :cond_d

    .line 2119
    :cond_b
    if-eqz v0, :cond_3

    .line 2121
    if-nez v3, :cond_e

    move v0, v1

    .line 2124
    :goto_3
    if-nez v4, :cond_f

    .line 2127
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2129
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2130
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v1, v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2131
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/v;->fling(II)V

    .line 2132
    return v2

    .line 2112
    :cond_c
    if-nez v4, :cond_a

    move v0, v1

    goto :goto_2

    .line 2115
    :cond_d
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/d;->XG(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2116
    return v2

    :cond_e
    move v0, v2

    .line 2122
    goto :goto_3

    .line 2125
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

    .line 2363
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2364
    if-nez v0, :cond_4

    .line 2367
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_5

    :cond_0
    move v0, v2

    .line 2370
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2371
    if-nez v0, :cond_6

    .line 2410
    :goto_1
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2411
    if-eqz v1, :cond_16

    :cond_1
    move-object v0, v1

    .line 2423
    :goto_2
    if-nez v0, :cond_18

    .line 2436
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2437
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :cond_3
    return-object v0

    .line 2365
    :cond_4
    return-object v0

    .line 2367
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 2368
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 2371
    :cond_6
    if-ne p2, v7, :cond_a

    .line 2376
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    .line 2386
    :goto_3
    if-eqz v0, :cond_f

    :cond_8
    move v1, v0

    .line 2397
    :cond_9
    :goto_4
    if-nez v1, :cond_14

    .line 2408
    :goto_5
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 2371
    :cond_a
    if-eq p2, v1, :cond_7

    goto :goto_1

    .line 2377
    :cond_b
    if-eq p2, v7, :cond_c

    const/16 v0, 0x21

    .line 2379
    :goto_6
    invoke-virtual {v4, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2380
    if-eqz v3, :cond_d

    move v3, v2

    .line 2381
    :goto_7
    sget-boolean v5, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-nez v5, :cond_e

    move v0, v3

    goto :goto_3

    .line 2377
    :cond_c
    const/16 v0, 0x82

    goto :goto_6

    :cond_d
    move v3, v1

    .line 2380
    goto :goto_7

    :cond_e
    move p2, v0

    move v0, v3

    .line 2383
    goto :goto_3

    .line 2386
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getLayoutDirection()I

    move-result v0

    if-eq v0, v1, :cond_11

    move v0, v2

    .line 2388
    :goto_8
    if-eq p2, v7, :cond_12

    move v3, v2

    :goto_9
    xor-int/2addr v0, v3

    if-nez v0, :cond_13

    const/16 v0, 0x11

    .line 2390
    :goto_a
    invoke-virtual {v4, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2391
    if-eqz v3, :cond_10

    move v1, v2

    .line 2392
    :cond_10
    sget-boolean v3, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v3, :cond_9

    move p2, v0

    .line 2394
    goto :goto_4

    :cond_11
    move v0, v1

    .line 2387
    goto :goto_8

    :cond_12
    move v3, v1

    .line 2388
    goto :goto_9

    :cond_13
    const/16 v0, 0x42

    goto :goto_a

    .line 2398
    :cond_14
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2399
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2400
    if-eqz v0, :cond_15

    .line 2404
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2405
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/p;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    .line 2406
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto :goto_5

    .line 2402
    :cond_15
    return-object v6

    .line 2411
    :cond_16
    if-eqz v0, :cond_1

    .line 2412
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2413
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_17

    .line 2418
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/p;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)Landroid/view/View;

    move-result-object v0

    .line 2420
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto/16 :goto_2

    .line 2416
    :cond_17
    return-object v6

    .line 2423
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2424
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 2433
    invoke-direct {p0, v0, v6}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2434
    return-object p1

    .line 2427
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 4064
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4067
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->generateDefaultLayoutParams()Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4065
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 4072
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4075
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/p;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4073
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 4080
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 4083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/i;

    move-result-object v0

    return-object v0

    .line 4081
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Landroid/support/v7/widget/q;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/j;)I
    .locals 2

    .prologue
    .line 10841
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/j;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10844
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 10843
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10846
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    iget v1, p1, Landroid/support/v7/widget/j;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/C;->aal(I)I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_0

    .line 1145
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 1143
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/j;)J
    .locals 2

    .prologue
    .line 3917
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
    .line 4395
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 4396
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
    .line 12747
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-eqz v0, :cond_0

    .line 12750
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/a;->Xl(II)I

    move-result v0

    return v0

    .line 12748
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 4421
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v2, :cond_1

    .line 4422
    :cond_0
    return-wide v0

    .line 4421
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4424
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4425
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
    .line 4410
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 4411
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
    .line 4385
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;
    .locals 3

    .prologue
    .line 4326
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4327
    if-nez v0, :cond_1

    .line 4331
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    return-object v0

    .line 4327
    :cond_1
    if-eq v0, p0, :cond_0

    .line 4328
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
    .line 989
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/z;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 4644
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4645
    return-void
.end method

.method public getItemAnimator()Landroid/support/v7/widget/b;
    .locals 1

    .prologue
    .line 3318
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 4657
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 4658
    iget-boolean v1, v0, Landroid/support/v7/widget/i;->QI:Z

    if-eqz v1, :cond_0

    .line 4662
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1}, Landroid/support/v7/widget/e;->XM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4666
    :goto_0
    iget-object v4, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    .line 4667
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4668
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    .line 4669
    :goto_1
    if-lt v2, v5, :cond_4

    .line 4677
    iput-boolean v3, v0, Landroid/support/v7/widget/i;->QI:Z

    .line 4678
    return-object v4

    .line 4659
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    return-object v0

    .line 4662
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Ye()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4664
    :cond_2
    iget-object v0, v0, Landroid/support/v7/widget/i;->mDecorInsets:Landroid/graphics/Rect;

    return-object v0

    .line 4662
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/i;->Yc()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 4670
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4671
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/o;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/o;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 4672
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 4673
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 4674
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 4675
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 4669
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getItemDecorationAt(I)Landroid/support/v7/widget/o;
    .locals 1

    .prologue
    .line 1492
    if-gez p1, :cond_1

    .line 1493
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1492
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1496
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/p;
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 2173
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 2163
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .prologue
    .line 5319
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_0

    .line 5322
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5320
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/d;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .prologue
    .line 4298
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/t;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->getRecycledViewPool()Landroid/support/v7/widget/t;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1420
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 10901
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/a;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .prologue
    .line 10906
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4779
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v1, :cond_1

    .line 4780
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 4779
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    .line 4780
    invoke-virtual {v1}, Landroid/support/v7/widget/C;->aap()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 858
    new-instance v0, Landroid/support/v7/widget/C;

    new-instance v1, Landroid/support/v7/widget/aH;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/aH;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/C;-><init>(Landroid/support/v7/widget/am;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    .line 938
    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    .line 10853
    if-nez p1, :cond_1

    .line 10855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set fast scroller without both required drawables."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10856
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10853
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 10859
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10860
    new-instance v0, Landroid/support/v7/widget/FastScroller;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 10862
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 10863
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    .line 10864
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    .line 10865
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2328
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2329
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 4275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 4282
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4283
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4284
    return-void

    .line 4276
    :cond_0
    return-void

    .line 4279
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

    .line 3240
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

    .line 4095
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v1}, Landroid/support/v7/widget/b;->XB()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2632
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3274
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
    .line 2033
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 10876
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/a;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->scrollToPosition(I)V

    .line 1617
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1618
    return-void

    .line 1614
    :cond_0
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .prologue
    .line 3978
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Zv()I

    move-result v2

    .line 3979
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 3983
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->markItemDecorInsetsDirty()V

    .line 3984
    return-void

    .line 3980
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v0

    .line 3981
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/i;->QI:Z

    .line 3979
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4259
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Zv()I

    move-result v1

    .line 4260
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4266
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4267
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->markKnownViewsInvalid()V

    .line 4268
    return-void

    .line 4261
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4262
    if-nez v2, :cond_2

    .line 4260
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4262
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4263
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/j;->addFlags(I)V

    goto :goto_1
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .prologue
    .line 4630
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 4631
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 4634
    return-void

    .line 4632
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .prologue
    .line 4592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 4593
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 4596
    return-void

    .line 4594
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4158
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Zv()I

    move-result v2

    move v0, v1

    .line 4159
    :goto_0
    if-lt v0, v2, :cond_0

    .line 4170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->offsetPositionRecordsForInsert(II)V

    .line 4171
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4172
    return-void

    .line 4160
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 4161
    if-nez v3, :cond_2

    .line 4159
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4161
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4166
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4167
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/e;->Qv:Z

    goto :goto_1
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 4124
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->Zv()I

    move-result v6

    .line 4126
    if-lt p1, p2, :cond_0

    move v0, v1

    move v2, p1

    move v3, p2

    :goto_0
    move v4, v5

    .line 4136
    :goto_1
    if-lt v4, v6, :cond_1

    .line 4153
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->offsetPositionRecordsForMove(II)V

    .line 4154
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4155
    return-void

    .line 4129
    :cond_0
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    goto :goto_0

    .line 4137
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v7

    .line 4138
    if-nez v7, :cond_3

    .line 4136
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4138
    :cond_3
    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v8, v3, :cond_2

    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-gt v8, v2, :cond_2

    .line 4145
    iget v8, v7, Landroid/support/v7/widget/j;->mPosition:I

    if-eq v8, p1, :cond_4

    .line 4148
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4151
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v7, Landroid/support/v7/widget/e;->Qv:Z

    goto :goto_2

    .line 4146
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

    .line 4176
    add-int v1, p1, p2

    .line 4177
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2}, Landroid/support/v7/widget/A;->Zv()I

    move-result v2

    .line 4178
    :goto_0
    if-lt v0, v2, :cond_0

    .line 4200
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/s;->offsetPositionRecordsForRemove(IIZ)V

    .line 4201
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 4202
    return-void

    .line 4179
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 4180
    if-nez v3, :cond_2

    .line 4178
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4180
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4181
    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v4, v1, :cond_3

    .line 4189
    iget v4, v3, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 4194
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/j;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4196
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v6, v3, Landroid/support/v7/widget/e;->Qv:Z

    goto :goto_1

    .line 4187
    :cond_3
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/j;->offsetPosition(IZ)V

    .line 4188
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v6, v3, Landroid/support/v7/widget/e;->Qv:Z

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2573
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2574
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2575
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2576
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2577
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 2580
    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2582
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_3

    .line 2603
    :goto_2
    return-void

    .line 2576
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2578
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 2584
    :cond_3
    sget-object v0, Landroid/support/v7/widget/D;->Ru:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/D;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    .line 2585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    if-eqz v0, :cond_4

    .line 2601
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/D;->aaA(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_2

    .line 2586
    :cond_4
    new-instance v0, Landroid/support/v7/widget/D;

    invoke-direct {v0}, Landroid/support/v7/widget/D;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    .line 2590
    invoke-static {p0}, Landroid/support/v4/view/f;->agL(Landroid/view/View;)Landroid/view/Display;

    move-result-object v1

    .line 2591
    const/high16 v0, 0x42700000    # 60.0f

    .line 2592
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2598
    :cond_5
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v2, v0

    float-to-long v2, v0

    iput-wide v2, v1, Landroid/support/v7/widget/D;->Rs:J

    .line 2599
    sget-object v0, Landroid/support/v7/widget/D;->Ru:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 2592
    :cond_6
    if-eqz v1, :cond_5

    .line 2593
    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    .line 2594
    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    move v0, v1

    .line 2595
    goto :goto_4
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4609
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4621
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2607
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2608
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 2611
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2612
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 2613
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 2616
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2617
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0}, Landroid/support/v7/widget/B;->ZT()V

    .line 2620
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-nez v0, :cond_2

    .line 2625
    :goto_2
    return-void

    .line 2609
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->XE()V

    goto :goto_0

    .line 2614
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/p;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    goto :goto_1

    .line 2622
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/D;->aas(Landroid/support/v7/widget/RecyclerView;)V

    .line 2623
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    goto :goto_2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 4049
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4051
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4052
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 4055
    return-void

    .line 4053
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/o;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/o;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V

    .line 4052
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3217
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3218
    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    .prologue
    .line 3221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 3222
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3225
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3226
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 3231
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3232
    if-eqz p1, :cond_0

    .line 3233
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3234
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3040
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 3043
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    .line 3046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 3085
    :cond_0
    :goto_0
    return v4

    .line 3041
    :cond_1
    return v4

    .line 3044
    :cond_2
    return v4

    .line 3048
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 3061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    move v0, v1

    move v2, v1

    .line 3080
    :goto_1
    cmpl-float v3, v2, v1

    if-nez v3, :cond_4

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 3081
    :cond_4
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3049
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 3056
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 3059
    goto :goto_1

    .line 3052
    :cond_6
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_2

    .line 3057
    :cond_7
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    .line 3062
    :cond_8
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3063
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3068
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    move v2, v1

    .line 3073
    goto :goto_1

    .line 3066
    :cond_9
    neg-float v0, v0

    move v2, v0

    move v0, v1

    .line 3067
    goto :goto_1

    :cond_a
    move v2, v1

    .line 3070
    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2757
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    .line 2762
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2767
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_3

    .line 2771
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v0

    .line 2772
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v3}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v3

    .line 2774
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_4

    .line 2777
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 2780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 2782
    packed-switch v4, :pswitch_data_0

    .line 2856
    :cond_0
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v0, v2, :cond_e

    move v0, v1

    :goto_2
    return v0

    .line 2760
    :cond_1
    return v1

    .line 2763
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2764
    return v2

    .line 2768
    :cond_3
    return v1

    .line 2775
    :cond_4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2784
    :pswitch_1
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-nez v4, :cond_5

    .line 2787
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2791
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 2797
    :goto_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v5, v2

    aput v1, v4, v1

    .line 2800
    if-nez v0, :cond_7

    move v0, v1

    .line 2803
    :goto_5
    if-nez v3, :cond_8

    .line 2806
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    goto :goto_1

    .line 2785
    :cond_5
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    goto :goto_3

    .line 2792
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2793
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_4

    :cond_7
    move v0, v2

    .line 2801
    goto :goto_5

    .line 2804
    :cond_8
    or-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 2810
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2811
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2812
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 2816
    :pswitch_3
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2817
    if-ltz v4, :cond_b

    .line 2823
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 2824
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 2825
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v6, v2, :cond_0

    .line 2826
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v6, v5, v6

    .line 2827
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v7, v4, v7

    .line 2829
    if-nez v0, :cond_c

    :cond_9
    move v0, v1

    .line 2833
    :goto_7
    if-nez v3, :cond_d

    .line 2837
    :cond_a
    :goto_8
    if-eqz v0, :cond_0

    .line 2838
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2818
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

    .line 2820
    return v1

    .line 2829
    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v6, :cond_9

    .line 2830
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move v0, v2

    .line 2831
    goto :goto_7

    .line 2833
    :cond_d
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v5, :cond_a

    .line 2834
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move v0, v2

    .line 2835
    goto :goto_8

    .line 2844
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2848
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2849
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_1

    .line 2853
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 2856
    goto/16 :goto_2

    .line 2782
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
    .line 3962
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 3963
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 3964
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    .line 3965
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3966
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3090
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v2, :cond_1

    .line 3094
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-boolean v2, v2, Landroid/support/v7/widget/p;->mAutoMeasure:Z

    if-nez v2, :cond_2

    .line 3127
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-nez v2, :cond_8

    .line 3132
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-nez v2, :cond_9

    .line 3147
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v1, v1, Landroid/support/v7/widget/e;->Qz:Z

    if-nez v1, :cond_b

    .line 3157
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v1, :cond_c

    .line 3160
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput v0, v1, Landroid/support/v7/widget/e;->Qx:I

    .line 3162
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3163
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3164
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3165
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v1, Landroid/support/v7/widget/e;->Qt:Z

    .line 3167
    :cond_0
    :goto_2
    return-void

    .line 3091
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3092
    return-void

    .line 3095
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 3096
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3097
    if-eq v2, v5, :cond_5

    .line 3099
    :cond_3
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3100
    if-eqz v0, :cond_6

    .line 3101
    :cond_4
    return-void

    .line 3097
    :cond_5
    if-ne v3, v5, :cond_3

    move v0, v1

    goto :goto_3

    .line 3100
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_4

    .line 3103
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget v0, v0, Landroid/support/v7/widget/e;->Qy:I

    if-eq v0, v1, :cond_7

    .line 3108
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 3109
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->QA:Z

    .line 3110
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3113
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimensionFromChildren(II)V

    .line 3117
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 3119
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3120
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3118
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/p;->setMeasureSpecs(II)V

    .line 3121
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v0, Landroid/support/v7/widget/e;->QA:Z

    .line 3122
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3124
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->setMeasuredDimensionFromChildren(II)V

    goto :goto_2

    .line 3104
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    goto :goto_4

    .line 3128
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/p;->onMeasure(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;II)V

    .line 3129
    return-void

    .line 3133
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3134
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3135
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3136
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3138
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v2, v2, Landroid/support/v7/widget/e;->Qz:Z

    if-nez v2, :cond_a

    .line 3142
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/C;

    invoke-virtual {v1}, Landroid/support/v7/widget/C;->aaq()V

    .line 3143
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v0, v1, Landroid/support/v7/widget/e;->Qt:Z

    .line 3145
    :goto_5
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3146
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    goto/16 :goto_0

    .line 3139
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iput-boolean v1, v2, Landroid/support/v7/widget/e;->Qt:Z

    goto :goto_5

    .line 3153
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3154
    return-void

    .line 3158
    :cond_c
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->getItemCount()I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/e;->Qx:I

    goto/16 :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2563
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2568
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 2566
    :cond_0
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1281
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_1

    .line 1286
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->ago()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1288
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1283
    return-void

    .line 1288
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->QB:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->QB:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1267
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1268
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v1, :cond_0

    .line 1270
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_1

    .line 1273
    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->QB:Landroid/os/Parcelable;

    .line 1276
    :goto_0
    return-object v0

    .line 1269
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->XN(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1271
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->QB:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 4741
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    .prologue
    .line 4703
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 3187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3188
    if-eq p1, p3, :cond_1

    .line 3189
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 3192
    :goto_0
    return-void

    .line 3188
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

    .line 2871
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    .line 2872
    :cond_0
    return v5

    .line 2871
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-nez v0, :cond_0

    .line 2874
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2879
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    .line 2883
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v7

    .line 2884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v8

    .line 2886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 2891
    :goto_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 2892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2893
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2895
    if-eqz v0, :cond_6

    .line 2898
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v4, v4, v6

    int-to-float v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2900
    packed-switch v0, :pswitch_data_0

    .line 3006
    :cond_2
    :goto_2
    :pswitch_0
    if-eqz v5, :cond_1c

    .line 3009
    :goto_3
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 3011
    return v6

    .line 2875
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 2876
    return v6

    .line 2880
    :cond_4
    return v5

    .line 2887
    :cond_5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2896
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v5, v4, v6

    aput v5, v3, v5

    goto :goto_1

    .line 2902
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 2907
    if-nez v7, :cond_7

    move v0, v5

    .line 2910
    :goto_4
    if-nez v8, :cond_8

    .line 2913
    :goto_5
    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    goto :goto_2

    :cond_7
    move v0, v6

    .line 2908
    goto :goto_4

    .line 2911
    :cond_8
    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 2917
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2918
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 2919
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_2

    .line 2923
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2924
    if-ltz v0, :cond_b

    .line 2930
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v11

    float-to-int v10, v1

    .line 2931
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v11

    float-to-int v11, v0

    .line 2932
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int v1, v0, v10

    .line 2933
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v2, v0, v11

    .line 2935
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2944
    :goto_6
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v6, :cond_d

    .line 2967
    :cond_9
    :goto_7
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v6, :cond_2

    .line 2968
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v5

    sub-int v0, v10, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    sub-int v0, v11, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 2971
    if-nez v7, :cond_14

    move v3, v5

    :goto_8
    if-nez v8, :cond_15

    move v0, v5

    :goto_9
    invoke-virtual {p0, v3, v0, v9}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2977
    :goto_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_17

    .line 2978
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/D;

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v7/widget/D;->aay(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_2

    .line 2925
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

    .line 2927
    return v5

    .line 2936
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v5

    sub-int/2addr v1, v0

    .line 2937
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v0, v0, v6

    sub-int/2addr v2, v0

    .line 2938
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v9, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2940
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v5

    add-int/2addr v3, v4

    aput v3, v0, v5

    .line 2941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    goto/16 :goto_6

    .line 2946
    :cond_d
    if-nez v7, :cond_10

    :cond_e
    move v0, v5

    .line 2954
    :goto_b
    if-nez v8, :cond_12

    .line 2962
    :cond_f
    :goto_c
    if-eqz v0, :cond_9

    .line 2963
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_7

    .line 2946
    :cond_10
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v0, v3, :cond_e

    .line 2947
    if-gtz v1, :cond_11

    .line 2950
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v1

    :goto_d
    move v1, v0

    move v0, v6

    .line 2952
    goto :goto_b

    .line 2948
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int v0, v1, v0

    goto :goto_d

    .line 2954
    :cond_12
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v3, v4, :cond_f

    .line 2955
    if-gtz v2, :cond_13

    .line 2958
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v0, v2

    :goto_e
    move v2, v0

    move v0, v6

    .line 2960
    goto :goto_c

    .line 2956
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int v0, v2, v0

    goto :goto_e

    :cond_14
    move v3, v1

    .line 2971
    goto/16 :goto_8

    :cond_15
    move v0, v2

    goto/16 :goto_9

    .line 2975
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_a

    .line 2977
    :cond_17
    if-nez v2, :cond_a

    goto/16 :goto_2

    .line 2984
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2988
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2991
    if-nez v7, :cond_19

    move v0, v1

    .line 2993
    :goto_f
    if-nez v8, :cond_1a

    move v2, v1

    .line 2995
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

    .line 2998
    :goto_11
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    move v5, v6

    .line 2999
    goto/16 :goto_2

    .line 2991
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2992
    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_f

    .line 2993
    :cond_1a
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 2994
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_10

    .line 2996
    :cond_1b
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_11

    .line 3002
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_2

    .line 3007
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 2900
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
    .line 3326
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-eqz v0, :cond_1

    .line 3330
    :cond_0
    :goto_0
    return-void

    .line 3326
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 3327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->agG(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    goto :goto_0
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3850
    const/16 v0, 0x2000

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/j;->setFlags(II)V

    .line 3851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    iget-boolean v0, v0, Landroid/support/v7/widget/e;->Qo:Z

    if-nez v0, :cond_1

    .line 3856
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/B;->ZK(Landroid/support/v7/widget/j;Landroid/support/v7/widget/E;)V

    .line 3857
    return-void

    .line 3851
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3852
    invoke-virtual {p1}, Landroid/support/v7/widget/j;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3853
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/j;)J

    move-result-wide v0

    .line 3854
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/B;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/B;->ZN(JLandroid/support/v7/widget/j;)V

    goto :goto_0
.end method

.method removeAndRecycleViews()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 1067
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_1

    .line 1072
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1073
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->XE()V

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 1069
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    goto :goto_1
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1338
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1339
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/A;->Zy(Landroid/view/View;)Z

    move-result v1

    .line 1340
    if-nez v1, :cond_0

    .line 1349
    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1350
    return v1

    .line 1341
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 1342
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/s;->Yy(Landroid/support/v7/widget/j;)V

    .line 1343
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/s;->YI(Landroid/support/v7/widget/j;)V

    goto :goto_0

    .line 1349
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 3893
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v0

    .line 3894
    if-nez v0, :cond_1

    .line 3906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3909
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3910
    return-void

    .line 3895
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3897
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3898
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3899
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3896
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/j;->clearTmpDetachFlag()V

    goto :goto_0
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/o;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1509
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v1, :cond_0

    .line 1513
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1514
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1517
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1519
    return-void

    .line 1510
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    const-string/jumbo v2, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/p;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    goto :goto_0

    .line 1515
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
    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1177
    return-void

    .line 1174
    :cond_0
    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/n;)V
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2702
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    if-eq v0, p1, :cond_0

    .line 2705
    :goto_0
    return-void

    .line 2703
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/n;

    goto :goto_0
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method repositionShadowingViews()V
    .locals 7

    .prologue
    .line 5027
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v1

    .line 5028
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 5042
    return-void

    .line 5029
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5030
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v3

    .line 5031
    if-nez v3, :cond_2

    .line 5028
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5031
    :cond_2
    iget-object v4, v3, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    if-eqz v4, :cond_1

    .line 5032
    iget-object v3, v3, Landroid/support/v7/widget/j;->mShadowingHolder:Landroid/support/v7/widget/j;

    iget-object v3, v3, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    .line 5033
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5034
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 5035
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 5037
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 5038
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 5036
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 5035
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v2, v5, :cond_3

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2506
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/p;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2509
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2510
    return-void

    .line 2506
    :cond_1
    if-eqz p2, :cond_0

    .line 2507
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/p;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .prologue
    .line 2861
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2862
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 2866
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2867
    return-void

    .line 2863
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/n;

    .line 2864
    invoke-interface {v0, p1}, Landroid/support/v7/widget/n;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2862
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3970
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-eqz v0, :cond_1

    .line 3973
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 3975
    :goto_0
    return-void

    .line 3970
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3971
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1951
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-lt v0, v2, :cond_1

    .line 1959
    :goto_0
    if-eqz p1, :cond_2

    .line 1970
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    if-eq v0, v2, :cond_3

    .line 1980
    :cond_0
    :goto_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    .line 1981
    return-void

    .line 1957
    :cond_1
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:I

    goto :goto_0

    .line 1968
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_1

    .line 1972
    :cond_3
    if-nez p1, :cond_5

    .line 1976
    :cond_4
    :goto_3
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1977
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_2

    .line 1972
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_4

    .line 1974
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_3
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4099
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Zv()I

    move-result v1

    .line 4100
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4110
    return-void

    .line 4101
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v2

    .line 4106
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4107
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/j;->saveOldPosition()V

    goto :goto_1
.end method

.method public scrollBy(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1655
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_3

    .line 1660
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_4

    .line 1663
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    .line 1664
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v2}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v2

    .line 1665
    if-eqz v1, :cond_5

    .line 1666
    :cond_0
    if-nez v1, :cond_1

    move p1, v0

    :cond_1
    if-nez v2, :cond_2

    move p2, v0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 1668
    :goto_0
    return-void

    .line 1656
    :cond_3
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return-void

    .line 1661
    :cond_4
    return-void

    .line 1665
    :cond_5
    if-nez v2, :cond_0

    goto :goto_0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1748
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-nez v0, :cond_2

    move v2, v6

    move v1, v6

    move v4, v6

    move v3, v6

    .line 1767
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1771
    :goto_1
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1781
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    .line 1787
    :goto_2
    if-eqz v1, :cond_b

    .line 1788
    :cond_0
    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1790
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1793
    :goto_4
    if-eqz v1, :cond_d

    :cond_1
    move v6, v7

    :goto_5
    return v6

    .line 1750
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1751
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1752
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/b;->asr(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/e;)V

    .line 1754
    if-nez p1, :cond_3

    move v2, v6

    move v3, v6

    .line 1758
    :goto_6
    if-nez p2, :cond_4

    move v0, v6

    move v1, v6

    .line 1762
    :goto_7
    invoke-static {}, Landroid/support/v4/os/b;->asq()V

    .line 1763
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 1764
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1765
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    move v4, v1

    move v1, v2

    move v2, v0

    goto :goto_0

    .line 1755
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/p;->scrollHorizontallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v2

    .line 1756
    sub-int v3, p1, v2

    goto :goto_6

    .line 1759
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p2, v1, v4}, Landroid/support/v7/widget/p;->scrollVerticallyBy(ILandroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 1760
    sub-int v1, p2, v0

    goto :goto_7

    .line 1768
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 1774
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1775
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1776
    if-nez p3, :cond_7

    .line 1779
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    aput v3, v0, v6

    .line 1780
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v0, v7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v4, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    goto :goto_2

    .line 1777
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_8

    .line 1782
    :cond_8
    if-nez p3, :cond_a

    .line 1785
    :cond_9
    :goto_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto/16 :goto_2

    .line 1782
    :cond_a
    const/16 v0, 0x2002

    invoke-static {p3, v0}, Landroid/support/v4/view/x;->ahv(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1783
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    int-to-float v4, v4

    invoke-direct {p0, v0, v3, v5, v4}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    goto :goto_9

    .line 1787
    :cond_b
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1791
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_4

    .line 1793
    :cond_d
    if-nez v2, :cond_1

    goto/16 :goto_5
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 1649
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .prologue
    .line 1599
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1602
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->scrollToPosition(I)V

    .line 1609
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 1610
    return-void

    .line 1600
    :cond_0
    return-void

    .line 1604
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 3302
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3305
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3306
    return-void

    .line 3303
    :cond_0
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/z;)V
    .locals 1

    .prologue
    .line 664
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    .line 665
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/z;

    invoke-static {p0, v0}, Landroid/support/v4/view/f;->agu(Landroid/view/View;Landroid/support/v4/view/c;)V

    .line 666
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/q;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1051
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V

    .line 1052
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1053
    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/a;)V
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-eq p1, v0, :cond_0

    .line 1537
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    .line 1538
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1539
    return-void

    .line 1535
    :cond_0
    return-void

    .line 1538
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/j;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10814
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10819
    iget-object v0, p1, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/f;->agC(Landroid/view/View;I)V

    .line 10820
    const/4 v0, 0x1

    return v0

    .line 10815
    :cond_0
    iput p2, p1, Landroid/support/v7/widget/j;->mPendingAccessibilityState:I

    .line 10816
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10817
    return v1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 965
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-ne p1, v0, :cond_0

    .line 968
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 969
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 970
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 973
    :goto_1
    return-void

    .line 966
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1
.end method

.method setDataSetChangedAfterLayout()V
    .locals 1

    .prologue
    .line 4250
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4251
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4252
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 952
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 953
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3206
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_0

    .line 3210
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    .line 3211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_1

    .line 3214
    :goto_1
    return-void

    .line 3207
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->XE()V

    .line 3208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Xq(Landroid/support/v7/widget/x;)V

    goto :goto_0

    .line 3212
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b;->Xq(Landroid/support/v7/widget/x;)V

    goto :goto_1
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->Yt(I)V

    .line 1411
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2006
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-ne p1, v0, :cond_0

    .line 2024
    :goto_0
    return-void

    .line 2007
    :cond_0
    const-string/jumbo v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2008
    if-eqz p1, :cond_1

    .line 2015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2016
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2018
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2019
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2020
    iput-boolean v8, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2021
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    goto :goto_0

    .line 2009
    :cond_1
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2010
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 2013
    :cond_2
    :goto_1
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0

    .line 2010
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_2

    .line 2011
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1
.end method

.method public setLayoutManager(Landroid/support/v7/widget/p;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eq p1, v0, :cond_1

    .line 1205
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-nez v0, :cond_2

    .line 1223
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1226
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0}, Landroid/support/v7/widget/A;->ZD()V

    .line 1227
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    .line 1228
    if-nez p1, :cond_5

    .line 1239
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->Yv()V

    .line 1240
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1241
    return-void

    .line 1203
    :cond_1
    return-void

    .line 1210
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    if-nez v0, :cond_3

    .line 1213
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleAllViews(Landroid/support/v7/widget/s;)V

    .line 1214
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/p;->removeAndRecycleScrapInt(Landroid/support/v7/widget/s;)V

    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->clear()V

    .line 1217
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_4

    .line 1220
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/p;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1221
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/b;

    invoke-virtual {v0}, Landroid/support/v7/widget/b;->XE()V

    goto :goto_2

    .line 1218
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/p;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/s;)V

    goto :goto_3

    .line 1229
    :cond_5
    iget-object v0, p1, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 1234
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1235
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/p;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 1230
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/p;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1232
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 10871
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a;->setNestedScrollingEnabled(Z)V

    .line 10872
    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/d;)V
    .locals 0

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/d;

    .line 1253
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/m;)V
    .locals 0

    .prologue
    .line 1551
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/m;

    .line 1552
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .prologue
    .line 4316
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4317
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/t;)V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->setRecycledViewPool(Landroid/support/v7/widget/t;)V

    .line 1385
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/l;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/l;

    .line 1130
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 1431
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 1432
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1435
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1436
    return-void

    .line 1425
    :cond_0
    return-void

    .line 1433
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    goto :goto_0
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1003
    packed-switch p1, :pswitch_data_0

    .line 1005
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

    .line 1009
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 1016
    :goto_0
    return-void

    .line 1013
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/r;)V
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/s;->setViewCacheExtension(Landroid/support/v7/widget/r;)V

    .line 1396
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3286
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3297
    return v1

    .line 3288
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 3291
    :goto_0
    if-eqz v0, :cond_2

    .line 3294
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3295
    const/4 v0, 0x1

    return v0

    .line 3289
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/a/n;->afY(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3292
    goto :goto_1
.end method

.method public smoothScrollBy(II)V
    .locals 1

    .prologue
    .line 2043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2044
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2055
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v1, :cond_1

    .line 2060
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v1, :cond_2

    .line 2063
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2066
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    invoke-virtual {v1}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2069
    :goto_1
    if-eqz p1, :cond_5

    .line 2070
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/v;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2072
    :goto_2
    return-void

    .line 2056
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return-void

    .line 2061
    :cond_2
    return-void

    :cond_3
    move p1, v0

    .line 2064
    goto :goto_0

    :cond_4
    move p2, v0

    .line 2067
    goto :goto_1

    .line 2069
    :cond_5
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .prologue
    .line 1636
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1639
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/p;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;I)V

    .line 1645
    return-void

    .line 1637
    :cond_0
    return-void

    .line 1640
    :cond_1
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .prologue
    .line 10881
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .prologue
    .line 10886
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/a;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 10891
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/a;->stopNestedScroll()V

    .line 10892
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .prologue
    .line 10896
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a;->stopNestedScroll(I)V

    .line 10897
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 2143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2144
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 2145
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/q;Z)V
    .locals 1

    .prologue
    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1035
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/q;ZZ)V

    .line 1036
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 1037
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 1038
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4211
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v1}, Landroid/support/v7/widget/A;->Zv()I

    move-result v2

    .line 4212
    add-int v3, p1, p2

    move v1, v0

    .line 4214
    :goto_0
    if-lt v1, v2, :cond_0

    .line 4229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->Yx(II)V

    .line 4230
    return-void

    .line 4215
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/A;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/A;->Zr(I)Landroid/view/View;

    move-result-object v0

    .line 4216
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v4

    .line 4217
    if-nez v4, :cond_2

    .line 4214
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4217
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/j;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4220
    iget v5, v4, Landroid/support/v7/widget/j;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Landroid/support/v7/widget/j;->mPosition:I

    if-ge v5, v3, :cond_1

    .line 4223
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/j;->addFlags(I)V

    .line 4224
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/j;->addChangePayload(Ljava/lang/Object;)V

    .line 4226
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/i;->QI:Z

    goto :goto_1
.end method
