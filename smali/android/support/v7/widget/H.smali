.class public Landroid/support/v7/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private PT:Z

.field private PU:I

.field private PV:I

.field private PW:I

.field private mDuration:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 11304
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/v7/widget/H;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11305
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11289
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/H;->PU:I

    .line 11293
    iput-boolean v1, p0, Landroid/support/v7/widget/H;->PT:Z

    .line 11297
    iput v1, p0, Landroid/support/v7/widget/H;->PV:I

    .line 11324
    iput p1, p0, Landroid/support/v7/widget/H;->PW:I

    .line 11325
    iput p2, p0, Landroid/support/v7/widget/H;->mDy:I

    .line 11326
    iput p3, p0, Landroid/support/v7/widget/H;->mDuration:I

    .line 11327
    iput-object p4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11328
    return-void
.end method

.method private ZD()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11387
    iget-object v0, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 11390
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 11393
    return-void

    .line 11387
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 11388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11391
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ZE(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 11446
    iput p1, p0, Landroid/support/v7/widget/H;->PW:I

    .line 11447
    iput p2, p0, Landroid/support/v7/widget/H;->mDy:I

    .line 11448
    iput p3, p0, Landroid/support/v7/widget/H;->mDuration:I

    .line 11449
    iput-object p4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11450
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/H;->PT:Z

    .line 11451
    return-void
.end method

.method ZF(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11354
    iget v0, p0, Landroid/support/v7/widget/H;->PU:I

    if-gez v0, :cond_0

    .line 11361
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->PT:Z

    if-nez v0, :cond_1

    .line 11382
    iput v5, p0, Landroid/support/v7/widget/H;->PV:I

    .line 11384
    :goto_0
    return-void

    .line 11355
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/H;->PU:I

    .line 11356
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/H;->PU:I

    .line 11357
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11358
    iput-boolean v5, p0, Landroid/support/v7/widget/H;->PT:Z

    .line 11359
    return-void

    .line 11362
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/H;->ZD()V

    .line 11363
    iget-object v0, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 11370
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->PW:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/H;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/v;->XY(IIILandroid/view/animation/Interpolator;)V

    .line 11373
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/H;->PV:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/H;->PV:I

    .line 11374
    iget v0, p0, Landroid/support/v7/widget/H;->PV:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4

    .line 11380
    :goto_2
    iput-boolean v5, p0, Landroid/support/v7/widget/H;->PT:Z

    goto :goto_0

    .line 11364
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 11367
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->PW:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/H;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/v;->Ye(III)V

    goto :goto_1

    .line 11365
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->PW:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/v;->smoothScrollBy(II)V

    goto :goto_1

    .line 11377
    :cond_4
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public ZG(I)V
    .locals 0

    .prologue
    .line 11346
    iput p1, p0, Landroid/support/v7/widget/H;->PU:I

    .line 11347
    return-void
.end method

.method ZH()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11350
    iget v1, p0, Landroid/support/v7/widget/H;->PU:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
