.class public Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;
.super Lcom/android/launcher3/pageindicators/PageIndicator;
.source "SourceFile"


# static fields
.field private static final LINE_ANIMATE_DURATION:I

.field private static final LINE_FADE_DELAY:I

.field private static final NUM_PAGES:Landroid/util/Property;

.field private static final PAINT_ALPHA:Landroid/util/Property;

.field private static final TOTAL_SCROLL:Landroid/util/Property;

.field private static final sTempCoords:[I


# instance fields
.field private mActiveAlpha:I

.field private mAllAppsHandle:Landroid/widget/ImageView;

.field private mAnimators:[Landroid/animation/ValueAnimator;

.field private mCurrentScroll:I

.field private final mDelayedLineFadeHandler:Landroid/os/Handler;

.field private mHideLineRunnable:Ljava/lang/Runnable;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLineHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNumPagesFloat:F

.field private mShouldAutoHide:Z

.field private mToAlpha:I

.field private mTotalScroll:I


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)[Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPagesFloat:F

    return v0
.end method

.method static synthetic -get3(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPagesFloat:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->animateLineToAlpha(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->sTempCoords:[I

    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->LINE_ANIMATE_DURATION:I

    .line 37
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    sput v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->LINE_FADE_DELAY:I

    .line 65
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "paint_alpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->PAINT_ALPHA:Landroid/util/Property;

    .line 79
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$2;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "num_pages"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 78
    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->NUM_PAGES:Landroid/util/Property;

    .line 93
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$3;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "total_scroll"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    sput-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->TOTAL_SCROLL:Landroid/util/Property;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/pageindicators/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mDelayedLineFadeHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mShouldAutoHide:Z

    .line 52
    iput v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mActiveAlpha:I

    .line 106
    new-instance v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$4;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;)V

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mHideLineRunnable:Ljava/lang/Runnable;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 129
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLineHeight:I

    .line 130
    new-instance v0, Lcom/android/launcher3/pageindicators/CaretDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/pageindicators/CaretDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->setCaretDrawable(Lcom/android/launcher3/pageindicators/CaretDrawable;)V

    .line 131
    return-void
.end method

.method private animateLineToAlpha(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mToAlpha:I

    if-ne p1, v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mToAlpha:I

    .line 246
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->PAINT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 248
    return-void
.end method

.method private animateToNumPages(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 251
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->NUM_PAGES:Landroid/util/Property;

    new-array v1, v4, [F

    int-to-float v2, p1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 253
    return-void
.end method

.method private animateToTotalScroll(I)V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->TOTAL_SCROLL:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 257
    const/4 v1, 0x2

    .line 256
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V

    .line 258
    return-void
.end method

.method private hideAfterDelay()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mDelayedLineFadeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mHideLineRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->LINE_FADE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method private setupAndRunAnimation(Landroid/animation/ValueAnimator;I)V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aput-object p1, v0, p2

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    new-instance v1, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret$5;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    sget v1, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->LINE_ANIMATE_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 279
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAnimators:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 280
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPagesFloat:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 153
    :cond_0
    return-void

    .line 157
    :cond_1
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mCurrentScroll:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 159
    int-to-float v2, v1

    iget v3, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPagesFloat:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 160
    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 161
    add-int v3, v0, v2

    .line 162
    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLineHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    .line 163
    iget-object v5, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onFinishInflate()V

    .line 136
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->getCaretDrawable()Lcom/android/launcher3/pageindicators/CaretDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setAllAppsButton(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method protected onPageCountChanged()V
    .locals 2

    .prologue
    .line 203
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPages:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPagesFloat:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mNumPages:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->animateToNumPages(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 148
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mAllAppsHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public setScroll(II)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mActiveAlpha:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->animateLineToAlpha(I)V

    .line 178
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mCurrentScroll:I

    .line 179
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    if-nez v0, :cond_2

    .line 180
    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    .line 187
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mShouldAutoHide:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->hideAfterDelay()V

    .line 190
    :cond_1
    return-void

    .line 181
    :cond_2
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mTotalScroll:I

    if-eq v0, p2, :cond_3

    .line 182
    invoke-direct {p0, p2}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->animateToTotalScroll(I)V

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->invalidate()V

    goto :goto_0
.end method

.method public setShouldAutoHide(Z)V
    .locals 2

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mShouldAutoHide:Z

    .line 210
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->hideAfterDelay()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    if-nez p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mDelayedLineFadeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 224
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/dynamicui/ExtractedColors;->getColor(II)I

    move-result v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/support/v4/b/a;->arc(II)I

    move-result v1

    .line 227
    const/high16 v2, -0x1000000

    if-ne v1, v2, :cond_1

    .line 228
    const/16 v2, 0xa5

    iput v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mActiveAlpha:I

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    :cond_0
    return-void

    .line 229
    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 230
    const/16 v2, 0xb2

    iput v2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorLineCaret;->mActiveAlpha:I

    goto :goto_0

    .line 232
    :cond_2
    const-string/jumbo v2, "PageIndicatorLine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting workspace page indicators to an unsupported color: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
