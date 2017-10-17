.class final Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

.field final synthetic val$allAppsButtonView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateTransitionAnimation$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->this$1:Lcom/android/launcher3/LauncherStateTransitionAnimation$1;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateTransitionAnimation$1$1;->val$allAppsButtonView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    return-void
.end method
