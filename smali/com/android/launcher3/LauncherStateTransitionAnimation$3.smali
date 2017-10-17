.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field final synthetic val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/view/View;Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$revealView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    .line 328
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation;->cleanupAnimation()V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$3;->val$pCb:Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;->onTransitionComplete()V

    .line 337
    return-void
.end method
