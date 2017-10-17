.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field final synthetic val$contentView:Landroid/view/View;

.field final synthetic val$fromView:Lcom/android/launcher3/BaseContainerView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Lcom/android/launcher3/BaseContainerView;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$fromView:Lcom/android/launcher3/BaseContainerView;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$contentView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .line 639
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$fromView:Lcom/android/launcher3/BaseContainerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseContainerView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$contentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$contentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 652
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$contentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 657
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$9;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 658
    return-void
.end method
