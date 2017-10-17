.class public Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.super Lcom/android/launcher3/pageindicators/PageIndicator;
.source "SourceFile"


# static fields
.field private static final CURRENT_POSITION:Landroid/util/Property;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private final mActiveColor:I

.field private mActivePage:I

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentPosition:F

.field private final mDotRadius:F

.field private mEntryAnimationRadiusFactors:[F

.field private mFinalPosition:F

.field private final mInActiveColor:I

.field private final mIsRtl:Z


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    return v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)[F
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "current_position"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 61
    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/pageindicators/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    .line 113
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$MyOutlineProver;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 115
    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    .line 116
    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    .line 119
    return-void
.end method

.method private animateToPosition(F)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 147
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 148
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 153
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v0, v2

    .line 154
    :goto_0
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 159
    :cond_1
    return-void

    .line 153
    :cond_2
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method private getActiveRect()Landroid/graphics/RectF;
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 271
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    float-to-int v0, v0

    int-to-float v0, v0

    .line 272
    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCurrentPosition:F

    sub-float/2addr v1, v0

    .line 273
    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v2, v9

    .line 274
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v4, v5

    div-float/2addr v4, v9

    .line 277
    sget-object v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 278
    sget-object v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    iget v7, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 279
    sget-object v5, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 280
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    sget-object v4, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 282
    cmpg-float v0, v1, v8

    if-gez v0, :cond_1

    .line 284
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v3

    mul-float/2addr v1, v9

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 293
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 294
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 295
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 296
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    sget-object v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, v0

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 298
    :cond_0
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    return-object v0

    .line 287
    :cond_1
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 289
    sub-float v0, v1, v8

    .line 290
    sget-object v1, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->sTempRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v3

    mul-float/2addr v0, v9

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 241
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 244
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    add-float/2addr v0, v3

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v3

    .line 247
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    if-eqz v3, :cond_2

    .line 249
    iget-boolean v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    .line 251
    neg-float v1, v1

    :cond_0
    move v6, v2

    move v2, v0

    move v0, v6

    .line 253
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 254
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    aget v5, v5, v0

    mul-float/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    add-float/2addr v2, v1

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    goto :goto_1

    .line 259
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mInActiveColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    :goto_2
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    if-ge v2, v3, :cond_3

    .line 261
    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    add-float/2addr v0, v1

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActiveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->getActiveRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    iget-object v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 268
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 233
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 234
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 235
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setMeasuredDimension(II)V

    .line 236
    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 234
    :cond_1
    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mDotRadius:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method

.method protected onPageCountChanged()V
    .locals 0

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->requestLayout()V

    .line 226
    return-void
.end method

.method public playEntryAnimation()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    array-length v2, v0

    .line 181
    if-nez v2, :cond_0

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 184
    return-void

    .line 187
    :cond_0
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x409ccccd    # 4.9f

    invoke-direct {v3, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 188
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    move v0, v1

    .line 189
    :goto_0
    if-ge v0, v2, :cond_1

    .line 190
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v6, v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 192
    new-instance v6, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    mul-int/lit16 v6, v0, 0x96

    add-int/lit16 v6, v6, 0x12c

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 201
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 214
    return-void
.end method

.method public prepareEntryAnimation()V
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mEntryAnimationRadiusFactors:[F

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 177
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    if-eq v0, p1, :cond_0

    .line 219
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    .line 221
    :cond_0
    return-void
.end method

.method public setScroll(II)V
    .locals 5

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 125
    sub-int p1, p2, p1

    .line 127
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mNumPages:I

    add-int/lit8 v0, v0, -0x1

    div-int v0, p2, v0

    .line 128
    div-int v1, p1, v0

    .line 129
    mul-int v2, v1, v0

    .line 130
    add-int v3, v2, v0

    .line 132
    int-to-float v0, v0

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v4

    .line 133
    int-to-float v4, p1

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2

    .line 135
    int-to-float v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    int-to-float v2, p1

    int-to-float v3, v3

    sub-float v0, v3, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 138
    add-int/lit8 v0, v1, 0x1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    goto :goto_0

    .line 141
    :cond_3
    int-to-float v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->animateToPosition(F)V

    goto :goto_0
.end method

.method public stopAllAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 164
    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mActivePage:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    .line 167
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->CURRENT_POSITION:Landroid/util/Property;

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->mFinalPosition:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    return-void
.end method
