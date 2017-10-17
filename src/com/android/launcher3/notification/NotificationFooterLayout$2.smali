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

    const v1, 0x7f0e0043

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$2;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationFooterLayout$2;->this$0:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->requestLayout()V

    .line 213
    return-void
.end method
