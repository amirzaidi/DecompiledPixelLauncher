.class final Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field final synthetic val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher3/WorkspaceStateTransitionAnimation;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->this$0:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$2;->val$dragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 480
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 479
    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setBackgroundAlpha(F)V

    .line 481
    return-void
.end method
