.class final Lcom/android/launcher3/notification/NotificationFooterLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationFooterLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$2;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    .line 205
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$2;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$2;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 209
    return-void
.end method
