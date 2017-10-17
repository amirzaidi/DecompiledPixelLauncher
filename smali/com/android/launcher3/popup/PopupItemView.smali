.class public abstract Lcom/android/launcher3/popup/PopupItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field protected static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field private final mBackgroundClipPaint:Landroid/graphics/Paint;

.field protected mIconView:Landroid/view/View;

.field protected final mIsRtl:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mOpenAnimationProgress:F

.field protected final mPillRect:Landroid/graphics/Rect;

.field private mRoundedCornerBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static synthetic -set0(Lcom/android/launcher3/popup/PopupItemView;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v0

    float-to-int v2, v0

    .line 73
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    move v2, v1

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIsRtl:Z

    .line 80
    return-void
.end method


# virtual methods
.method public createCloseAnimation(ZZJ)Landroid/animation/Animator;
    .locals 9

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIsRtl:Z

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 152
    const v0, 0x7f0b0077

    .line 151
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 154
    new-instance v0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 155
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupItemView;->mIconView:Landroid/view/View;

    int-to-float v8, v4

    move-object v4, p0

    move v6, p1

    move v7, p2

    .line 154
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Lcom/android/launcher3/popup/PopupItemView;Landroid/view/View;ZZF)V

    .line 156
    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    long-to-float v1, p3

    iget v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    new-instance v1, Lcom/android/launcher3/popup/PopupItemView$CloseInterpolator;

    iget v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    invoke-direct {v1, v2}, Lcom/android/launcher3/popup/PopupItemView$CloseInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    new-instance v1, Lcom/android/launcher3/popup/PopupItemView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/popup/PopupItemView$1;-><init>(Lcom/android/launcher3/popup/PopupItemView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    return-object v0

    .line 153
    :cond_0
    const v0, 0x7f0b0078

    goto :goto_0
.end method

.method public createOpenAnimation(ZZ)Landroid/animation/Animator;
    .locals 9

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getIconCenter()Landroid/graphics/Point;

    move-result-object v2

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIsRtl:Z

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 126
    const v0, 0x7f0b0077

    .line 125
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 128
    new-instance v0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 129
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupItemView;->mIconView:Landroid/view/View;

    int-to-float v8, v4

    move-object v4, p0

    move v6, p1

    move v7, p2

    .line 128
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;Lcom/android/launcher3/popup/PopupItemView;Landroid/view/View;ZZF)V

    .line 130
    const/4 v1, 0x0

    .line 128
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    .line 132
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    return-object v0

    .line 127
    :cond_0
    const v0, 0x7f0b0078

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 100
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 102
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 103
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 105
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 106
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 107
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 109
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 110
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 113
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 114
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 118
    return-void
.end method

.method public abstract getArrowColor(Z)I
.end method

.method protected getBackgroundRadius()F
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 175
    sget-object v0, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredWidth()I

    move-result v1

    sget-object v2, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 179
    :cond_0
    sget-object v0, Lcom/android/launcher3/popup/PopupItemView;->sTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public isOpenOrOpening()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mOpenAnimationProgress:F

    .line 139
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 85
    const v0, 0x7f0e0052

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIconView:Landroid/view/View;

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    return-void
.end method
