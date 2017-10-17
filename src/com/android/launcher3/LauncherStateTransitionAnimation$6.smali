.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$6;
.super Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    .line 437
    invoke-direct {p0, p2}, Lcom/android/launcher3/LauncherStateTransitionAnimation$PrivateTransitionCallbacks;-><init>(F)V

    .line 1
    return-void
.end method


# virtual methods
.method public getMaterialRevealViewAnimatorListener(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lcom/android/launcher3/LauncherStateTransitionAnimation$6$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherStateTransitionAnimation$6$1;-><init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$6;Landroid/view/View;)V

    return-object v0
.end method

.method onTransitionComplete()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$6;->this$0:Lcom/android/launcher3/LauncherStateTransitionAnimation;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 451
    return-void
.end method
