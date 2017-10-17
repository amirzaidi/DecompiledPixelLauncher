.class public Lcom/android/launcher3/notification/SwipeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/android/launcher3/notification/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/notification/SwipeHelper;)Lcom/android/launcher3/notification/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/notification/SwipeHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/notification/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/notification/SwipeHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/launcher3/notification/SwipeHelper;)Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressListener:Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/launcher3/notification/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/launcher3/notification/SwipeHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/notification/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/notification/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/notification/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/launcher3/notification/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 54
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 55
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 56
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 61
    iput v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mMinSwipeProgress:F

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mMaxSwipeProgress:F

    .line 78
    iput v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTranslation:F

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTmpPos:[I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    .line 93
    iput-object p2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 95
    iput p1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    .line 96
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 97
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDensityScale:F

    .line 98
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mPagingTouchSlop:F

    .line 100
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressTimeout:J

    .line 101
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 102
    const v1, 0x7f0b0096

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mFalsingThreshold:I

    .line 103
    new-instance v0, Lcom/android/launcher3/notification/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p3, v1}, Lcom/android/launcher3/notification/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mFlingAnimationUtils:Lcom/android/launcher3/notification/FlingAnimationUtils;

    .line 104
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 602
    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getMaxVelocity()F
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSwipeAlpha(F)F
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    .line 185
    div-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 186
    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 220
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 218
    invoke-static {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 221
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6

    .prologue
    .line 229
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 232
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 233
    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 234
    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 235
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 232
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    move-object p0, v0

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 195
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/notification/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    if-eqz p2, :cond_1

    .line 203
    iget-boolean v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDisableHwLayers:Z

    if-nez v1, :cond_0

    .line 204
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 205
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 210
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getSwipeAlpha(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 213
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/notification/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 214
    return-void

    .line 207
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 140
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 141
    aput p2, v1, v2

    .line 140
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    return-object v0

    .line 141
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 7

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    .line 350
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    if-eqz p9, :cond_7

    .line 351
    :cond_0
    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    move v2, v1

    .line 353
    :goto_1
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    if-eqz p9, :cond_8

    :cond_1
    move v1, v0

    .line 355
    :goto_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_9

    .line 356
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    xor-int/lit8 v0, p9, 0x1

    .line 358
    :goto_3
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_b

    .line 359
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    neg-float v3, v0

    .line 364
    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-nez v0, :cond_3

    .line 365
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, v0

    .line 366
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_c

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v4, v2

    .line 367
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p7

    .line 378
    :cond_3
    :goto_5
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDisableHwLayers:Z

    if-nez v0, :cond_4

    .line 379
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 381
    :cond_4
    new-instance v0, Lcom/android/launcher3/notification/SwipeHelper$2;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/launcher3/notification/SwipeHelper$2;-><init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V

    .line 387
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v1

    .line 388
    if-nez v1, :cond_d

    .line 389
    return-void

    .line 347
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 351
    :cond_6
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    .line 350
    :cond_7
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    .line 353
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 355
    :cond_9
    const/4 v0, 0x1

    goto :goto_3

    .line 356
    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    .line 361
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_4

    .line 372
    :cond_c
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long p7, v0

    goto :goto_5

    .line 391
    :cond_d
    if-eqz p6, :cond_f

    .line 392
    sget-object v0, Lcom/android/launcher3/notification/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 393
    invoke-virtual {v1, p7, p8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 398
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-lez v0, :cond_e

    .line 399
    invoke-virtual {v1, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 401
    :cond_e
    new-instance v0, Lcom/android/launcher3/notification/SwipeHelper$3;

    invoke-direct {v0, p0, p1, v6, p3}, Lcom/android/launcher3/notification/SwipeHelper$3;-><init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/notification/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 426
    return-void

    .line 395
    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mFlingAnimationUtils:Lcom/android/launcher3/notification/FlingAnimationUtils;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    move v4, p2

    .line 395
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/notification/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    goto :goto_6
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 330
    const/4 v3, 0x0

    .line 331
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-wide v7, v4

    .line 330
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/notification/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 332
    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .prologue
    .line 618
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/notification/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 153
    if-eqz p3, :cond_0

    .line 154
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return v0
.end method

.method protected isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 627
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    xor-int/lit8 v1, v1, 0x1

    .line 628
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->swipedFastEnough()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->swipedFarEnough()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 628
    :cond_1
    return v0

    :cond_2
    move v1, v0

    .line 627
    goto :goto_0
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    :cond_1
    return v1

    .line 257
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSnappingChild:Z

    .line 260
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->onDownUpdate(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mInitialTouchPos:F

    .line 269
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTranslation:F

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressListener:Lcom/android/launcher3/notification/SwipeHelper$LongPressListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 273
    new-instance v0, Lcom/android/launcher3/notification/SwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/notification/SwipeHelper$1;-><init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 298
    iget v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v0, v3

    .line 299
    iget v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float/2addr v2, v3

    .line 300
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/notification/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 301
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 303
    iput-boolean v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    .line 304
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mInitialTouchPos:F

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTranslation:F

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 313
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    .line 314
    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    .line 315
    iput-object v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 316
    iput-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->removeLongPressCallback()V

    .line 318
    if-eqz v0, :cond_0

    return v1

    :cond_3
    move v0, v1

    .line 313
    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 526
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mLongPressSent:Z

    if-eqz v0, :cond_0

    .line 527
    return v6

    .line 530
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 536
    return v6

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->removeLongPressCallback()V

    .line 542
    return v5

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 548
    packed-switch v0, :pswitch_data_0

    .line 597
    :cond_3
    :goto_0
    return v6

    .line 551
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 552
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v0, v1

    .line 553
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 554
    invoke-direct {p0}, Lcom/android/launcher3/notification/SwipeHelper;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_4

    .line 555
    iput-boolean v6, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v3}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 561
    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    .line 562
    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 563
    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    .line 569
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTranslation:F

    add-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 570
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 571
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mTranslation:F

    add-float/2addr v2, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/notification/SwipeHelper;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_0

    .line 563
    :cond_5
    neg-float v0, v0

    goto :goto_1

    .line 565
    :cond_6
    div-float/2addr v1, v3

    float-to-double v2, v1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    goto :goto_1

    .line 576
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/launcher3/notification/SwipeHelper;->getMaxVelocity()F

    move-result v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 580
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/launcher3/notification/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v1

    if-nez v1, :cond_7

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 585
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->swipedFastEnough()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 585
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher3/notification/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    .line 592
    :goto_2
    iput-object v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 594
    :cond_7
    iput-boolean v5, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDragging:Z

    goto/16 :goto_0

    .line 589
    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 590
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/launcher3/notification/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_1

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0, p1, p3, p2}, Lcom/android/launcher3/notification/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 488
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iput-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 250
    :cond_0
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/launcher3/notification/SwipeHelper;->mDisableHwLayers:Z

    .line 120
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCallback:Lcom/android/launcher3/notification/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 437
    new-instance v1, Lcom/android/launcher3/notification/SwipeHelper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/notification/SwipeHelper$4;-><init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V

    .line 443
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/notification/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v1

    .line 444
    if-nez v1, :cond_0

    .line 445
    return-void

    .line 448
    :cond_0
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 449
    new-instance v2, Lcom/android/launcher3/notification/SwipeHelper$5;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/launcher3/notification/SwipeHelper$5;-><init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/notification/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mSnappingChild:Z

    .line 458
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 459
    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 623
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/notification/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected swipedFastEnough()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 634
    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/android/launcher3/notification/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    .line 635
    iget-object v3, p0, Lcom/android/launcher3/notification/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/notification/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    .line 636
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/notification/SwipeHelper;->getEscapeVelocity()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 637
    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    move v3, v0

    :goto_0
    cmpl-float v2, v4, v6

    if-lez v2, :cond_1

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_2

    .line 638
    :goto_2
    return v0

    :cond_0
    move v3, v1

    .line 637
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 636
    goto :goto_2
.end method
