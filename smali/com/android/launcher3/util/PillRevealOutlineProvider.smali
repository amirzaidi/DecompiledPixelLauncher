.class public Lcom/android/launcher3/util/PillRevealOutlineProvider;
.super Lcom/android/launcher3/util/RevealOutlineAnimation;
.source "SourceFile"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mFinalRadius:F

.field protected mPillRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;F)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/util/RevealOutlineAnimation;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    .line 45
    iput p2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    .line 46
    iput-object p3, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    .line 47
    iput p4, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mFinalRadius:F

    iput p4, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutlineRadius:F

    .line 48
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterX:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mCenterY:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 66
    iget v0, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mFinalRadius:F

    iget-object v1, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/PillRevealOutlineProvider;->mOutlineRadius:F

    .line 67
    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
