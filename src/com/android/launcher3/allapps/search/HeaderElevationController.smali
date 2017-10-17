.class public Lcom/android/launcher3/allapps/search/HeaderElevationController;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field private mCurrentY:I

.field private final mHeader:Landroid/view/View;

.field private final mHeaderChild:Landroid/view/View;

.field private final mMaxElevation:F

.field private final mScrollToElevation:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/search/HeaderElevationController;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    return v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    .line 23
    iput v2, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 26
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    .line 29
    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    .line 34
    new-instance v0, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;-><init>(Lcom/android/launcher3/allapps/search/HeaderElevationController;)V

    .line 51
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeaderChild:Landroid/view/View;

    .line 53
    return-void
.end method

.method private onScroll(I)V
    .locals 3

    .prologue
    .line 67
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    div-float/2addr v0, v1

    .line 68
    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    mul-float/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeaderChild:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getCurrentScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 63
    iget v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->onScroll(I)V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 57
    iget v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->onScroll(I)V

    .line 58
    return-void
.end method
