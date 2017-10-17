.class public Lcom/android/launcher3/util/FlingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Ljava/lang/Runnable;


# instance fields
.field protected mAX:F

.field protected mAY:F

.field protected final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field protected mAnimationTimeFraction:F

.field protected final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field protected final mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field protected mDuration:I

.field protected mFrom:Landroid/graphics/Rect;

.field protected mIconRect:Landroid/graphics/Rect;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field protected final mUX:F

.field protected final mUY:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/ButtonDropTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/util/FlingAnimation;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;)V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 41
    iput-object p3, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 42
    iput-object p4, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 44
    iget v0, p2, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    .line 45
    iget v0, p2, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 47
    return-void
.end method


# virtual methods
.method protected initFlingLeftDuration()I
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    neg-int v0, v0

    int-to-float v2, v0

    .line 145
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v0, v3

    mul-float v3, v5, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 146
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_0

    .line 148
    iput v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    .line 154
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    neg-float v1, v1

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 156
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    add-float/2addr v2, v3

    .line 159
    float-to-double v2, v2

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 152
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v0, v3

    neg-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    move v0, v1

    goto :goto_0
.end method

.method protected initFlingUpDuration()I
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v2, v0

    .line 117
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v0, v3

    mul-float v3, v5, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 118
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_0

    .line 120
    iput v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    .line 126
    :goto_0
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    neg-float v1, v1

    float-to-double v2, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    iget v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    .line 128
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    add-float/2addr v2, v3

    .line 131
    float-to-double v2, v2

    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    float-to-double v4, v4

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double v4, v0, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 124
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v0, v3

    neg-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    move v0, v1

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 165
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 166
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    move v1, v2

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragView;

    .line 172
    iget v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    .line 173
    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAX:F

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 174
    iget v4, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/util/FlingAnimation;->mAY:F

    mul-float/2addr v5, v3

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 175
    iget-object v3, p0, Lcom/android/launcher3/util/FlingAnimation;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 176
    return-void

    .line 169
    :cond_0
    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(Lcom/android/launcher3/DropTarget$DragObject;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mIconRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v0

    .line 57
    sub-float v1, v0, v3

    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 58
    sub-float/2addr v0, v3

    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v4

    .line 59
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 60
    iget-object v2, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v1, v3, v1

    float-to-int v1, v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mFrom:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 63
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mUY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mUX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingAnimation;->initFlingUpDuration()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    .line 65
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    add-int/lit16 v1, v1, 0x12c

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mAnimationTimeFraction:F

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 70
    iget v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDuration:I

    add-int/lit16 v3, v0, 0x12c

    .line 71
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 78
    new-instance v4, Lcom/android/launcher3/util/FlingAnimation$1;

    invoke-direct {v4, p0, v0, v1, v3}, Lcom/android/launcher3/util/FlingAnimation$1;-><init>(Lcom/android/launcher3/util/FlingAnimation;JI)V

    .line 95
    new-instance v5, Lcom/android/launcher3/util/FlingAnimation$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/util/FlingAnimation$2;-><init>(Lcom/android/launcher3/util/FlingAnimation;)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/util/FlingAnimation;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 104
    const/4 v7, 0x0

    move-object v2, p0

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 105
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/FlingAnimation;->initFlingLeftDuration()I

    move-result v0

    goto :goto_0
.end method
