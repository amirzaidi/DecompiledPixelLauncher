.class public Lcom/android/launcher3/graphics/ShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    iput-object p1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;Lcom/android/launcher3/graphics/ShadowDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/ShadowDrawable;-><init>(Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private regenerateBitmapCache()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 124
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    .line 130
    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v5, v6

    .line 131
    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    iget-object v7, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v7, v7, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    sub-int/2addr v6, v7

    .line 129
    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 133
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 138
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 139
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 140
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 142
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 143
    iget-object v6, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {v1, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    aget v6, v4, v8

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-virtual {v2, v5, v6, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iput-object v0, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 153
    return-void

    .line 132
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f01002b

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iput-boolean v1, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIsDark:Z

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 120
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->regenerateBitmapCache()V

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mLastDrawnBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 160
    if-nez p4, :cond_0

    .line 161
    sget-object v0, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v1, v0

    .line 164
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "missing src attribute"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    throw v0

    .line 162
    :cond_0
    sget-object v0, Lcom/android/launcher3/R$styleable;->ShadowDrawable:[I

    invoke-virtual {p4, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 168
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 169
    const/4 v3, 0x1

    const/high16 v4, -0x1000000

    .line 168
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowColor:I

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 171
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    .line 173
    const/4 v3, 0x3

    const/high16 v4, -0x1000000

    .line 172
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mDarkTintColor:I

    .line 175
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicHeight:I

    .line 176
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    iget v4, v4, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mShadowSize:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mIntrinsicWidth:I

    .line 177
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 179
    iget-object v2, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mState:Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iput-object v0, v2, Lcom/android/launcher3/graphics/ShadowDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/graphics/ShadowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/ShadowDrawable;->invalidateSelf()V

    .line 83
    return-void
.end method
