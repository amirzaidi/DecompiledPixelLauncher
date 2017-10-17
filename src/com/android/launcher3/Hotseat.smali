.class public Lcom/android/launcher3/Hotseat;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private mBackground:Landroid/graphics/drawable/ColorDrawable;

.field private mBackgroundColor:I

.field private mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

.field private mContent:Lcom/android/launcher3/CellLayout;

.field private final mHasVerticalHotseat:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/Hotseat;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/Hotseat;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 73
    const v0, 0x1010433

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->arc(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColor:I

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 176
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 177
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 178
    const/4 v0, 0x2

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 179
    return-void
.end method

.method public getBackgroundDrawableColor()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColor:I

    return v0
.end method

.method getCellXFromOrder(I)I
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 115
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 116
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->resetLayout()V

    .line 123
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetLayout()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    .line 164
    return-void
.end method

.method public setBackgroundTransparent(Z)V
    .locals 2

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mBackground:Landroid/graphics/drawable/ColorDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    return-void
.end method

.method public updateColor(Lcom/android/launcher3/dynamicui/ExtractedColors;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p1, v4, v3}, Lcom/android/launcher3/dynamicui/ExtractedColors;->getColor(II)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 187
    :cond_0
    if-nez p2, :cond_2

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->setBackgroundColor(I)V

    .line 206
    :goto_0
    iput v0, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColor:I

    .line 208
    :cond_1
    return-void

    .line 190
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColor:I

    aput v2, v1, v3

    aput v0, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    .line 191
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 192
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/Hotseat$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Hotseat$1;-><init>(Lcom/android/launcher3/Hotseat;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/Hotseat$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Hotseat$2;-><init>(Lcom/android/launcher3/Hotseat;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mBackgroundColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
