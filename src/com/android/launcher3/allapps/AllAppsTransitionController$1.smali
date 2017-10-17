.class final Lcom/android/launcher3/allapps/AllAppsTransitionController$1;
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
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 346
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->canceled:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->canceled:Z

    .line 352
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullUp()V

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-wrap0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-get0(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Lcom/android/launcher3/allapps/VerticalPullDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/VerticalPullDetector;->finishedScrolling()V

    .line 363
    return-void
.end method
