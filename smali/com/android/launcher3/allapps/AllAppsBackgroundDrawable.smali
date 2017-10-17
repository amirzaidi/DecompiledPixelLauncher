.class public Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mBackgroundAnim:Landroid/animation/ObjectAnimator;

.field protected final mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mHeight:I

.field protected final mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 98
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v2, 0x7f020036

    .line 101
    const v3, 0x3f133333    # 0.575f

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    .line 103
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v2, 0x7f020037

    .line 104
    const/high16 v3, 0x3ec00000    # 0.375f

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    const/4 v2, 0x0

    aput-object v0, v6, v2

    .line 105
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v2, 0x7f020038

    .line 106
    const/high16 v3, 0x3ea00000    # 0.3125f

    const v4, 0x3e4ccccd    # 0.2f

    .line 105
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    aput-object v0, v6, v5

    .line 107
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v2, 0x7f020039

    .line 108
    const v3, 0x3ef33333    # 0.475f

    const v4, 0x3e851eb8    # 0.26f

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    const/4 v2, 0x2

    aput-object v0, v6, v2

    .line 109
    iget-object v6, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    const v2, 0x7f02003a

    .line 110
    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3e000000    # 0.125f

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;-><init>(Landroid/content/res/Resources;IFFI)V

    const/4 v2, 0x3

    aput-object v0, v6, v2

    .line 111
    const v0, 0x7f0b0037

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    .line 112
    const v0, 0x7f0b0038

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    .line 113
    return-void
.end method

.method private cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 195
    :cond_0
    return-object v0
.end method


# virtual methods
.method public animateBgAlpha(FI)V
    .locals 4

    .prologue
    .line 119
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 122
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 165
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mHand:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 170
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mIcons:[Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable$TransformedImageDrawable;->setAlpha(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->invalidateSelf()V

    .line 174
    return-void
.end method

.method public setBgAlpha(F)V
    .locals 2

    .prologue
    .line 132
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method
