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

.field private final mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

.field private final mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

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

.field private mUseMinScale:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field protected mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 158
    const/16 v0, 0xc8

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 159
    const/16 v0, 0x12c

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 160
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 179
    new-array v0, v1, [F

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    .line 180
    new-array v0, v1, [I

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 87
    iput v1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 88
    iput v1, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 94
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 102
    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 107
    iput v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 130
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 136
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    .line 141
    iput v1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 143
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 153
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 163
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 166
    iput v1, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 168
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 183
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-direct {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    .line 188
    new-instance v0, Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-direct {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    .line 202
    sget-object v0, Lcom/android/launcher3/R$styleable;->PagedView:[I

    .line 201
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->init()V

    .line 209
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->abortAnimation()V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 371
    :cond_0
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1764
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1767
    return-void
.end method

.method private animateDragViewToOriginalPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2001
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2003
    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    .line 2004
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2003
    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2002
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2008
    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    .line 2002
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2009
    new-instance v1, Lcom/android/launcher3/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$3;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2015
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 2017
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 1847
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 1848
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 1849
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private forceFinishScroller(Z)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->forceFinished(Z)V

    .line 377
    if-eqz p1, :cond_0

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 380
    :cond_0
    return-void
.end method

.method private getNearestHoverOverPageIndex()I
    .locals 6

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1422
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 1423
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    .line 1422
    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 1424
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1425
    const v2, 0x7fffffff

    .line 1426
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1427
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gt v0, v3, :cond_1

    .line 1428
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1429
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    .line 1430
    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1431
    if-ge v3, v2, :cond_0

    move v1, v0

    move v2, v3

    .line 1427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1436
    :cond_1
    return v1

    .line 1438
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 8

    .prologue
    .line 1810
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1811
    const v3, 0x7fffffff

    .line 1812
    const/4 v0, -0x1

    .line 1813
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    .line 1814
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    .line 1815
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1816
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1817
    div-int/lit8 v2, v2, 0x2

    .line 1818
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1819
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1820
    if-ge v2, v3, :cond_1

    move v0, v1

    .line 1814
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 1825
    :cond_0
    return v0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .prologue
    .line 1155
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

    .line 1156
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1155
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1157
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3

    .prologue
    .line 259
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 260
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 262
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 263
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p2, v0, v3

    .line 252
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aput p3, v0, v4

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 254
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 255
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 256
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    .line 1780
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1781
    iget v3, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v2, v3, :cond_1

    .line 1785
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1786
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1787
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1788
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1789
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1790
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1794
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1770
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1772
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1773
    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1775
    :cond_0
    return-void
.end method

.method private removeMarkerForView()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->removeMarker()V

    .line 928
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1709
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1710
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->endReordering()V

    .line 1711
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1712
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1713
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1714
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onRelease()V

    .line 1715
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onRelease()V

    .line 1716
    return-void
.end method

.method private sendScrollAccessibilityEvent()V
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 544
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 547
    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 548
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 549
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 550
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 551
    iget v1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 557
    :cond_0
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1398
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1399
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1401
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v1, :cond_2

    .line 1402
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 1403
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1404
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v2

    if-ge v0, v1, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1413
    :cond_0
    :goto_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableOverscroll(Z)V

    .line 1414
    return-void

    .line 1406
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1409
    :cond_2
    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 269
    iget v1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 268
    add-float/2addr v0, v1

    .line 270
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 271
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 277
    :cond_0
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v3

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 387
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v3, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    .line 392
    return v0
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1071
    return-void

    .line 1075
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1076
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1078
    :cond_1
    const/16 v0, 0x11

    if-ne p2, v0, :cond_3

    .line 1079
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    .line 1080
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1087
    :cond_2
    :goto_0
    return-void

    .line 1082
    :cond_3
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 1083
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 1084
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
    .line 650
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 652
    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 653
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1303
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 646
    instance-of v0, p1, Lcom/android/launcher3/PagedView$LayoutParams;

    return v0
.end method

.method protected computeMaxScrollX()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 889
    if-lez v1, :cond_1

    .line 890
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    .line 891
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    return v0

    .line 890
    :cond_0
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 893
    :cond_1
    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    .line 605
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 1

    .prologue
    .line 561
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

    .line 565
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    .line 570
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 571
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 573
    :cond_1
    if-eqz p1, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 576
    :cond_2
    return v4

    :cond_3
    move v0, v1

    .line 569
    goto :goto_0

    .line 577
    :cond_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    if-eq v0, v2, :cond_7

    if-eqz p1, :cond_7

    .line 578
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->sendScrollAccessibilityEvent()V

    .line 580
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 581
    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 586
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v0, :cond_5

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 593
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 595
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 597
    :cond_6
    return v4

    .line 599
    :cond_7
    return v3
.end method

.method protected dampedOverScroll(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1358
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    .line 1359
    int-to-float v0, v0

    div-float v0, p1, v0

    .line 1360
    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onPull(F)V

    .line 1367
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1368
    return-void

    .line 1362
    :cond_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_1

    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->onPull(F)V

    goto :goto_0

    .line 1365
    :cond_1
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 1260
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1261
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1269
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1270
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    .line 1273
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1274
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1275
    float-to-int v3, v2

    float-to-int v0, v0

    invoke-direct {p0, v3, v0}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1277
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1279
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1280
    if-le v0, v3, :cond_3

    move v0, v1

    .line 1282
    :goto_0
    if-eqz v0, :cond_2

    .line 1284
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1285
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1286
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1288
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1289
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1291
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1293
    :cond_2
    return-void

    .line 1280
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableFreeScroll()V
    .locals 1

    .prologue
    .line 1383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1384
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x42

    const/16 v1, 0x11

    const/4 v3, 0x1

    .line 1043
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    return v3

    .line 1047
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    .line 1048
    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1054
    :cond_1
    :goto_0
    if-ne p2, v1, :cond_3

    .line 1055
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_4

    .line 1056
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1057
    return v3

    .line 1050
    :cond_2
    if-ne p2, v0, :cond_1

    move p2, v1

    .line 1051
    goto :goto_0

    .line 1059
    :cond_3
    if-ne p2, v0, :cond_4

    .line 1060
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 1061
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1062
    return v3

    .line 1065
    :cond_4
    return v4
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 977
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 979
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 980
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 981
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 982
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 983
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 985
    sget-object v3, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getEdgeVerticalPosition([I)V

    .line 986
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 987
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setSize(II)V

    .line 988
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 991
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LauncherEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 994
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 995
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 996
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    aget v0, v5, v0

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 997
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 999
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getEdgeVerticalPosition([I)V

    .line 1001
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v0, v0, v1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1002
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    sget-object v4, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v4, v4, v6

    sget-object v5, Lcom/android/launcher3/PagedView;->sTmpIntPoint:[I

    aget v1, v5, v1

    sub-int v1, v4, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setSize(II)V

    .line 1003
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->postInvalidateOnAnimation()V

    .line 1006
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1009
    :cond_3
    return-void

    .line 996
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public enableFreeScroll()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1378
    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1379
    return v0
.end method

.method endReordering()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2079
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 2080
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2082
    new-instance v0, Lcom/android/launcher3/PagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$4;-><init>(Lcom/android/launcher3/PagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2093
    const/4 v0, 0x2

    .line 2092
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2095
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 2097
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->animateDragViewToOriginalPosition()V

    .line 2098
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1098
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    .line 1101
    :goto_0
    if-ne v0, v1, :cond_0

    .line 1102
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1103
    return-void

    .line 1105
    :cond_0
    if-ne v0, p0, :cond_1

    .line 1106
    return-void

    .line 1108
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1109
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1110
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 1112
    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/PagedView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 636
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 641
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/PagedView$LayoutParams;
    .locals 2

    .prologue
    .line 631
    new-instance v0, Lcom/android/launcher3/PagedView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/PagedView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getChildGap()I
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 963
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    return v1

    .line 965
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 967
    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2162
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2163
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

    .line 2162
    const v2, 0x7f0c0044

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getEdgeVerticalPosition([I)V
.end method

.method protected getFreeScrollPageRange([I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    aput v1, p1, v1

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 973
    return-void
.end method

.method public getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1341
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1342
    :cond_0
    return v1

    .line 1341
    :cond_1
    if-ltz p1, :cond_0

    .line 1344
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1347
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 1348
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v0, :cond_3

    .line 1349
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    .line 1352
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    .line 1353
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-int v0, v0

    return v0

    .line 1349
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
    .line 333
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
    .line 656
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2158
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 1

    .prologue
    .line 1806
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method public getScrollForPage(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1331
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1332
    :cond_0
    return v1

    .line 1331
    :cond_1
    if-ltz p1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1306
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1308
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, p1, v0

    .line 1309
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    .line 1313
    add-int/lit8 v0, p3, 0x1

    .line 1314
    if-gez v1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    if-lez v1, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_2

    .line 1315
    :cond_1
    add-int/lit8 v0, p3, -0x1

    .line 1318
    :cond_2
    if-ltz v0, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_4

    .line 1319
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v0, v2

    .line 1324
    :goto_0
    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v1, v0

    .line 1325
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1326
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1327
    return v0

    .line 1321
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
    .line 479
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getViewportHeight()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    .prologue
    .line 308
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
    .line 312
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
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected indexToPage(I)I
    .locals 0

    .prologue
    .line 345
    return p1
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 216
    new-instance v0, Lcom/android/launcher3/PagedView$ScrollInterpolator;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setDefaultInterpolator(Landroid/view/animation/Interpolator;)V

    .line 217
    iput v2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    .line 221
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 224
    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    .line 225
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    .line 226
    const v1, 0x44bb8000    # 1500.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    .line 227
    invoke-virtual {p0, p0}, Lcom/android/launcher3/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V

    .line 229
    return-void
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 243
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    .line 244
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void
.end method

.method protected isPageInTransition()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3

    .prologue
    .line 2070
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2071
    if-eqz p1, :cond_1

    .line 2072
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 2074
    :goto_1
    return v0

    .line 2072
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 419
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->addMarker()V

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 913
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 914
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateFreescrollBounds()V

    .line 919
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 920
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .prologue
    .line 2040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2041
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/16 v3, 0x9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1759
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1739
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1741
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v3, v4

    .line 1746
    :goto_0
    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    .line 1747
    :cond_1
    iget-boolean v5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v5, :cond_5

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    cmpg-float v2, v3, v4

    if-gez v2, :cond_3

    :cond_2
    move v0, v1

    .line 1749
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    .line 1750
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 1754
    :goto_2
    return v1

    .line 1743
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v3, v2

    .line 1744
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_0

    .line 1748
    :cond_5
    cmpl-float v2, v2, v4

    if-gtz v2, :cond_6

    cmpl-float v2, v3, v4

    if-lez v2, :cond_3

    :cond_6
    move v0, v1

    goto :goto_1

    .line 1752
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1734
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2168
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2132
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2133
    return-void

    .line 2132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2105
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2106
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2107
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2109
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2110
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2117
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2118
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2119
    return-void

    :cond_2
    move v0, v1

    .line 2105
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1167
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1170
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1177
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1178
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1179
    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v3, v0, :cond_1

    .line 1180
    return v0

    .line 1183
    :cond_1
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 1256
    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz v2, :cond_7

    :goto_1
    return v0

    .line 1189
    :pswitch_1
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1190
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1201
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1204
    iput v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1205
    iput v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1206
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1207
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1208
    iput v3, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1209
    invoke-direct {p0, p0, v2, v3}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1210
    aget v3, v2, v1

    iput v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1211
    aget v2, v2, v0

    iput v2, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1212
    iput v5, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1213
    iput v5, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1214
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1221
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1222
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    :cond_3
    move v2, v0

    .line 1224
    :goto_2
    if-eqz v2, :cond_5

    .line 1225
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1226
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1222
    goto :goto_2

    .line 1231
    :cond_5
    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1232
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_0

    .line 1234
    :cond_6
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto/16 :goto_0

    .line 1243
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1247
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1248
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1256
    goto/16 :goto_1

    .line 1183
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
    .line 771
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 772
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    .line 778
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetX()I

    move-result v9

    .line 779
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportOffsetY()I

    move-result v5

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 784
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    .line 785
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    move v2, v0

    .line 786
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v4, v0

    .line 788
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v6

    add-int v10, v0, v6

    .line 790
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 793
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    add-int v7, v9, v0

    .line 794
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v3, v0, :cond_2

    .line 795
    :cond_1
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    :cond_2
    move v8, v1

    .line 798
    :goto_4
    if-eq v8, v2, :cond_c

    .line 799
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 800
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    .line 801
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 803
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_7

    move v1, v5

    .line 810
    :goto_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 811
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 815
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v13, v7

    add-int/2addr v12, v1

    .line 814
    invoke-virtual {v6, v7, v1, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 817
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 818
    :goto_6
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    sub-int v1, v7, v1

    sub-int/2addr v1, v9

    aput v1, v6, v8

    .line 820
    iget v6, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 821
    add-int v1, v8, v4

    .line 822
    if-eq v1, v2, :cond_9

    .line 823
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 830
    :goto_7
    iget-boolean v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_a

    .line 831
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    .line 836
    :goto_8
    add-int/2addr v0, v11

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 798
    :goto_9
    add-int v1, v8, v4

    move v8, v1

    move v7, v0

    goto :goto_4

    .line 784
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_4
    move v2, v3

    .line 785
    goto/16 :goto_1

    .line 786
    :cond_5
    const/4 v0, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 793
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    goto :goto_3

    .line 806
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v5

    iget-object v11, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    .line 807
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

    .line 817
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    goto :goto_6

    .line 825
    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    .line 832
    :cond_a
    if-eqz v1, :cond_b

    iget-boolean v0, v1, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-eqz v0, :cond_11

    .line 833
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v0

    goto :goto_8

    :cond_b
    move v0, v6

    .line 832
    goto :goto_8

    .line 840
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 844
    new-instance v1, Lcom/android/launcher3/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 864
    :goto_a
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ge v0, v3, :cond_d

    .line 865
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 869
    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq v0, v3, :cond_e

    .line 870
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 872
    :cond_e
    iput v3, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 875
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 877
    :cond_f
    return-void

    .line 861
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
    .line 661
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 663
    return-void

    .line 668
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 669
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 670
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 671
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 674
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 675
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    .line 676
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    .line 675
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    int-to-float v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 679
    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 681
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    if-eqz v3, :cond_2

    .line 682
    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 683
    int-to-float v0, v0

    iget v3, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v3, v1

    move v1, v0

    .line 688
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 690
    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    .line 691
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 692
    return-void

    :cond_2
    move v1, v2

    move v3, v4

    .line 686
    goto :goto_0

    .line 696
    :cond_3
    if-lez v4, :cond_4

    if-gtz v2, :cond_5

    .line 697
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 698
    return-void

    .line 706
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v2

    add-int v9, v0, v2

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v2

    add-int v10, v0, v2

    .line 709
    const/4 v4, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v11

    .line 718
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v11, :cond_9

    .line 720
    invoke-virtual {p0, v8}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .line 721
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_b

    .line 722
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PagedView$LayoutParams;

    .line 729
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->isFullScreenPage:Z

    if-nez v2, :cond_8

    .line 730
    iget v2, v0, Lcom/android/launcher3/PagedView$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_6

    .line 731
    const/high16 v2, -0x80000000

    .line 736
    :goto_2
    iget v0, v0, Lcom/android/launcher3/PagedView$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_7

    .line 737
    const/high16 v0, -0x80000000

    .line 742
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v5

    sub-int/2addr v5, v10

    .line 743
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 742
    sub-int/2addr v5, v6

    .line 743
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 742
    sub-int v6, v5, v6

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v5

    sub-int/2addr v5, v9

    .line 745
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 744
    sub-int/2addr v5, v7

    .line 745
    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 744
    sub-int/2addr v5, v7

    .line 746
    iput v5, p0, Lcom/android/launcher3/PagedView;->mNormalChildHeight:I

    move v7, v2

    move v2, v6

    move v6, v0

    .line 754
    :goto_4
    if-nez v4, :cond_a

    move v0, v2

    .line 759
    :goto_5
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 761
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 762
    invoke-virtual {v12, v2, v4}, Landroid/view/View;->measure(II)V

    .line 718
    :goto_6
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v4, v0

    goto :goto_1

    .line 733
    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 739
    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_3

    .line 748
    :cond_8
    const/high16 v6, 0x40000000    # 2.0f

    .line 749
    const/high16 v5, 0x40000000    # 2.0f

    .line 751
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v2

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportHeight()I

    move-result v0

    move v7, v6

    move v6, v5

    move v5, v0

    goto :goto_4

    .line 765
    :cond_9
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 766
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
    .line 453
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 461
    return-void
.end method

.method onPostReorderingAnimationCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2031
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2032
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2033
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2035
    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2037
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1030
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1034
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 1032
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_0

    .line 1038
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .prologue
    .line 1722
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .prologue
    .line 1725
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 2022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 2026
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 2027
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

    .line 1443
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1446
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1448
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1452
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1705
    :cond_1
    :goto_0
    :pswitch_0
    return v9

    .line 1458
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1459
    invoke-direct {p0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1463
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1466
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1467
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1468
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1469
    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1470
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1471
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1473
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_1

    .line 1474
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1475
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    goto :goto_0

    .line 1480
    :pswitch_2
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_5

    .line 1482
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1484
    if-ne v0, v3, :cond_3

    return v9

    .line 1486
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1487
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    .line 1489
    iget v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1494
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 1495
    float-to-int v2, v1

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    .line 1496
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1497
    float-to-int v0, v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    goto :goto_0

    .line 1499
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 1501
    :cond_5
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_7

    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1504
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1508
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1509
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1510
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1511
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1514
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1521
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->getNearestHoverOverPageIndex()I

    move-result v1

    .line 1523
    if-lez v1, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1524
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v4, v2, v4

    .line 1525
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v9

    .line 1526
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1527
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v2, v1, :cond_1

    .line 1528
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v9

    if-gt v1, v2, :cond_1

    .line 1529
    iget v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v2

    .line 1527
    if-eqz v2, :cond_1

    .line 1530
    iput v1, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1531
    new-instance v2, Lcom/android/launcher3/PagedView$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/PagedView$2;-><init>(Lcom/android/launcher3/PagedView;II)V

    iput-object v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1575
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    sget v1, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher3/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1578
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1579
    iput v3, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_0

    .line 1582
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1587
    :pswitch_3
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_1b

    .line 1588
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1589
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1590
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1591
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1592
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1593
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v5, v0

    .line 1594
    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v0, v1, v0

    float-to-int v3, v0

    .line 1595
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1596
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v6, v2

    .line 1597
    const v7, 0x3ecccccd    # 0.4f

    .line 1596
    mul-float/2addr v6, v7

    cmpl-float v0, v0, v6

    if-lez v0, :cond_c

    move v0, v9

    .line 1599
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

    .line 1601
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    const/high16 v6, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_e

    .line 1602
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le v1, v6, :cond_d

    move v1, v9

    .line 1604
    :goto_2
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v6, :cond_19

    .line 1609
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_f

    .line 1610
    int-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_f

    .line 1609
    if-eqz v1, :cond_22

    move v2, v9

    .line 1618
    :goto_3
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_11

    if-lez v3, :cond_10

    :goto_4
    move v3, v9

    .line 1619
    :goto_5
    iget-boolean v6, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_12

    if-lez v5, :cond_8

    :goto_6
    move v4, v9

    .line 1620
    :cond_8
    if-eqz v0, :cond_9

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_9

    xor-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_a

    .line 1621
    :cond_9
    if-eqz v1, :cond_14

    xor-int/lit8 v6, v4, 0x1

    .line 1620
    if-eqz v6, :cond_14

    .line 1621
    :cond_a
    iget v6, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v6, :cond_14

    .line 1622
    if-eqz v2, :cond_13

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1623
    :goto_7
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    .line 1647
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1686
    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1688
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    :cond_c
    move v0, v4

    .line 1596
    goto :goto_1

    :cond_d
    move v1, v4

    .line 1602
    goto :goto_2

    :cond_e
    move v1, v4

    .line 1601
    goto :goto_2

    :cond_f
    move v2, v4

    .line 1610
    goto :goto_3

    :cond_10
    move v3, v4

    .line 1618
    goto :goto_5

    :cond_11
    if-gez v3, :cond_10

    goto :goto_4

    .line 1619
    :cond_12
    if-gez v5, :cond_8

    goto :goto_6

    .line 1622
    :cond_13
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1624
    :cond_14
    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    xor-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_16

    .line 1625
    :cond_15
    if-eqz v1, :cond_18

    .line 1624
    if-eqz v4, :cond_18

    .line 1626
    :cond_16
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_18

    .line 1627
    if-eqz v2, :cond_17

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1628
    :goto_a
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    .line 1627
    :cond_17
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1630
    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto :goto_8

    .line 1633
    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1634
    invoke-direct {p0, v9}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1637
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v10

    .line 1638
    neg-int v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v3, v0

    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v1, v0

    .line 1641
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1642
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1643
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v2

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v7, v4

    move v8, v4

    .line 1642
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/LauncherScroller;->fling(IIIIIIII)V

    .line 1644
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->getFinalX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1645
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    goto/16 :goto_8

    .line 1648
    :cond_1b
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1652
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1653
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1c

    .line 1654
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_9

    .line 1656
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_9

    .line 1658
    :cond_1d
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 1662
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1663
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1e

    .line 1664
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto/16 :goto_9

    .line 1666
    :cond_1e
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    goto/16 :goto_9

    .line 1668
    :cond_1f
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v5, :cond_20

    .line 1670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1671
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1675
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1676
    aget v1, v0, v4

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1677
    aget v0, v0, v9

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1678
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    goto/16 :goto_9

    .line 1680
    :cond_20
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    if-nez v0, :cond_b

    .line 1681
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    .line 1692
    :pswitch_4
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v0, v9, :cond_21

    .line 1693
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1694
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1696
    :cond_21
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    goto/16 :goto_0

    .line 1700
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1701
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_22
    move v2, v4

    goto/16 :goto_3

    .line 1452
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
    .line 1728
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1729
    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->dampedOverScroll(F)V

    .line 1372
    return-void
.end method

.method protected pageBeginTransition()V
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 435
    :cond_0
    return-void
.end method

.method protected pageEndTransition()V
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_0

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 442
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2137
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    return v2

    .line 2140
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2154
    :cond_1
    return v3

    .line 2142
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2143
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 2144
    return v2

    .line 2148
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2149
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 2150
    return v2

    .line 2140
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
    .line 1965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1966
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 959
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 960
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 935
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 936
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 950
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 942
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 943
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1798
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1799
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 1800
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1803
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexToPage(I)I

    move-result v0

    .line 1019
    iget v1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1020
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1021
    const/4 v0, 0x1

    return v0

    .line 1023
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .prologue
    .line 1122
    if-eqz p1, :cond_0

    .line 1125
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1128
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1129
    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 485
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1957
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1960
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

    .line 1961
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    if-ge p1, v0, :cond_1

    .line 495
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 498
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 499
    iget v3, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 502
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_5

    :goto_0
    move v0, v1

    .line 503
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_8

    if-gez p1, :cond_7

    :goto_2
    move v3, v1

    .line 504
    :goto_3
    if-eqz v0, :cond_b

    .line 505
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    :goto_4
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 506
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_3

    .line 507
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 508
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_a

    .line 509
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 533
    :cond_3
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v3, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v3}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 535
    aget v2, v0, v2

    iput v2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 536
    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 537
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 539
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 502
    goto :goto_1

    :cond_6
    if-gez p1, :cond_5

    goto :goto_0

    :cond_7
    move v3, v2

    .line 503
    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_7

    goto :goto_2

    :cond_9
    move v0, v2

    .line 505
    goto :goto_4

    .line 511
    :cond_a
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 514
    :cond_b
    if-eqz v3, :cond_e

    .line 515
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_c

    move v0, v2

    :goto_6
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 516
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_3

    .line 517
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 518
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_d

    .line 519
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 515
    :cond_c
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_6

    .line 521
    :cond_d
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_5

    .line 525
    :cond_e
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_f

    .line 526
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 527
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 529
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_5
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .prologue
    .line 2124
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 2125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 2127
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 405
    return-void

    .line 407
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener()V

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 411
    return-void
.end method

.method protected setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    return-void
.end method

.method protected setEdgeGlowColor(I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowLeft:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setColor(I)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mEdgeGlowRight:Lcom/android/launcher3/util/LauncherEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LauncherEdgeEffect;->setColor(I)V

    .line 234
    return-void
.end method

.method protected setEnableOverscroll(Z)V
    .locals 0

    .prologue
    .line 1417
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1418
    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    .prologue
    .line 280
    iput p1, p0, Lcom/android/launcher3/PagedView;->mMinScale:F

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mUseMinScale:Z

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 283
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    .line 472
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 476
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .prologue
    .line 898
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 899
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 900
    return-void
.end method

.method public setScaleX(F)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 287
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 288
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 290
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 291
    aget v0, v0, v2

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 292
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 294
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1830
    return-void
.end method

.method public snapToPage(I)V
    .locals 1

    .prologue
    .line 1887
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1888
    return-void
.end method

.method protected snapToPage(II)V
    .locals 2

    .prologue
    .line 1895
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1896
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    .prologue
    .line 1912
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1913
    return-void
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1917
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 1919
    iput v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1921
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1922
    if-eqz p4, :cond_3

    move v5, v2

    .line 1928
    :goto_0
    if-eqz v5, :cond_0

    .line 1929
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1933
    invoke-direct {p0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1936
    :cond_1
    if-eqz p5, :cond_4

    .line 1937
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v0, p5}, Lcom/android/launcher3/LauncherScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1942
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v1

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 1944
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1947
    if-eqz p4, :cond_2

    .line 1948
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1949
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1952
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1953
    return-void

    .line 1924
    :cond_3
    if-nez p3, :cond_5

    .line 1925
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_0

    .line 1939
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
    .line 1899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1900
    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .prologue
    .line 1904
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1906
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 1907
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v2

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 1908
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1909
    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 3

    .prologue
    .line 1891
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1892
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1853
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    .line 1854
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1856
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1857
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getUnboundedScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1860
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_0

    .line 1863
    const/16 v1, 0x2ee

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1864
    return-void

    .line 1871
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

    .line 1872
    int-to-float v4, v1

    int-to-float v1, v1

    .line 1873
    invoke-direct {p0, v3}, Lcom/android/launcher3/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    .line 1872
    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1875
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1876
    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1881
    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    .line 1883
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(III)V

    .line 1884
    return-void
.end method

.method public startReordering(Landroid/view/View;)Z
    .locals 6

    .prologue
    const v5, 0x3f933333    # 1.15f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2044
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2047
    iget v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    return v3

    .line 2049
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aput v3, v1, v3

    .line 2050
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    .line 2051
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 2052
    iput-boolean v4, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 2055
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-gt v1, v0, :cond_2

    .line 2056
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v0, v1, :cond_2

    .line 2058
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 2059
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

    .line 2060
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    .line 2061
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 2062
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->disableFreeScroll()V

    .line 2063
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 2064
    return v4

    .line 2066
    :cond_2
    return v3
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 356
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 357
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    .line 359
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 360
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 361
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 362
    return-void

    :cond_0
    move v0, v1

    .line 356
    goto :goto_0
.end method

.method updateFreescrollBounds()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1387
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getFreeScrollPageRange([I)V

    .line 1388
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1390
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMaxScrollX:I

    .line 1395
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mFreeScrollMinScrollX:I

    .line 1393
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
    .line 884
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    .line 885
    return-void
.end method
