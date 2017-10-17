.class final Lcom/android/launcher3/PinchAnimationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PinchAnimationManager;

.field final synthetic val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PinchAnimationManager;Lcom/android/launcher3/PinchThresholdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PinchAnimationManager$1;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/PinchAnimationManager$1;->val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager$1;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PinchAnimationManager;->setAnimationProgress(F)V

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/PinchAnimationManager$1;->val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 103
    iget-object v2, p0, Lcom/android/launcher3/PinchAnimationManager$1;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/PinchThresholdManager;->updateAndAnimatePassedThreshold(FLcom/android/launcher3/PinchAnimationManager;)F

    .line 104
    return-void
.end method
