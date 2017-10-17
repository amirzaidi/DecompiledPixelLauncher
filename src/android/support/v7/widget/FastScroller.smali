.class Landroid/support/v7/widget/FastScroller;
.super Landroid/support/v7/widget/o;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/n;


# static fields
.field private static final Ta:[I

.field private static final Tk:[I


# instance fields
.field private final SQ:Landroid/graphics/drawable/StateListDrawable;

.field private final SR:Ljava/lang/Runnable;

.field private final SS:I

.field private ST:Z

.field private final SU:I

.field private final SV:Landroid/animation/ValueAnimator;

.field private final SW:I

.field private final SX:I

.field private final SY:Landroid/graphics/drawable/Drawable;

.field private SZ:I

.field private final Tb:Landroid/support/v7/widget/m;

.field private final Tc:I

.field private final Td:I

.field private Te:I

.field private final Tf:Landroid/graphics/drawable/StateListDrawable;

.field private Tg:Z

.field private final Th:Landroid/graphics/drawable/Drawable;

.field private final Ti:[I

.field private Tj:I

.field private final Tl:[I

.field private Tm:I

.field mHorizontalDragX:F

.field mHorizontalThumbCenterX:I

.field mHorizontalThumbWidth:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mState:I

.field mVerticalDragY:F

.field mVerticalThumbCenterY:I

.field mVerticalThumbHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/FastScroller;->Ta:[I

    .line 76
    new-array v0, v2, [I

    sput-object v0, Landroid/support/v7/widget/FastScroller;->Tk:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xff

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Landroid/support/v7/widget/o;-><init>()V

    .line 103
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    .line 104
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    .line 111
    iput-boolean v3, p0, Landroid/support/v7/widget/FastScroller;->Tg:Z

    .line 112
    iput-boolean v3, p0, Landroid/support/v7/widget/FastScroller;->ST:Z

    .line 113
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 114
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    .line 116
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tl:[I

    .line 117
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->Ti:[I

    .line 118
    new-array v0, v1, [F

    const/4 v1, 0x0

    aput v1, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    .line 119
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    .line 120
    new-instance v0, Landroid/support/v7/widget/ab;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ab;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->SR:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ao;-><init>(Landroid/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tb:Landroid/support/v7/widget/m;

    .line 138
    iput-object p2, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    .line 139
    iput-object p3, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object p4, p0, Landroid/support/v7/widget/FastScroller;->SQ:Landroid/graphics/drawable/StateListDrawable;

    .line 141
    iput-object p5, p0, Landroid/support/v7/widget/FastScroller;->SY:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    .line 143
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->SW:I

    .line 145
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->SS:I

    .line 147
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->Td:I

    .line 148
    iput p7, p0, Landroid/support/v7/widget/FastScroller;->Tc:I

    .line 149
    iput p8, p0, Landroid/support/v7/widget/FastScroller;->SU:I

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/as;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/aG;

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/aG;-><init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/FastScroller;->abL(Landroid/support/v7/widget/RecyclerView;)V

    .line 157
    return-void
.end method

.method private abN()[I
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Ti:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SU:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Ti:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->SU:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Ti:[I

    return-object v0
.end method

.method private abO()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/o;)V

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->Tb:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 182
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abT()V

    .line 183
    return-void
.end method

.method static synthetic abP(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private abQ(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 295
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    .line 297
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    sub-int/2addr v0, v1

    .line 298
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 299
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 300
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->SW:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    .line 301
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    int-to-float v2, v0

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    int-to-float v2, v1

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 307
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 309
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private abR(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 464
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abN()[I

    move-result-object v3

    .line 465
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 466
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 467
    return-void

    .line 470
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 471
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 472
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    move-object v0, p0

    .line 470
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->acc(FF[IIII)I

    move-result v0

    .line 473
    if-nez v0, :cond_1

    .line 477
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 478
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method static synthetic abS(Landroid/support/v7/widget/FastScroller;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    return-void
.end method

.method private abT()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->SR:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method static synthetic abU(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abW()V

    return-void
.end method

.method static synthetic abV(Landroid/support/v7/widget/FastScroller;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    return p1
.end method

.method private abW()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 187
    return-void
.end method

.method private abX(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 190
    if-eq p1, v2, :cond_2

    .line 195
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 201
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v0, v2, :cond_4

    .line 204
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    .line 207
    :goto_2
    iput p1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    .line 208
    return-void

    .line 190
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->Ta:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 192
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abT()V

    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abW()V

    goto :goto_1

    .line 201
    :cond_4
    if-eq p1, v2, :cond_1

    .line 202
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/support/v7/widget/FastScroller;->Tk:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 203
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->acf(I)V

    goto :goto_2

    .line 205
    :cond_5
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->acf(I)V

    goto :goto_2
.end method

.method private abY(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 449
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abZ()[I

    move-result-object v3

    .line 450
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 451
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 455
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 456
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    move-object v0, p0

    .line 454
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/FastScroller;->acc(FF[IIII)I

    move-result v0

    .line 457
    if-nez v0, :cond_1

    .line 460
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 461
    return-void

    .line 458
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0
.end method

.method private abZ()[I
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tl:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SU:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tl:[I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->SU:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tl:[I

    return-object v0
.end method

.method private aca()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/o;)V

    .line 174
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/n;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->Tb:Landroid/support/v7/widget/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 176
    return-void
.end method

.method static synthetic acb(Landroid/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private acc(FF[IIII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 482
    const/4 v0, 0x1

    aget v0, p3, v0

    aget v1, p3, v3

    sub-int/2addr v0, v1

    .line 483
    if-eqz v0, :cond_1

    .line 486
    sub-float v1, p2, p1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 487
    sub-int v1, p4, p6

    .line 488
    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 489
    add-int v2, p5, v0

    .line 490
    if-lt v2, v1, :cond_2

    .line 493
    :cond_0
    return v3

    .line 484
    :cond_1
    return v3

    .line 490
    :cond_2
    if-ltz v2, :cond_0

    .line 491
    return v0
.end method

.method static synthetic acd(Landroid/support/v7/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method private ace(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 320
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    .line 322
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SS:I

    sub-int/2addr v0, v1

    .line 323
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 324
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->SQ:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->SS:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 325
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->SY:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    iget v4, p0, Landroid/support/v7/widget/FastScroller;->Td:I

    .line 326
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->SY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    iget-object v2, p0, Landroid/support/v7/widget/FastScroller;->SQ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 333
    return-void
.end method

.method private acf(I)V
    .locals 4

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abT()V

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->SR:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method

.method private isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/f;->ags(Landroid/view/View;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public abL(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, p1, :cond_0

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 166
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_2

    .line 170
    :goto_1
    return-void

    .line 161
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->abO()V

    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->aca()V

    goto :goto_1
.end method

.method abM(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 344
    iget v4, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    .line 345
    sub-int v0, v3, v4

    if-gtz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->Tg:Z

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    .line 349
    iget v6, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    .line 350
    sub-int v0, v5, v6

    if-gtz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->ST:Z

    .line 353
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->Tg:Z

    if-eqz v0, :cond_6

    .line 360
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->Tg:Z

    if-nez v0, :cond_8

    .line 368
    :goto_2
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->ST:Z

    if-nez v0, :cond_9

    .line 376
    :goto_3
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_a

    .line 377
    :cond_3
    invoke-direct {p0, v1}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    .line 379
    :goto_4
    return-void

    .line 345
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    iget v5, p0, Landroid/support/v7/widget/FastScroller;->Tc:I

    if-lt v0, v5, :cond_0

    move v0, v1

    goto :goto_0

    .line 350
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    iget v7, p0, Landroid/support/v7/widget/FastScroller;->Tc:I

    if-lt v0, v7, :cond_1

    move v0, v1

    goto :goto_1

    .line 353
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->ST:Z

    if-nez v0, :cond_2

    .line 354
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-nez v0, :cond_7

    .line 357
    :goto_5
    return-void

    .line 355
    :cond_7
    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    goto :goto_5

    .line 361
    :cond_8
    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 362
    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 364
    mul-int v0, v4, v4

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    goto :goto_2

    .line 369
    :cond_9
    int-to-float v0, p1

    int-to-float v2, v6

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 370
    int-to-float v2, v6

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 372
    mul-int v0, v6, v6

    div-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    goto :goto_3

    .line 376
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v0, v1, :cond_3

    goto :goto_4
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SQ:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SY:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Tf:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->Th:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hide(I)V
    .locals 4

    .prologue
    .line 248
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 250
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 253
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    .line 254
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 223
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .locals 2

    .prologue
    .line 507
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SS:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-direct {p0}, Landroid/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->SX:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 219
    iget v1, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->Te:I

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    .line 280
    invoke-direct {p0, v2}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    .line 281
    return-void

    .line 272
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tm:I

    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    if-nez v0, :cond_3

    .line 292
    :cond_2
    :goto_0
    return-void

    .line 285
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->Tg:Z

    if-nez v0, :cond_4

    .line 288
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/FastScroller;->ST:Z

    if-eqz v0, :cond_2

    .line 289
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->ace(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 286
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller;->abQ(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 384
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v2, v0, :cond_1

    .line 402
    iget v2, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eq v2, v5, :cond_0

    move v0, v1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v2

    .line 386
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v0, v1

    .line 400
    goto :goto_0

    .line 387
    :cond_2
    if-eqz v2, :cond_4

    .line 389
    :cond_3
    if-nez v3, :cond_5

    .line 392
    if-nez v2, :cond_6

    .line 397
    :goto_2
    invoke-direct {p0, v5}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    goto :goto_0

    .line 387
    :cond_4
    if-nez v3, :cond_3

    goto :goto_1

    .line 390
    :cond_5
    iput v0, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_2

    .line 393
    :cond_6
    iput v5, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_2
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 412
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 434
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    return-void

    .line 417
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result v0

    .line 418
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v1

    .line 419
    if-eqz v0, :cond_5

    .line 420
    :cond_4
    if-nez v1, :cond_6

    .line 423
    if-nez v0, :cond_7

    .line 427
    :goto_1
    invoke-direct {p0, v3}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    goto :goto_0

    .line 419
    :cond_5
    if-nez v1, :cond_4

    goto :goto_0

    .line 421
    :cond_6
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_1

    .line 424
    :cond_7
    iput v3, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    goto :goto_1

    .line 429
    :cond_8
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v3, :cond_0

    .line 430
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 431
    iput v2, p0, Landroid/support/v7/widget/FastScroller;->mHorizontalDragX:F

    .line 432
    invoke-direct {p0, v4}, Landroid/support/v7/widget/FastScroller;->abX(I)V

    .line 433
    iput v1, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    goto :goto_0

    .line 434
    :cond_9
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->mState:I

    if-ne v0, v3, :cond_1

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/widget/FastScroller;->show()V

    .line 436
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    if-eq v0, v4, :cond_a

    .line 439
    :goto_2
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->SZ:I

    if-ne v0, v3, :cond_1

    .line 440
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->abY(F)V

    goto :goto_0

    .line 437
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/FastScroller;->abR(F)V

    goto :goto_2
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    iget v0, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :pswitch_2
    iput v4, p0, Landroid/support/v7/widget/FastScroller;->Tj:I

    .line 234
    iget-object v1, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/FastScroller;->SV:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
