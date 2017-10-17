.class final Lcom/android/launcher3/notification/NotificationFooterLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

.field final synthetic val$callback:Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;

.field final synthetic val$firstNotification:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationFooterLayout;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    iput-object p2, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->val$callback:Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->val$firstNotification:Landroid/view/View;

    .line 160
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->val$callback:Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->val$firstNotification:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-interface {v1, v0}, Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;->onIconAnimationEnd(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$1;->val$firstNotification:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->-wrap0(Lcom/android/launcher3/notification/NotificationFooterLayout;Landroid/view/View;)V

    .line 165
    return-void
.end method
