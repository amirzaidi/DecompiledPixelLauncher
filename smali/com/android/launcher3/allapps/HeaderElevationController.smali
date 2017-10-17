.class public Lcom/android/launcher3/allapps/HeaderElevationController;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field private mCurrentY:I

.field private final mHeader:Landroid/view/View;

.field private final mMaxElevation:F

.field private final mScrollToElevation:F


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/allapps/HeaderElevationController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/launcher3/allapps/HeaderElevationController;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mMaxElevation:F

    return v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mCurrentY:I

    .line 25
    iput-object p1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mMaxElevation:F

    .line 28
    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mScrollToElevation:F

    .line 33
    new-instance v1, Lcom/android/launcher3/allapps/HeaderElevationController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/allapps/HeaderElevationController$1;-><init>(Lcom/android/launcher3/allapps/HeaderElevationController;Landroid/content/res/Resources;)V

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 48
    return-void
.end method

.method private onScroll(I)V
    .locals 2

    .prologue
    .line 62
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mScrollToElevation:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mScrollToElevation:F

    div-float/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mMaxElevation:F

    mul-float/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getCurrentScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mCurrentY:I

    .line 58
    iget v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/HeaderElevationController;->onScroll(I)V

    .line 59
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mCurrentY:I

    .line 52
    iget v0, p0, Lcom/android/launcher3/allapps/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/HeaderElevationController;->onScroll(I)V

    .line 53
    return-void
.end method
