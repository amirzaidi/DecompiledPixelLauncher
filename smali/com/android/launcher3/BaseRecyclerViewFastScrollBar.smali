.class public Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TRACK_WIDTH:Landroid/util/Property;


# instance fields
.field private mCanThumbDetach:Z

.field private mIgnoreDragGesture:Z

.field private mIsDragging:Z

.field private final mIsRtl:Z

.field private mIsThumbDetached:Z

.field private mLastTouchY:F

.field private final mMaxWidth:I

.field private final mMinWidth:I

.field private mPopupSectionName:Ljava/lang/String;

.field private mPopupView:Landroid/widget/TextView;

.field private mPopupVisible:Z

.field private final mRv:Lcom/android/launcher3/BaseRecyclerView;

.field private final mThumbHeight:I

.field private mThumbOffsetY:I

.field private final mThumbPaint:Landroid/graphics/Paint;

.field private final mThumbPath:Landroid/graphics/Path;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchInset:I

.field private mTouchOffsetY:I

.field private final mTrackPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setTrackWidth(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    sput-object v0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->TRACK_WIDTH:Landroid/util/Property;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BaseRecyclerView;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    .line 95
    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lcom/android/launcher3/BaseRecyclerView;->getFastScrollerTrackColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    const v0, 0x7f0b0028

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMinWidth:I

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    .line 106
    const v0, 0x7f0b0029

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    .line 107
    const v0, 0x7f0b002b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    .line 108
    const v0, 0x7f0b002c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    .line 109
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 111
    return-void
.end method

.method private animatePopupVisibility(Z)V
    .locals 4

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupVisible:Z

    if-eq v0, p1, :cond_0

    .line 311
    iput-boolean p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupVisible:Z

    .line 312
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_2

    const/16 v0, 0xc8

    :goto_1
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 315
    :cond_0
    return-void

    .line 313
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x96

    goto :goto_1
.end method

.method private calcTouchOffsetAndPrepToFastScroll(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 236
    iput-boolean v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 237
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    if-eqz v0, :cond_0

    .line 238
    iput-boolean v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 240
    :cond_0
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffsetY:I

    sub-int v1, p2, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffsetY:I

    .line 241
    invoke-direct {p0, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animatePopupVisibility(Z)V

    .line 242
    invoke-direct {p0, v2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->showActiveScrollbar(Z)V

    .line 243
    return-void
.end method

.method private getDrawLeft()I
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private setTrackWidth(I)V
    .locals 5

    .prologue
    .line 147
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    if-ne v0, p1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getDrawLeft()I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(IIII)V

    .line 154
    iput p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->updateThumbPath()V

    .line 156
    return-void
.end method

.method private showActiveScrollbar(Z)V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 285
    :cond_0
    sget-object v1, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->TRACK_WIDTH:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 286
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    :goto_0
    const/4 v3, 0x0

    aput v0, v2, v3

    .line 285
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMinWidth:I

    goto :goto_0
.end method

.method private updateFastScrollSectionNameAndThumbOffset(II)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    sub-int/2addr v0, v1

    .line 248
    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffsetY:I

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 249
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BaseRecyclerView;->scrollToPositionAtProgress(F)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupSectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iput-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupSectionName:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animatePopupVisibility(Z)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->updatePopupY(I)V

    .line 256
    iput v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    .line 257
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->setThumbOffsetY(I)V

    .line 258
    return-void
.end method

.method private updatePopupY(I)V
    .locals 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 319
    int-to-float v1, p1

    int-to-float v2, v0

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 320
    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 322
    return-void
.end method

.method private updateThumbPath()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    move v5, v0

    .line 163
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    move v3, v0

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    int-to-float v1, v5

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    int-to-float v1, v5

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    int-to-float v2, v2

    .line 170
    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 171
    int-to-float v5, v5

    .line 169
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 173
    return-void

    .line 162
    :cond_0
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    neg-int v0, v0

    move v5, v0

    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    neg-int v0, v0

    move v3, v0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    if-gez v0, :cond_0

    .line 262
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 265
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsRtl:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    .line 270
    :goto_0
    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 272
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    return-void

    .line 269
    :cond_2
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mWidth:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    return v0
.end method

.method public getThumbOffsetY()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;III)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 196
    packed-switch v2, :pswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    sub-int v0, p3, v0

    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffsetY:I

    goto :goto_0

    .line 200
    :cond_1
    sget-boolean v0, Lcom/android/launcher3/config/FeatureFlags;->LAUNCHER3_DIRECT_SCROLL:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->supportsFastScrolling()Z

    move-result v0

    .line 200
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearScrollBar(I)Z

    move-result v0

    .line 200
    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, p3, p4}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->calcTouchOffsetAndPrepToFastScroll(II)V

    .line 204
    invoke-direct {p0, p4, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->updateFastScrollSectionNameAndThumbOffset(II)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    sub-int v4, v3, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    if-le v4, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 211
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->supportsFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-virtual {p0, p2, p4}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->isNearThumb(II)Z

    move-result v0

    .line 211
    if-eqz v0, :cond_3

    .line 213
    sub-int v0, v3, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 214
    invoke-direct {p0, p3, p4}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->calcTouchOffsetAndPrepToFastScroll(II)V

    .line 216
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p4, v3}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->updateFastScrollSectionNameAndThumbOffset(II)V

    goto :goto_0

    .line 222
    :pswitch_2
    iput v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchOffsetY:I

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mLastTouchY:F

    .line 224
    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIgnoreDragGesture:Z

    .line 225
    iget-boolean v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 226
    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    .line 227
    invoke-direct {p0, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->animatePopupVisibility(Z)V

    .line 228
    invoke-direct {p0, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->showActiveScrollbar(Z)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isDraggingThumb()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsDragging:Z

    return v0
.end method

.method public isNearScrollBar(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getDrawLeft()I

    move-result v1

    .line 306
    if-lt p1, v1, :cond_0

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isNearThumb(II)Z
    .locals 6

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getDrawLeft()I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 298
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isThumbDetached()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    return v0
.end method

.method public reattachThumbToScroll()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mIsThumbDetached:Z

    .line 123
    return-void
.end method

.method public setDetachThumbOnFastScroll()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mCanThumbDetach:Z

    .line 119
    return-void
.end method

.method public setPopupView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mPopupView:Landroid/widget/TextView;

    .line 115
    return-void
.end method

.method public setThumbOffsetY(I)V
    .locals 6

    .prologue
    .line 130
    iget v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    if-ne v0, p1, :cond_0

    .line 131
    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->getDrawLeft()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iput p1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v3, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mMaxWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbOffsetY:I

    iget v5, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mRv:Lcom/android/launcher3/BaseRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseRecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 140
    return-void
.end method
