.class public Landroid/support/v7/widget/av;
.super Landroid/support/v7/widget/g;
.source "SourceFile"


# instance fields
.field private final Sp:F

.field protected Sq:Landroid/graphics/PointF;

.field protected final Sr:Landroid/view/animation/DecelerateInterpolator;

.field protected final Ss:Landroid/view/animation/LinearInterpolator;

.field protected St:I

.field protected Su:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v7/widget/g;-><init>()V

    .line 83
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/av;->Ss:Landroid/view/animation/LinearInterpolator;

    .line 85
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/av;->Sr:Landroid/view/animation/DecelerateInterpolator;

    .line 93
    iput v1, p0, Landroid/support/v7/widget/av;->Su:I

    iput v1, p0, Landroid/support/v7/widget/av;->St:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->abI(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/av;->Sp:F

    .line 97
    return-void
.end method

.method private abF(II)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    sub-int v0, p1, p2

    .line 256
    mul-int v1, p1, v0

    if-lez v1, :cond_0

    .line 259
    return v0

    .line 257
    :cond_0
    return v2
.end method


# virtual methods
.method protected WT(Landroid/view/View;Landroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->abL()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/av;->abD(Landroid/view/View;I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->abK()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/av;->abJ(Landroid/view/View;I)I

    move-result v1

    .line 114
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 115
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/av;->abE(I)I

    move-result v2

    .line 116
    if-gtz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    neg-int v0, v0

    neg-int v1, v1

    iget-object v3, p0, Landroid/support/v7/widget/av;->Sr:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/support/v7/widget/H;->ZE(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected WV(IILandroid/support/v7/widget/e;Landroid/support/v7/widget/H;)V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget v0, p0, Landroid/support/v7/widget/av;->Su:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/av;->abF(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/av;->Su:I

    .line 137
    iget v0, p0, Landroid/support/v7/widget/av;->St:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/av;->abF(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/av;->St:I

    .line 139
    iget v0, p0, Landroid/support/v7/widget/av;->Su:I

    if-eqz v0, :cond_2

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->stop()V

    .line 128
    return-void

    .line 139
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/av;->St:I

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p4}, Landroid/support/v7/widget/av;->abG(Landroid/support/v7/widget/H;)V

    goto :goto_0
.end method

.method public abC(IIIII)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    packed-switch p5, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_0
    sub-int v0, p3, p1

    return v0

    .line 272
    :pswitch_1
    sub-int v0, p4, p2

    return v0

    .line 274
    :pswitch_2
    sub-int v0, p3, p1

    .line 275
    if-gtz v0, :cond_0

    .line 278
    sub-int v0, p4, p2

    .line 279
    if-ltz v0, :cond_1

    .line 287
    return v1

    .line 276
    :cond_0
    return v0

    .line 280
    :cond_1
    return v0

    .line 268
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public abD(Landroid/view/View;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v4

    .line 328
    if-nez v4, :cond_1

    .line 329
    :cond_0
    return v1

    .line 328
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 333
    invoke-virtual {v4, p1}, Landroid/support/v7/widget/p;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->leftMargin:I

    sub-int/2addr v1, v2

    .line 334
    invoke-virtual {v4, p1}, Landroid/support/v7/widget/p;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/i;->rightMargin:I

    add-int/2addr v2, v0

    .line 335
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getPaddingLeft()I

    move-result v3

    .line 336
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    .line 337
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/av;->abC(IIIII)I

    move-result v0

    return v0
.end method

.method protected abE(I)I
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->abH(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected abG(Landroid/support/v7/widget/H;)V
    .locals 5

    .prologue
    const v4, 0x461c4000    # 10000.0f

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    .line 232
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->WX()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 233
    if-nez v0, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->WX()I

    move-result v0

    .line 235
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/H;->ZG(I)V

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->stop()V

    .line 237
    return-void

    .line 233
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 239
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->WS(Landroid/graphics/PointF;)V

    .line 240
    iput-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    .line 242
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/av;->Su:I

    .line 243
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/av;->St:I

    .line 244
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->abH(I)I

    move-result v0

    .line 248
    iget v1, p0, Landroid/support/v7/widget/av;->Su:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/av;->St:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Landroid/support/v7/widget/av;->Ss:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/support/v7/widget/H;->ZE(IIILandroid/view/animation/Interpolator;)V

    .line 251
    return-void
.end method

.method protected abH(I)I
    .locals 2

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/av;->Sp:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected abI(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 162
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float v0, v1, v0

    return v0
.end method

.method public abJ(Landroid/view/View;I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v4

    .line 303
    if-nez v4, :cond_1

    .line 304
    :cond_0
    return v1

    .line 303
    :cond_1
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/i;

    .line 308
    invoke-virtual {v4, p1}, Landroid/support/v7/widget/p;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/i;->topMargin:I

    sub-int/2addr v1, v2

    .line 309
    invoke-virtual {v4, p1}, Landroid/support/v7/widget/p;->getDecoratedBottom(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/i;->bottomMargin:I

    add-int/2addr v2, v0

    .line 310
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getPaddingTop()I

    move-result v3

    .line 311
    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/p;->getPaddingBottom()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    .line 312
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/av;->abC(IIIII)I

    move-result v0

    return v0
.end method

.method protected abK()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected abL()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/support/v7/widget/av;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    .line 353
    instance-of v1, v0, Landroid/support/v7/widget/G;

    if-nez v1, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/G;

    const-string/jumbo v2, "LinearSmoothScroller"

    .line 358
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    check-cast v0, Landroid/support/v7/widget/G;

    .line 355
    invoke-interface {v0, p1}, Landroid/support/v7/widget/G;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Landroid/support/v7/widget/av;->St:I

    iput v0, p0, Landroid/support/v7/widget/av;->Su:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/av;->Sq:Landroid/graphics/PointF;

    .line 152
    return-void
.end method
