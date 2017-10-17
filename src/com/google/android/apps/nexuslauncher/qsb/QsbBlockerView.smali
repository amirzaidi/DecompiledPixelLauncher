.class public Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$OnStateChangeListener;
.implements Lcom/google/android/apps/nexuslauncher/qsb/e;


# static fields
.field public static final x:Landroid/util/Property;


# instance fields
.field private mState:I

.field private mView:Landroid/view/View;

.field private final y:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/m;

    .line 30
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "bgAlpha"

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/m;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 28
    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->x:Landroid/util/Property;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->y:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->y:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const v0, 0x7f040025

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic E(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->y:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public D(Lcom/google/android/apps/nexuslauncher/qsb/a;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    .line 141
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-static {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/ShadowHostView;->e(Lcom/google/android/apps/nexuslauncher/qsb/a;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 146
    iput v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    .line 148
    if-eqz v1, :cond_3

    if-ne v2, v3, :cond_3

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    .line 152
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    if-ne v2, v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    if-eq v1, v0, :cond_2

    .line 155
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->removeView(Landroid/view/View;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->addView(Landroid/view/View;)V

    .line 176
    :cond_2
    :goto_1
    return-void

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_4
    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/google/android/apps/nexuslauncher/qsb/n;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/n;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnStateChangeListener(Lcom/android/launcher3/Workspace$OnStateChangeListener;)V

    .line 93
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getState()Lcom/android/launcher3/Workspace$State;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->prepareStateChange(Lcom/android/launcher3/Workspace$State;Landroid/animation/AnimatorSet;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->L(Lcom/google/android/apps/nexuslauncher/qsb/e;)Lcom/google/android/apps/nexuslauncher/qsb/a;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->D(Lcom/google/android/apps/nexuslauncher/qsb/a;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/c;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->M(Lcom/google/android/apps/nexuslauncher/qsb/e;)V

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 121
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 108
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    div-int v2, v0, v2

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 112
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 113
    return-void
.end method

.method public prepareStateChange(Lcom/android/launcher3/Workspace$State;Landroid/animation/AnimatorSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    sget-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3c

    .line 126
    :goto_0
    if-nez p2, :cond_1

    .line 127
    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->x:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 125
    goto :goto_0

    .line 129
    :cond_1
    sget-object v2, Lcom/google/android/apps/nexuslauncher/qsb/QsbBlockerView;->x:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 84
    return-void
.end method
