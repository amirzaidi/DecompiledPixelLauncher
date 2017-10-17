.class Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;
.super Lcom/android/launcher3/util/PillRevealOutlineProvider;
.source "SourceFile"


# instance fields
.field private final mArrowCenter:F

.field private final mFullHeight:F

.field private final mPivotLeft:Z

.field private final mTranslateView:Landroid/view/View;

.field private final mTranslateX:F

.field private final mTranslateYMultiplier:F

.field private final mZoomView:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/graphics/Rect;Lcom/android/launcher3/popup/PopupItemView;Landroid/view/View;ZZF)V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p4}, Lcom/android/launcher3/popup/PopupItemView;->getBackgroundRadius()F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/util/PillRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;F)V

    .line 206
    iput-object p4, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    .line 207
    iput-object p5, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    .line 208
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mFullHeight:F

    .line 210
    if-eqz p6, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    iput v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    .line 212
    iput-boolean p7, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    .line 213
    if-eqz p7, :cond_1

    move v0, p8

    :goto_1
    iput v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateX:F

    .line 214
    iput p8, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mArrowCenter:F

    .line 215
    return-void

    .line 210
    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_0

    .line 213
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p8

    goto :goto_1
.end method


# virtual methods
.method public setProgress(F)V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/launcher3/util/PillRevealOutlineProvider;->setProgress(F)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mZoomView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 227
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateYMultiplier:F

    iget v3, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mFullHeight:F

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mArrowCenter:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 230
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mPivotLeft:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mTranslateX:F

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 232
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupItemView$ZoomRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    goto :goto_0
.end method
