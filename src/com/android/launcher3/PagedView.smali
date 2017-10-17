.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# static fields
.field private static REORDERING_DROP_REPOSITION_DURATION:I

.field static REORDERING_REORDER_REPOSITION_DURATION:I

.field private static REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field private static final sTmpIntPoint:[I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field private mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field private mFreeScroll:Z

.field private mFreeScrollMaxScrollX:I

.field private mFreeScrollMinScrollX:I

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsPageInTransition:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field private mLastMotionX:F

.field private mLastMotionXRemainder:F

.field private mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field private mNormalChildHeight:I

.field protected mOverScrollX:I

.field protected mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

.field mPageIndicatorViewId:I

.field private mPageScrolls:[I

.field mPageSpacing:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field protected mScroller:Lcom/android/launcher3/LauncherScroller;

.field mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mTempVisiblePagesRange:[I

.field private mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mUnboundedScrollX:I

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 169
    const/16 v0, 0xc8

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 170
    const/16 v0, 0x12c

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 171
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 189
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 190
    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    .line 191
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 91
    iput v1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 92
    iput v1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 98
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 106
    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 111
    iput v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 134
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 140
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    .line 145
    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 147
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 174
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 177
    iput v1, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 179
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 209
    sget-object v0, Lcom/android/launcher3/R$styleable;->PagedView:[I

    .line 208
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->init()V

    .line 216
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->abortAnimation()V

    .line 372
    if-eqz p1, :cond_0

    .line 373
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 375
    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1779
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1782
    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2027
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2029
    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 2030
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2029
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2028
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2034
    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    .line 2028
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2035
    new-instance v1, Lcom/android/launcher3/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$3;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2041
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2043
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 1873
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 1874
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 1875
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private forceFinishScroller(Z)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->forceFinished(Z)V

    .line 381
    if-eqz p1, :cond_0

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 384
    :cond_0
    return-void
.end method

.method private getNearestHoverOverPageIndex()I
    .locals 6

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1436
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1435
    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 1437
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1438
    const v2, 0x7fffffff

    .line 1439
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1440
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gt v0, v3, :cond_1

    .line 1441
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1442
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 1443
    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1444
    if-ge v3, v2, :cond_0

    move v1, v0

    move v2, v3

    .line 1440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    :cond_1
    return v1

    .line 1451
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 8

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1826
    const v3, 0x7fffffff

    .line 1827
    const/4 v0, -0x1

    .line 1828
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    .line 1829
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 1830
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1831
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1832
    div-int/lit8 v2, v2, 0x2

    .line 1833
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1834
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1835
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 1829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 1840
    :cond_0
    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .prologue
    .line 1125
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1126
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1125
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1127
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3

    .prologue
    .line 263
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 264
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 266
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 267
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 256
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 258
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 259
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 260
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    .line 1795
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1796
    iget v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v2, v3, :cond_1

    .line 1800
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1801
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1802
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1803
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1804
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1805
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1809
    :cond_1
    return-void
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1311
    sub-float v0, p1, v2

    .line 1312
    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1785
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1787
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1788
    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1790
    :cond_0
    return-void
.end method

.method private removeMarkerForView()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->removeMarker()V

    .line 939
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1726
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1727
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->endReordering()V

    .line 1728
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1729
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1730
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1731
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 552
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 555
    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 556
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 559
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 560
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 565
    :cond_0
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1411
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1412
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1414
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v1, :cond_2

    .line 1415
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1416
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1417
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1426
    :cond_0
    :goto_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableOverscroll(Z)V

    .line 1427
    return-void

    .line 1419
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1422
    :cond_2
    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 272
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 273
    iget v1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 272
    add-float/2addr v0, v1

    .line 274
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 275
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 281
    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 434
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 391
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v3, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    .line 396
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1041
    return-void

    .line 1045
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1046
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1048
    :cond_1
    const/16 v0, 0x11

    if-ne p2, v0, :cond_3

    .line 1049
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    .line 1050
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1057
    :cond_2
    :goto_0
    return-void

    .line 1052
    :cond_3
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1053
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1054
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addFullScreenPage(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    .line 661
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 662
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 663
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1270
    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1273
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 656
    instance-of v0, p1, Lcom/android/launcher3/PagedView$LayoutParams;

    return v0
.end method

.method protected computeMaxScrollX()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 899
    if-lez v1, :cond_1

    .line 900
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 901
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    return v0

    .line 900
    :cond_0
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 903
    :cond_1
    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 615
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->computeScrollHelper(Z)Z

    move-result v0

    return v0
.end method

.method protected computeScrollHelper(Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 573
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 575
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 578
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    .line 579
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 580
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 582
    :cond_1
    if-eqz p1, :cond_2

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 585
    :cond_2
    return v4

    .line 577
    :cond_3
    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 578
    goto :goto_1

    .line 586
    :cond_5
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, v2, :cond_8

    if-eqz p1, :cond_8

    .line 587
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 589
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 590
    iget v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 591
    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 592
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 596
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v0, :cond_6

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 600
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 602
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 601
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 603
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 605
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 607
    :cond_7
    return v4

    .line 609
    :cond_8
    return v3
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1351
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    .line 1353
    int-to-float v0, v1

    div-float v0, p1, v0

    .line 1355
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1357
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1360
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 1361
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1364
    :cond_1
    const v2, 0x3d8f5c29    # 0.07f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1365
    cmpg-float v1, p1, v4

    if-gez v1, :cond_2

    .line 1366
    iput v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1367
    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1372
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1373
    return-void

    .line 1369
    :cond_2
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1370
    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1230
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1231
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1239
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1240
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 1243
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1244
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1245
    float-to-int v3, v2

    float-to-int v0, v0

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1247
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1249
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1250
    if-le v0, v3, :cond_3

    move v0, v1

    .line 1252
    :goto_0
    if-eqz v0, :cond_2

    .line 1254
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1255
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1256
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1258
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1259
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1261
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1263
    :cond_2
    return-void

    .line 1250
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableFreeScroll()V
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1397
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x42

    const/16 v1, 0x11

    const/4 v3, 0x1

    .line 1013
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    return v3

    .line 1017
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    .line 1018
    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1024
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_3

    .line 1025
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_4

    .line 1026
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1027
    return v3

    .line 1020
    :cond_2
    if-ne p2, v0, :cond_1

    move p2, v1

    .line 1021
    goto :goto_0

    .line 1029
    :cond_3
    if-ne p2, v0, :cond_4

    .line 1030
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 1031
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1032
    return v3

    .line 1035
    :cond_4
    return v4
.end method

.method public enableFreeScroll()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1391
    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1392
    return v0
.end method

.method endReordering()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2105
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 2106
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2108
    new-instance v0, Lcom/android/launcher3/PagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$4;-><init>(Lcom/android/launcher3/PagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2119
    const/4 v0, 0x2

    .line 2118
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2121
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2123
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->animateDragViewToOriginalPosition()V

    .line 2124
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1068
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 1071
    :goto_0
    if-ne v0, v1, :cond_0

    .line 1072
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1073
    return-void

    .line 1075
    :cond_0
    if-ne v0, p0, :cond_1

    .line 1076
    return-void

    .line 1078
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1079
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1080
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 1082
    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 646
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 651
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 974
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    return v1

    .line 976
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 978
    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2189
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2188
    const v2, 0x7f0c0046

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 982
    aput v1, p1, v1

    .line 983
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 984
    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1334
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1335
    :cond_0
    return v1

    .line 1334
    :cond_1
    if-ltz p1, :cond_0

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1340
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 1341
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v0, :cond_3

    .line 1342
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    .line 1345
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    .line 1346
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v0, v0

    return v0

    .line 1342
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getNextPage()I
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getNormalChildHeight()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 1

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method protected getPageSnapDuration()I
    .locals 1

    .prologue
    .line 1852
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    const/16 v0, 0x10e

    return v0

    .line 1855
    :cond_0
    const/16 v0, 0x2ee

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1301
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1302
    :cond_0
    return v1

    .line 1301
    :cond_1
    if-ltz p1, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1276
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1278
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    .line 1279
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    .line 1283
    add-int/lit8 v0, p3, 0x1

    .line 1284
    if-gez v1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_2

    .line 1285
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 1288
    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 1289
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v2

    .line 1294
    :goto_0
    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v1, v0

    .line 1295
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1296
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1297
    return v0

    .line 1291
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getUnboundedScrollX()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    return v0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected indexToPage(I)I
    .locals 0

    .prologue
    .line 349
    return p1
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    new-instance v0, Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 223
    new-instance v0, Lcom/android/launcher3/PagedView$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 228
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 231
    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 232
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 233
    const v1, 0x44bb8000    # 1500.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 234
    invoke-virtual {p0, p0}, Lcom/android/launcher3/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10104ce

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    .line 238
    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 247
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-void
.end method

.method protected isInOverScroll()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1848
    iget v2, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected isPageInTransition()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3

    .prologue
    .line 2096
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2097
    if-eqz p1, :cond_1

    .line 2098
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2100
    :goto_1
    return v0

    .line 2098
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 424
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->addMarker()V

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 923
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 924
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 929
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 930
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 931
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .prologue
    .line 2066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2067
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1748
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1774
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1754
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1756
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v3, v4

    .line 1761
    :goto_0
    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    .line 1762
    :cond_1
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_5

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    cmpg-float v2, v3, v4

    if-gez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1764
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1765
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 1769
    :goto_2
    return v1

    .line 1758
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v3, v2

    .line 1759
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_0

    .line 1763
    :cond_5
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_6

    cmpl-float v2, v3, v4

    if-lez v2, :cond_3

    :cond_6
    move v0, v1

    goto :goto_1

    .line 1767
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1749
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2194
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2157
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2158
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2159
    return-void

    .line 2158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2130
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2131
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2132
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2133
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2135
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2136
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2138
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2143
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2144
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2145
    return-void

    :cond_2
    move v0, v1

    .line 2131
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1140
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1148
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1149
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v3, v0, :cond_1

    .line 1150
    return v0

    .line 1153
    :cond_1
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1226
    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz v2, :cond_7

    :goto_1
    return v0

    .line 1159
    :pswitch_1
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1160
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1171
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1174
    iput v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1175
    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1176
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1177
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1178
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1179
    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1180
    aget v3, v2, v1

    iput v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1181
    aget v2, v2, v0

    iput v2, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1182
    iput v5, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1183
    iput v5, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1184
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1191
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1192
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    :cond_3
    move v2, v0

    .line 1194
    :goto_2
    if-eqz v2, :cond_5

    .line 1195
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1196
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1197
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1198
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1192
    goto :goto_2

    .line 1201
    :cond_5
    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1202
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_0

    .line 1204
    :cond_6
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_0

    .line 1213
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1217
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1218
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1226
    goto/16 :goto_1

    .line 1153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 782
    return-void

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 788
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v9

    .line 789
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetY()I

    move-result v5

    .line 792
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 794
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    .line 795
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    move v2, v0

    .line 796
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v4, v0

    .line 798
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v6

    add-int v10, v0, v6

    .line 800
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 803
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    add-int v7, v9, v0

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v3, v0, :cond_2

    .line 805
    :cond_1
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    :cond_2
    move v8, v1

    .line 808
    :goto_4
    if-eq v8, v2, :cond_c

    .line 809
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 810
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    .line 811
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 813
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_7

    move v1, v5

    .line 820
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 821
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 825
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v7

    add-int/2addr v12, v1

    .line 824
    invoke-virtual {v6, v7, v1, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 827
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 828
    :goto_6
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    sub-int v1, v7, v1

    sub-int/2addr v1, v9

    aput v1, v6, v8

    .line 830
    iget v6, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 831
    add-int v1, v8, v4

    .line 832
    if-eq v1, v2, :cond_9

    .line 833
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 840
    :goto_7
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_a

    .line 841
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    .line 846
    :goto_8
    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 808
    :goto_9
    add-int v1, v8, v4

    move v8, v1

    move v7, v0

    goto :goto_4

    .line 794
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 795
    goto/16 :goto_1

    .line 796
    :cond_5
    const/4 v0, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 803
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 816
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    iget-object v11, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v11

    iget-object v12, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v1, v11

    goto :goto_5

    .line 827
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    goto :goto_6

    .line 835
    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    .line 842
    :cond_a
    if-eqz v1, :cond_b

    iget-boolean v0, v1, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_11

    .line 843
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    goto :goto_8

    :cond_b
    move v0, v6

    .line 842
    goto :goto_8

    .line 850
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 853
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 854
    new-instance v1, Lcom/android/launcher3/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 874
    :goto_a
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ge v0, v3, :cond_d

    .line 875
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 879
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v0, v3, :cond_e

    .line 880
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 882
    :cond_e
    iput v3, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    .line 884
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 885
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 887
    :cond_f
    return-void

    .line 871
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    goto :goto_a

    :cond_11
    move v0, v6

    goto/16 :goto_8

    :cond_12
    move v0, v7

    goto/16 :goto_9
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 672
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 673
    return-void

    .line 678
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 679
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 680
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 681
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 684
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 685
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    .line 686
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 685
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 688
    int-to-float v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 689
    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 691
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    if-eqz v3, :cond_2

    .line 692
    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 693
    int-to-float v0, v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v3, v1

    move v1, v0

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 700
    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    .line 701
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 702
    return-void

    :cond_2
    move v1, v2

    move v3, v4

    .line 696
    goto :goto_0

    .line 706
    :cond_3
    if-lez v4, :cond_4

    if-gtz v2, :cond_5

    .line 707
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 708
    return-void

    .line 716
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v2

    add-int v9, v0, v2

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v2

    add-int v10, v0, v2

    .line 719
    const/4 v4, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v11

    .line 728
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v11, :cond_9

    .line 730
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .line 731
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    .line 732
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 739
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v2, :cond_8

    .line 740
    iget v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    .line 741
    const/high16 v2, -0x80000000

    .line 746
    :goto_2
    iget v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_7

    .line 747
    const/high16 v0, -0x80000000

    .line 752
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v5

    sub-int/2addr v5, v10

    .line 753
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 752
    sub-int/2addr v5, v6

    .line 753
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 752
    sub-int v6, v5, v6

    .line 754
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v5

    sub-int/2addr v5, v9

    .line 755
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 754
    sub-int/2addr v5, v7

    .line 755
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 754
    sub-int/2addr v5, v7

    .line 756
    iput v5, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    move v7, v2

    move v2, v6

    move v6, v0

    .line 764
    :goto_4
    if-nez v4, :cond_a

    move v0, v2

    .line 769
    :goto_5
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 771
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 772
    invoke-virtual {v12, v2, v4}, Landroid/view/View;->measure(II)V

    .line 728
    :goto_6
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v4, v0

    goto :goto_1

    .line 743
    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 749
    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_3

    .line 758
    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    .line 759
    const/high16 v5, 0x40000000    # 2.0f

    .line 761
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v2

    .line 762
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v0

    move v7, v6

    move v6, v5

    move v5, v0

    goto :goto_4

    .line 775
    :cond_9
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 776
    return-void

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_b
    move v0, v4

    goto :goto_6
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 466
    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2057
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2058
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2059
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2061
    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2063
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 999
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1000
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1004
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1005
    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 1002
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_0

    .line 1008
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 1737
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 1740
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 2047
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 2048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2052
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 2053
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1456
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1459
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1461
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1465
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1718
    :cond_1
    :goto_0
    :pswitch_0
    return v9

    .line 1471
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1472
    invoke-direct {p0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1476
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1478
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1479
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1480
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1481
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1482
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1483
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1484
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1486
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_1

    .line 1487
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1488
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    goto :goto_0

    .line 1493
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_5

    .line 1495
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1497
    if-ne v0, v3, :cond_3

    return v9

    .line 1499
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1500
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 1502
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1507
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1508
    float-to-int v2, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    .line 1509
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1510
    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    goto :goto_0

    .line 1512
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 1514
    :cond_5
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_7

    .line 1516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1521
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1522
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1523
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1524
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1527
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1534
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->getNearestHoverOverPageIndex()I

    move-result v1

    .line 1536
    if-lez v1, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1537
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v4, v2, v4

    .line 1538
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v9

    .line 1539
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1540
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v2, v1, :cond_1

    .line 1541
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v9

    if-gt v1, v2, :cond_1

    .line 1542
    iget v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    .line 1540
    if-eqz v2, :cond_1

    .line 1543
    iput v1, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1544
    new-instance v2, Lcom/android/launcher3/PagedView$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/PagedView$2;-><init>(Lcom/android/launcher3/PagedView;II)V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1588
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1591
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1592
    iput v3, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_0

    .line 1595
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1600
    :pswitch_3
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_1a

    .line 1601
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1602
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1603
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1604
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1605
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1606
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 1607
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v0, v1, v0

    float-to-int v3, v0

    .line 1608
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1609
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v2

    .line 1610
    const v7, 0x3ecccccd    # 0.4f

    .line 1609
    mul-float/2addr v6, v7

    cmpl-float v0, v0, v6

    if-lez v0, :cond_c

    move v0, v9

    .line 1612
    :goto_1
    iget v6, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v7, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v8, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v7, v8

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v6

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1614
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_d

    .line 1615
    invoke-virtual {p0, v5}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v1

    .line 1617
    :goto_2
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v6, :cond_18

    .line 1622
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_e

    .line 1623
    int-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_e

    .line 1622
    if-eqz v1, :cond_21

    move v2, v9

    .line 1631
    :goto_3
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_10

    if-lez v3, :cond_f

    :goto_4
    move v3, v9

    .line 1632
    :goto_5
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_11

    if-lez v5, :cond_8

    :goto_6
    move v4, v9

    .line 1633
    :cond_8
    if-eqz v0, :cond_9

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_9

    xor-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_a

    .line 1634
    :cond_9
    if-eqz v1, :cond_13

    xor-int/lit8 v6, v4, 0x1

    .line 1633
    if-eqz v6, :cond_13

    .line 1634
    :cond_a
    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v6, :cond_13

    .line 1635
    if-eqz v2, :cond_12

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1636
    :goto_7
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    .line 1660
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1699
    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1701
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    :cond_c
    move v0, v4

    .line 1609
    goto :goto_1

    :cond_d
    move v1, v4

    .line 1614
    goto :goto_2

    :cond_e
    move v2, v4

    .line 1623
    goto :goto_3

    :cond_f
    move v3, v4

    .line 1631
    goto :goto_5

    :cond_10
    if-gez v3, :cond_f

    goto :goto_4

    .line 1632
    :cond_11
    if-gez v5, :cond_8

    goto :goto_6

    .line 1635
    :cond_12
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1637
    :cond_13
    if-eqz v0, :cond_14

    if-eqz v3, :cond_14

    xor-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_15

    .line 1638
    :cond_14
    if-eqz v1, :cond_17

    .line 1637
    if-eqz v4, :cond_17

    .line 1639
    :cond_15
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_17

    .line 1640
    if-eqz v2, :cond_16

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1641
    :goto_a
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1640
    :cond_16
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1643
    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1646
    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1647
    invoke-direct {p0, v9}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1650
    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v10

    .line 1651
    neg-int v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v3, v0

    .line 1652
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v1, v0

    .line 1654
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1655
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1656
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v2

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v7, v4

    move v8, v4

    .line 1655
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/LauncherScroller;->fling(IIIIIIII)V

    .line 1657
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1658
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    goto/16 :goto_8

    .line 1661
    :cond_1a
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 1665
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1666
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1b

    .line 1667
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_9

    .line 1669
    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_9

    .line 1671
    :cond_1c
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 1675
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1676
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1d

    .line 1677
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_9

    .line 1679
    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_9

    .line 1681
    :cond_1e
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_1f

    .line 1683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1688
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1689
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1690
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1691
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_9

    .line 1693
    :cond_1f
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    if-nez v0, :cond_b

    .line 1694
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 1705
    :pswitch_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_20

    .line 1706
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1707
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1709
    :cond_20
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1713
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1714
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_21
    move v2, v4

    goto/16 :goto_3

    .line 1465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1744
    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->dampedOverScroll(F)V

    .line 1377
    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 440
    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 447
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2163
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    return v2

    .line 2166
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2180
    :cond_1
    return v3

    .line 2168
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 2170
    return v2

    .line 2174
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2175
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 2176
    return v2

    .line 2166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1992
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 970
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 971
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 946
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 947
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .prologue
    .line 959
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 960
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 961
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 953
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 954
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1813
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 1815
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1816
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1818
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 989
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 990
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 991
    const/4 v0, 0x1

    return v0

    .line 993
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1092
    if-eqz p1, :cond_0

    .line 1095
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1098
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1099
    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 490
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1983
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1986
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1987
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v0, :cond_1

    .line 500
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 503
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 504
    iget v3, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 507
    :cond_2
    iput p1, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    .line 509
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_5

    :goto_0
    move v0, v1

    .line 510
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_8

    if-gez p1, :cond_7

    :goto_2
    move v3, v1

    .line 511
    :goto_3
    if-eqz v0, :cond_b

    .line 512
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    :goto_4
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 513
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_3

    .line 514
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 515
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_a

    .line 516
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 541
    :cond_3
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 542
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v3}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 543
    aget v2, v0, v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 544
    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 545
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 547
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 509
    goto :goto_1

    :cond_6
    if-gez p1, :cond_5

    goto :goto_0

    :cond_7
    move v3, v2

    .line 510
    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_7

    goto :goto_2

    :cond_9
    move v0, v2

    .line 512
    goto :goto_4

    .line 518
    :cond_a
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 521
    :cond_b
    if-eqz v3, :cond_e

    .line 522
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_c

    move v0, v2

    :goto_6
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 523
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_3

    .line 524
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 525
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_d

    .line 526
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 522
    :cond_c
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_6

    .line 528
    :cond_d
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 532
    :cond_e
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_f

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 534
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 536
    :cond_f
    iput p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 537
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_5
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .prologue
    .line 2150
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2151
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2153
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    return-void

    .line 411
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 412
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 416
    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0

    .prologue
    .line 1430
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1431
    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    .prologue
    .line 284
    iput p1, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 287
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    .line 477
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 481
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .prologue
    .line 908
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 909
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 910
    return-void
.end method

.method public setScaleX(F)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 291
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 294
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 295
    aget v0, v0, v2

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 296
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 298
    :cond_0
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2

    .prologue
    .line 1722
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1845
    return-void
.end method

.method public snapToPage(I)V
    .locals 1

    .prologue
    .line 1913
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1914
    return-void
.end method

.method protected snapToPage(II)V
    .locals 2

    .prologue
    .line 1921
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1922
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    .prologue
    .line 1938
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1939
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 1945
    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1947
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1948
    if-eqz p4, :cond_3

    move v5, v2

    .line 1954
    :goto_0
    if-eqz v5, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1959
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1962
    :cond_1
    if-eqz p5, :cond_4

    .line 1963
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1968
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 1970
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1973
    if-eqz p4, :cond_2

    .line 1974
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1975
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1978
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1979
    return-void

    .line 1950
    :cond_3
    if-nez p3, :cond_5

    .line 1951
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0

    .line 1965
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_5
    move v5, p3

    goto :goto_0
.end method

.method protected snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    .prologue
    .line 1925
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1926
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .prologue
    .line 1930
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1932
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 1933
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v2

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1934
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1935
    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 3

    .prologue
    .line 1917
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1918
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1879
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 1880
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1882
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1883
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1886
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_0

    .line 1889
    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1890
    return-void

    .line 1897
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1898
    int-to-float v4, v1

    int-to-float v1, v1

    .line 1899
    invoke-direct {p0, v3}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    .line 1898
    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1901
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1902
    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1907
    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1909
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(III)V

    .line 1910
    return-void
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2070
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2073
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    return v3

    .line 2075
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v3, v1, v3

    .line 2076
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 2077
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 2078
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2081
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-gt v1, v0, :cond_2

    .line 2082
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v0, v1, :cond_2

    .line 2084
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2085
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2086
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    .line 2087
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2088
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->disableFreeScroll()V

    .line 2089
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 2090
    return v4

    .line 2092
    :cond_2
    return v3
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 361
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 363
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 364
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 366
    return-void

    :cond_0
    move v0, v1

    .line 360
    goto :goto_0
.end method

.method updateFreescrollBounds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1400
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1401
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1403
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 1408
    :goto_0
    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1406
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    goto :goto_0
.end method

.method updateMaxScrollX()V
    .locals 1

    .prologue
    .line 894
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    .line 895
    return-void
.end method
