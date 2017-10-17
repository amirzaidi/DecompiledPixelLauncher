.class public Lcom/android/launcher3/util/WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mAnimating:Z

.field private mAnimationStartOffset:F

.field private mAnimationStartTime:J

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentOffset:F

.field private mFinalOffset:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mIsRtl:Z

.field private mLastSetWallpaperOffsetSteps:F

.field private mLockedToDefaultPage:Z

.field mNumPagesForWallpaperParallax:I

.field mNumScreens:I

.field private mWaitingForUpdate:Z

.field private mWallpaperIsLiveWallpaper:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWindowToken:Landroid/os/IBinder;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLastSetWallpaperOffsetSteps:F

    .line 33
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 34
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 49
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 50
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    .line 51
    return-void
.end method

.method private animateToFinal()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimating:Z

    .line 194
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimationStartTime:J

    .line 196
    return-void
.end method

.method private getNumScreensExcludingEmptyAndCustom()I
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->numEmptyScreensToIgnore()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private numEmptyScreensToIgnore()I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v1

    sub-int/2addr v0, v1

    .line 167
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private scheduleUpdate()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 225
    :cond_0
    return-void
.end method

.method private setWallpaperOffsetSteps()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 200
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 201
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLastSetWallpaperOffsetSteps:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 203
    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLastSetWallpaperOffsetSteps:F

    .line 205
    :cond_0
    return-void
.end method

.method private updateOffset(Z)V
    .locals 4

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWaitingForUpdate:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getCurrX()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 64
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWallpaperOffsetSteps()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v1, "WPOffsetInterpolator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error updating wallpaper offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v9, 0x33d6bf95    # 1.0E-7f

    .line 84
    iget v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 85
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimating:Z

    if-eqz v0, :cond_2

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    .line 87
    long-to-float v0, v4

    const/high16 v6, 0x437a0000    # 250.0f

    div-float/2addr v0, v6

    .line 88
    iget-object v6, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 89
    iget v6, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    .line 90
    iget v7, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    iget v8, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimationStartOffset:F

    sub-float/2addr v7, v8

    mul-float/2addr v0, v7

    .line 89
    add-float/2addr v0, v6

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 91
    const-wide/16 v6, 0xfa

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mAnimating:Z

    .line 96
    :goto_1
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v9

    if-lez v0, :cond_3

    .line 100
    return v1

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    goto :goto_1

    .line 102
    :cond_3
    return v2
.end method

.method public doFrame(J)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 56
    return-void
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    return v0
.end method

.method public isLockedToDefaultPage()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLastSetWallpaperOffsetSteps:F

    .line 236
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(F)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->scheduleUpdate()V

    .line 209
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    .line 210
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-eq v0, v1, :cond_1

    .line 211
    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mCurrentOffset:F

    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mFinalOffset:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->animateToFinal()V

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumScreens:I

    .line 218
    :cond_1
    return-void
.end method

.method public setLockToDefaultPage(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    .line 77
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    .line 240
    return-void
.end method

.method public syncWithScroll()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForCurrentScroll()F

    move-result v0

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->updateOffset(Z)V

    .line 182
    return-void
.end method

.method public wallpaperOffsetForScroll(I)F
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmptyAndCustom()I

    move-result v4

    .line 112
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-gt v4, v2, :cond_2

    .line 113
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 118
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWallpaperIsLiveWallpaper:Z

    if-eqz v2, :cond_3

    .line 119
    iput v4, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    .line 127
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v3

    .line 129
    add-int v2, v3, v4

    add-int/lit8 v2, v2, -0x1

    .line 136
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v2

    .line 137
    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v3

    .line 138
    sub-int/2addr v3, v2

    .line 139
    if-nez v3, :cond_5

    .line 140
    return v1

    .line 121
    :cond_3
    const/4 v2, 0x4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    goto :goto_1

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v2

    .line 132
    add-int v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 145
    :cond_5
    sub-int v2, p1, v2

    .line 146
    iget-object v5, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Workspace;->getLayoutTransitionOffsetForPage(I)I

    move-result v5

    .line 145
    sub-int/2addr v2, v5

    .line 147
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 152
    iget-boolean v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mIsRtl:Z

    if-eqz v2, :cond_6

    .line 154
    iget v1, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v4, -0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 155
    iget v2, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    .line 154
    div-float/2addr v1, v2

    .line 158
    :cond_6
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mNumPagesForWallpaperParallax:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 157
    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method
