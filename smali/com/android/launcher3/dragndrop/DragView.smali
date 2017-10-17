.class public Lcom/android/launcher3/dragndrop/DragView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static sDragAlpha:F


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mAnimatedShiftX:I

.field private mAnimatedShiftY:I

.field private mAnimationCancelled:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBlurSizeOutline:I

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field mCrossFadeProgress:F

.field mCurrentFilter:[F

.field final mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mFilterAnimator:Landroid/animation/ValueAnimator;

.field private mHasDrawn:Z

.field private final mInitialScale:F

.field private mIntrinsicIconScale:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mPaint:Landroid/graphics/Paint;

.field private final mRegistrationX:I

.field private final mRegistrationY:I

.field private final mTempLoc:[I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/dragndrop/DragView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/dragndrop/DragView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/dragndrop/DragView;->sDragAlpha:F

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIFF)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    .line 58
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 59
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 62
    iput-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 64
    iput-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 93
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 95
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 98
    invoke-virtual {p0, p5}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 99
    invoke-virtual {p0, p5}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 102
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    .line 103
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/dragndrop/DragView$1;

    invoke-direct {v2, p0, p5, v0}, Lcom/android/launcher3/dragndrop/DragView$1;-><init>(Lcom/android/launcher3/dragndrop/DragView;FF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/DragView$2;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p2, v4, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 134
    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    .line 135
    iput p4, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    .line 137
    iput p5, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    .line 140
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/dragndrop/DragView;->measure(II)V

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setElevation(F)V

    .line 147
    return-void

    .line 102
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateFilterTo([F)V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 278
    :goto_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    .line 280
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 283
    :cond_0
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 284
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 283
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/DragView$4;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mFilterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 295
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    goto :goto_0
.end method

.method private applyTranslation()V
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationX(F)V

    .line 378
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setTranslationY(F)V

    .line 379
    return-void
.end method


# virtual methods
.method public animateShift(II)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    .line 363
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    .line 364
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$6;-><init>(Lcom/android/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 374
    return-void
.end method

.method public animateTo(IILjava/lang/Runnable;I)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    aput v1, v0, v6

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mTempLoc:[I

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    iget v5, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 356
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 337
    :cond_0
    return-void
.end method

.method public crossFade(I)V
    .locals 4

    .prologue
    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 241
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    new-instance v1, Lcom/android/launcher3/dragndrop/DragView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/DragView$3;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    return-void

    .line 240
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getBlurSizeOutline()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    return v0
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDragRegionTop()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getDragRegionWidth()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getInitialScale()F
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    return v0
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    return v0
.end method

.method public hasDrawn()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    return v0
.end method

.method public move(II)V
    .locals 0

    .prologue
    .line 346
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchX:I

    .line 347
    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView;->mLastTouchY:I

    .line 348
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    .line 349
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 217
    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    .line 218
    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move v1, v2

    .line 219
    :goto_0
    if-eqz v1, :cond_0

    .line 220
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    sub-float v0, v5, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 221
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 224
    if-eqz v1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 228
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 229
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 230
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 233
    :cond_1
    return-void

    :cond_2
    move v1, v0

    .line 218
    goto :goto_0

    .line 220
    :cond_3
    const/16 v0, 0xff

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setMeasuredDimension(II)V

    .line 193
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 385
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 306
    return-void
.end method

.method public setColor(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    .line 258
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 261
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 262
    invoke-static {p1, v1}, Lcom/android/launcher3/util/Themes;->setColorScaleOnMatrix(ILandroid/graphics/ColorMatrix;)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 265
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mCurrentFilter:[F

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    goto :goto_0

    .line 271
    :cond_2
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->animateFilterTo([F)V

    goto :goto_0
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 237
    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 184
    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 176
    return-void
.end method

.method public setIntrinsicIconScaleFactor(F)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 152
    return-void
.end method

.method public show(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 318
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    .line 319
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 325
    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragView$5;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragView;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method
