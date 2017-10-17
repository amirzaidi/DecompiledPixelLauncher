.class final Lcom/android/launcher3/notification/SwipeHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/SwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iput-object p2, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->val$animView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->val$canBeDismissed:Z

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->this$0:Lcom/android/launcher3/notification/SwipeHelper;

    iget-object v2, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->val$animView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-boolean v3, p0, Lcom/android/launcher3/notification/SwipeHelper$2;->val$canBeDismissed:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/notification/SwipeHelper;->onTranslationUpdate(Landroid/view/View;FZ)V

    .line 384
    return-void
.end method
