.class public abstract Lcom/android/launcher3/popup/PopupItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final mBackgroundClipPaint:Landroid/graphics/Paint;

.field protected mIconView:Landroid/view/View;

.field protected final mIsRtl:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field protected final mPillRect:Landroid/graphics/Rect;

.field private mRoundedCornerBitmap:Landroid/graphics/Bitmap;

.field protected mRoundedCorners:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v0

    float-to-int v2, v0

    .line 69
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 71
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 72
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

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIsRtl:Z

    .line 76
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 92
    iget v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCorners:I

    if-nez v0, :cond_0

    .line 93
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 94
    return-void

    .line 97
    :cond_0
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

    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 103
    int-to-float v4, v2

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 104
    int-to-float v5, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 105
    iget v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCorners:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 108
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 110
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v7, 0x42b40000    # 90.0f

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 111
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 112
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 114
    :cond_1
    iget v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCorners:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 117
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    sub-int v2, v7, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    int-to-float v7, v7

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 118
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 120
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v6, 0x43870000    # 270.0f

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v2, v6, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 121
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCornerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupItemView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupItemView;->mBackgroundClipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 125
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 126
    return-void
.end method

.method protected getBackgroundRadius()F
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    const v0, 0x7f0e005c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mIconView:Landroid/view/View;

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    return-void
.end method

.method public setBackgroundWithCorners(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 133
    iput p2, p0, Lcom/android/launcher3/popup/PopupItemView;->mRoundedCorners:I

    .line 134
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    move v1, v0

    .line 135
    :goto_0
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_1

    .line 136
    :goto_1
    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v1, 0x5

    aput v0, v2, v1

    const/4 v1, 0x6

    aput v0, v2, v1

    const/4 v1, 0x7

    aput v0, v2, v1

    .line 137
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v1

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v0

    goto :goto_1
.end method
