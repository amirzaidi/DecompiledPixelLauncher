.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .line 661
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->canceled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->canceled:Z

    .line 666
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 677
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$10;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 678
    return-void
.end method
