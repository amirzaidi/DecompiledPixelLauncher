.class public Landroid/support/v7/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private RA:Z

.field private RB:I

.field private RC:I

.field private RD:I

.field private mDuration:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 11349
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/support/v7/widget/H;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11350
    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11334
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/H;->RB:I

    .line 11338
    iput-boolean v1, p0, Landroid/support/v7/widget/H;->RA:Z

    .line 11342
    iput v1, p0, Landroid/support/v7/widget/H;->RC:I

    .line 11369
    iput p1, p0, Landroid/support/v7/widget/H;->RD:I

    .line 11370
    iput p2, p0, Landroid/support/v7/widget/H;->mDy:I

    .line 11371
    iput p3, p0, Landroid/support/v7/widget/H;->mDuration:I

    .line 11372
    iput-object p4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11373
    return-void
.end method

.method private aaF()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11432
    iget-object v0, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 11435
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 11438
    return-void

    .line 11432
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    if-ge v0, v1, :cond_0

    .line 11433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11436
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public aaG(IIILandroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 11491
    iput p1, p0, Landroid/support/v7/widget/H;->RD:I

    .line 11492
    iput p2, p0, Landroid/support/v7/widget/H;->mDy:I

    .line 11493
    iput p3, p0, Landroid/support/v7/widget/H;->mDuration:I

    .line 11494
    iput-object p4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/H;->RA:Z

    .line 11496
    return-void
.end method

.method aaH(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11399
    iget v0, p0, Landroid/support/v7/widget/H;->RB:I

    if-gez v0, :cond_0

    .line 11406
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->RA:Z

    if-nez v0, :cond_1

    .line 11427
    iput v5, p0, Landroid/support/v7/widget/H;->RC:I

    .line 11429
    :goto_0
    return-void

    .line 11400
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/H;->RB:I

    .line 11401
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/H;->RB:I

    .line 11402
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11403
    iput-boolean v5, p0, Landroid/support/v7/widget/H;->RA:Z

    .line 11404
    return-void

    .line 11407
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/H;->aaF()V

    .line 11408
    iget-object v0, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 11415
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->RD:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/H;->mDuration:I

    iget-object v4, p0, Landroid/support/v7/widget/H;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/v;->YZ(IIILandroid/view/animation/Interpolator;)V

    .line 11418
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/H;->RC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/H;->RC:I

    .line 11419
    iget v0, p0, Landroid/support/v7/widget/H;->RC:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4

    .line 11425
    :goto_2
    iput-boolean v5, p0, Landroid/support/v7/widget/H;->RA:Z

    goto :goto_0

    .line 11409
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/H;->mDuration:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 11412
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->RD:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    iget v3, p0, Landroid/support/v7/widget/H;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/v;->Zg(III)V

    goto :goto_1

    .line 11410
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/v;

    iget v1, p0, Landroid/support/v7/widget/H;->RD:I

    iget v2, p0, Landroid/support/v7/widget/H;->mDy:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/v;->smoothScrollBy(II)V

    goto :goto_1

    .line 11422
    :cond_4
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public aaI(I)V
    .locals 0

    .prologue
    .line 11391
    iput p1, p0, Landroid/support/v7/widget/H;->RB:I

    .line 11392
    return-void
.end method

.method aaJ()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11395
    iget v1, p0, Landroid/support/v7/widget/H;->RB:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
