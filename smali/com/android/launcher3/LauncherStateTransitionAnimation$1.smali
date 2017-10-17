.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$1;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

.field final synthetic val$startSearchAfterTransition:Z

.field final synthetic val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;FZLcom/android/launcher3/allapps/AllAppsContainerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    iput-object p4, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 138
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>(F)V

    .line 1
    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$1;Landroid/view/View;)V

    return-object v0
.end method

.method public getMaterialRevealViewStartFinalRadius()F
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsButtonVisualSize:I

    .line 142
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method onTransitionComplete()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 159
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$startSearchAfterTransition:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1;->val$toView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->startAppsSearch()V

    .line 162
    :cond_0
    return-void
.end method
