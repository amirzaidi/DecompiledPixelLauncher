.class public Lcom/android/launcher3/graphics/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;


# instance fields
.field private final mBitmapCache:Landroid/util/SparseArray;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mShadowBitmapShift:F

.field private final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private final mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 65
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 66
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 68
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    .line 69
    const v2, 0x7f0b006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 68
    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 71
    const v1, 0x7f0b006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    .line 72
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    iget v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    .line 81
    :cond_0
    sget-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    return-object v0
.end method


# virtual methods
.method public applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    .line 96
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 98
    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 100
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 101
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbc

    if-ge v3, v4, :cond_0

    .line 102
    const/4 v3, 0x0

    aput-byte v3, v1, v0

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 107
    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 111
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 115
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 119
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 122
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 126
    invoke-virtual {p2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    const/4 v0, 0x0

    aget v0, v10, v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 128
    const/4 v1, 0x1

    aget v1, v10, v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    aget v0, v10, v0

    neg-int v0, v0

    int-to-float v3, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 130
    iget-object v5, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object v0, p2

    .line 129
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 131
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    const/4 v0, 0x1

    aget v0, v10, v0

    neg-int v0, v0

    int-to-float v4, v0

    .line 132
    iget-object v5, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object v0, p2

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 137
    const/4 v0, 0x0

    aget v0, v10, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    int-to-float v1, v1

    .line 138
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p2, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    const/4 v0, 0x0

    aget v0, v6, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v6, v1

    int-to-float v1, v1

    .line 140
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 139
    invoke-virtual {p2, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    int-to-float v1, v1

    .line 144
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mDrawPaint:Landroid/graphics/Paint;

    .line 143
    invoke-virtual {p2, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 150
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    return-void
.end method

.method public createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v10, -0x1000000

    const/4 v9, 0x0

    .line 154
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    if-nez v2, :cond_0

    .line 156
    return-object v9

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    .line 160
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v4

    .line 161
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v6, v0

    .line 164
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v7, v0

    .line 165
    if-lez v7, :cond_1

    if-gtz v6, :cond_2

    .line 166
    :cond_1
    return-object v9

    .line 169
    :cond_2
    shl-int/lit8 v0, v6, 0x10

    or-int v1, v0, v7

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    if-nez v0, :cond_3

    .line 172
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    iget-object v8, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    iget-object v8, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v8, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 181
    iget-object v8, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 182
    iget-object v3, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v4, v5, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 183
    iget-object v3, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 189
    iget v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 191
    add-int v2, v6, v0

    .line 192
    add-int v3, v7, v0

    .line 193
    shl-int/lit8 v0, v2, 0x10

    or-int v4, v0, v3

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 195
    if-nez v0, :cond_4

    .line 196
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    iget v4, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    iget-object v5, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    return-object v0

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object v1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v10, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v1, v0

    goto :goto_0

    .line 200
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v10, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public recycleShadowBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    :cond_0
    return-void
.end method
