.class public Lcom/android/launcher3/PinchAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INTERPOLATOR:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final mAnimators:[Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mNormalOverviewTransitionDuration:I

.field private mOverviewScale:F

.field private mOverviewTranslationY:F

.field private mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/PinchAnimationManager;)Lcom/android/launcher3/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/launcher3/PinchAnimationManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/PinchAnimationManager;->mIsAnimating:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/PinchAnimationManager;->INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    .line 73
    iput-object p1, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 74
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOverviewModeShrinkFactor()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mOverviewScale:F

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getOverviewModeTranslationY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mOverviewTranslationY:F

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mOverviewTransitionTime:I

    iput v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mNormalOverviewTransitionDuration:I

    .line 80
    return-void
.end method

.method private animateHotseatAndQsb(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->createHotseatAlphaAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    .line 196
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/launcher3/PinchAnimationManager;->startAnimator(ILandroid/animation/Animator;J)V

    .line 198
    return-void

    :cond_0
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method private animateOverviewPanelButtons(Z)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/PinchAnimationManager;->animateShowHideView(ILandroid/view/View;Z)V

    .line 202
    return-void
.end method

.method private animateScrim(Z)V
    .locals 5

    .prologue
    .line 205
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:F

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const-string/jumbo v2, "backgroundAlpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 208
    iget v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mNormalOverviewTransitionDuration:I

    int-to-long v2, v1

    .line 206
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/launcher3/PinchAnimationManager;->startAnimator(ILandroid/animation/Animator;J)V

    .line 209
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private animateShowHideView(ILandroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v0, [F

    if-eqz p3, :cond_0

    :goto_0
    int-to-float v0, v0

    aput v0, v3, v1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 213
    new-instance v2, Lcom/android/launcher3/anim/AnimationLayerSet;

    invoke-direct {v2, p2}, Lcom/android/launcher3/anim/AnimationLayerSet;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    if-eqz p3, :cond_1

    .line 215
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_1
    const-wide/16 v2, 0x96

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher3/PinchAnimationManager;->startAnimator(ILandroid/animation/Animator;J)V

    .line 234
    return-void

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0

    .line 217
    :cond_1
    new-instance v1, Lcom/android/launcher3/PinchAnimationManager$3;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/PinchAnimationManager$3;-><init>(Lcom/android/launcher3/PinchAnimationManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method

.method private setOverviewPanelsAlpha(FI)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    move v1, v2

    .line 185
    :goto_0
    if-ge v1, v3, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 187
    if-nez p2, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setBackgroundAlpha(F)V

    .line 185
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_0
    const-string/jumbo v4, "backgroundAlpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 193
    :cond_1
    return-void
.end method

.method private startAnimator(ILandroid/animation/Animator;J)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    aput-object p2, v0, p1

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/launcher3/PinchAnimationManager;->INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mAnimators:[Landroid/animation/Animator;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 243
    return-void
.end method


# virtual methods
.method public animateThreshold(FLcom/android/launcher3/Workspace$State;Lcom/android/launcher3/Workspace$State;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 150
    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_4

    .line 151
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_2

    .line 152
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/PinchAnimationManager;->animateOverviewPanelButtons(Z)V

    .line 181
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_0

    .line 154
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/PinchAnimationManager;->animateHotseatAndQsb(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 156
    :cond_4
    const v2, 0x3f333333    # 0.7f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_a

    .line 157
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_7

    .line 158
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_5

    move v2, v0

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/launcher3/PinchAnimationManager;->animateHotseatAndQsb(Z)V

    .line 159
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_6

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/launcher3/PinchAnimationManager;->animateScrim(Z)V

    goto :goto_1

    :cond_5
    move v2, v1

    .line 158
    goto :goto_3

    :cond_6
    move v0, v1

    .line 159
    goto :goto_4

    .line 160
    :cond_7
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_0

    .line 161
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_8

    move v2, v0

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/launcher3/PinchAnimationManager;->animateOverviewPanelButtons(Z)V

    .line 162
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_9

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/PinchAnimationManager;->animateScrim(Z)V

    goto :goto_1

    :cond_8
    move v2, v1

    .line 161
    goto :goto_5

    :cond_9
    move v0, v1

    .line 162
    goto :goto_6

    .line 164
    :cond_a
    const v2, 0x3f733333    # 0.95f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_c

    .line 166
    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_b

    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_b

    .line 167
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x6

    .line 167
    invoke-virtual {v2, v5, v1, v4, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 170
    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->showWorkspace(Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto :goto_1

    .line 172
    :cond_b
    sget-object v2, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    if-ne p2, v2, :cond_0

    sget-object v2, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    if-ne p3, v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v3

    .line 173
    invoke-virtual {v2, v5, v1, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 176
    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->showOverviewMode(Z)V

    goto/16 :goto_1

    .line 179
    :cond_c
    const-string/jumbo v0, "PinchAnimationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received unknown threshold to animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public animateToProgress(FFILcom/android/launcher3/PinchThresholdManager;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 93
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 94
    iget p3, p0, Lcom/android/launcher3/PinchAnimationManager;->mNormalOverviewTransitionDuration:I

    .line 96
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/launcher3/PinchAnimationManager$1;

    invoke-direct {v1, p0, p4}, Lcom/android/launcher3/PinchAnimationManager$1;-><init>(Lcom/android/launcher3/PinchAnimationManager;Lcom/android/launcher3/PinchThresholdManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    new-instance v1, Lcom/android/launcher3/PinchAnimationManager$2;

    invoke-direct {v1, p0, p4}, Lcom/android/launcher3/PinchAnimationManager$2;-><init>(Lcom/android/launcher3/PinchAnimationManager;Lcom/android/launcher3/PinchThresholdManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 116
    iput-boolean v4, p0, Lcom/android/launcher3/PinchAnimationManager;->mIsAnimating:Z

    .line 117
    return-void
.end method

.method public getNormalOverviewTransitionDuration()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mNormalOverviewTransitionDuration:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mIsAnimating:Z

    return v0
.end method

.method public setAnimationProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 129
    iget v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mOverviewScale:F

    sub-float v0, v3, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/PinchAnimationManager;->mOverviewScale:F

    add-float/2addr v0, v1

    .line 130
    sub-float v1, v3, p1

    iget v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mOverviewTranslationY:F

    mul-float/2addr v1, v2

    .line 131
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setTranslationY(F)V

    .line 134
    sub-float v0, v3, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/PinchAnimationManager;->setOverviewPanelsAlpha(FI)V

    .line 135
    return-void
.end method
