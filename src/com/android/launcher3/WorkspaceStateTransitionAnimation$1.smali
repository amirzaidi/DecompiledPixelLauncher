.class final Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$overviewPanel:Landroid/view/ViewGroup;

.field final synthetic val$states:Lcom/android/launcher3/TransitionStates;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/TransitionStates;ZLandroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$states:Lcom/android/launcher3/TransitionStates;

    iput-boolean p3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$accessibilityEnabled:Z

    iput-object p4, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    .line 403
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->canceled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->canceled:Z

    .line 408
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-object v2, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mStateAnimator:Landroid/animation/AnimatorSet;

    .line 418
    iget-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$overviewPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 421
    const/16 v1, 0x40

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 423
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$1;->val$states:Lcom/android/launcher3/TransitionStates;

    iget-boolean v1, v1, Lcom/android/launcher3/TransitionStates;->stateIsSpringLoaded:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    .line 413
    return-void
.end method
