.class public Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;
.super Lcom/android/launcher3/util/PillRevealOutlineProvider;
.source "SourceFile"


# instance fields
.field private final mNewHeight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;FI)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/launcher3/util/PillRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;F)V

    .line 33
    iget-object v0, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    iput p3, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mNewHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mNewHeight:I

    sub-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/anim/PillHeightRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 42
    return-void
.end method
