.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 483
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$7;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 493
    return-void
.end method
