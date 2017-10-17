.class final Lcom/android/launcher3/allapps/AllAppsTransitionController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field canceled:Z

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 429
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->canceled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->canceled:Z

    .line 435
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->canceled:Z

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullDown()V

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-wrap0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$4;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-get0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/VerticalPullDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->finishedScrolling()V

    .line 446
    return-void
.end method
