.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

.field final synthetic val$allAppsButtonView:Landroid/view/View;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$5;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$5;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$revealView:Landroid/view/View;

    .line 402
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$revealView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 415
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$5$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 408
    return-void
.end method
