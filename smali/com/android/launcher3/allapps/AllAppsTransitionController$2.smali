.class final Lcom/android/launcher3/allapps/AllAppsTransitionController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 376
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->finishPullDown()V

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-set0(Lcom/android/launcher3/allapps/AllAppsTransitionController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-set1(Lcom/android/launcher3/allapps/AllAppsTransitionController;Z)Z

    .line 388
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-set1(Lcom/android/launcher3/allapps/AllAppsTransitionController;Z)Z

    .line 380
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->preparePull(Z)V

    .line 381
    return-void
.end method
