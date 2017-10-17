.class final Lcom/android/launcher3/notification/SwipeHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/notification/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iput-object p2, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$canBeDismissed:Z

    iput-object p4, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    .line 401
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->mCancelled:Z

    .line 406
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$animView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$canBeDismissed:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/notification/SwipeHelper;->-wrap0(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V

    .line 410
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get3(Lcom/android/launcher3/notification/SwipeHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-boolean v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->mCancelled:Z

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get0(Lcom/android/launcher3/notification/SwipeHelper;)Lcom/android/launcher3/notification/SwipeHelper$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$animView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher3/notification/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    invoke-static {v0}, Lcom/android/launcher3/notification/SwipeHelper;->-get2(Lcom/android/launcher3/notification/SwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/notification/SwipeHelper$3;->val$animView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 420
    :cond_2
    return-void
.end method
