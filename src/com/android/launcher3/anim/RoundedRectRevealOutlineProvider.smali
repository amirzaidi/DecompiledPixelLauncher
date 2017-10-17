.class public Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
.super Lcom/android/launcher3/anim/RevealOutlineAnimation;
.source "SourceFile"


# instance fields
.field private final mEndRadius:F

.field private final mEndRect:Landroid/graphics/Rect;

.field private final mRoundedCorners:I

.field private final mStartRadius:F

.field private final mStartRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 45
    const/4 v5, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 44
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/anim/RevealOutlineAnimation;-><init>()V

    .line 50
    iput p1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    .line 51
    iput p2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    .line 52
    iput-object p3, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    .line 53
    iput-object p4, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    .line 54
    iput p5, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mRoundedCorners:I

    .line 55
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    sub-float v0, v3, p1

    iget v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRadius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRadius:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v1, v3, p1

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v1, v3, p1

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 68
    iget v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mRoundedCorners:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v1, v3, p1

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    sub-float v1, v3, p1

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mEndRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    iget v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mRoundedCorners:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->mOutlineRadius:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 76
    :cond_1
    return-void
.end method

.method public shouldRemoveElevationDuringAnimation()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
