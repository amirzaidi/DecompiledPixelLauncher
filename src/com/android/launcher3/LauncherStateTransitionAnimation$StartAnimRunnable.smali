.class Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field private final mViewToFocus:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    .line 724
    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    .line 725
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    .line 730
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mViewToFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 736
    return-void
.end method
