.class final Lcom/android/launcher3/notification/SwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$targetLeft:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;ZF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iput-object p2, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$canBeDismissed:Z

    iput p4, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$targetLeft:F

    .line 449
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/notification/SwipeHelper;->-set1(Lcom/android/launcher3/notification/SwipeHelper;Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;->-wrap0(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get0(Lcom/android/launcher3/notification/SwipeHelper;)Lcom/android/launcher3/notification/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$animView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/notification/SwipeHelper$5;->val$targetLeft:F

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->onChildSnappedBack(Landroid/view/View;F)V

    .line 454
    return-void
.end method
