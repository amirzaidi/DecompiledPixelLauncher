.class final Lcom/android/launcher3/PinchAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PinchAnimationManager;

.field final synthetic val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PinchAnimationManager;Lcom/android/launcher3/PinchThresholdManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PinchAnimationManager$2;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/PinchAnimationManager$2;->val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    .line 107
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager$2;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/PinchAnimationManager;->-set0(Lcom/android/launcher3/PinchAnimationManager;Z)Z

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager$2;->val$thresholdManager:Lcom/android/launcher3/PinchThresholdManager;

    invoke-virtual {v0}, Lcom/android/launcher3/PinchThresholdManager;->reset()V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/PinchAnimationManager$2;->this$0:Lcom/android/launcher3/PinchAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/PinchAnimationManager;->-get0(Lcom/android/launcher3/PinchAnimationManager;)Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 113
    return-void
.end method
