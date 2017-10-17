.class final Lcom/android/launcher3/allapps/AllAppsTransitionController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-get1(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$3;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->-get1(Lcom/android/launcher3/allapps/AllAppsTransitionController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 398
    return-void
.end method
