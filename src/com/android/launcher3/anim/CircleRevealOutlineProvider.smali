.class public Lcom/android/launcher3/anim/CircleRevealOutlineProvider;
.super Lcom/android/launcher3/anim/RevealOutlineAnimation;
.source "SourceFile"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mRadius0:F

.field private mRadius1:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterX:I

    .line 34
    iput p2, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterY:I

    .line 35
    iput p3, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mRadius0:F

    .line 36
    iput p4, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mRadius1:F

    .line 37
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 3

    .prologue
    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mRadius0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mRadius1:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutlineRadius:F

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutlineRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutlineRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutlineRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/CircleRevealOutlineProvider;->mOutlineRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 52
    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
