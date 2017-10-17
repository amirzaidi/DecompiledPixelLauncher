.class final Lcom/android/launcher3/CellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/InterruptibleInOutAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$2;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$2;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 277
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 280
    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$2;->val$anim:Lcom/android/launcher3/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 283
    :cond_0
    return-void
.end method
