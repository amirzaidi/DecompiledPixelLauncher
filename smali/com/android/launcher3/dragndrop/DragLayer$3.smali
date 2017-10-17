.class final Lcom/android/launcher3/dragndrop/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->this$0:Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->val$animationEndStyle:I

    .line 772
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 777
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_0

    .line 784
    :goto_0
    :pswitch_0
    return-void

    .line 779
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$3;->this$0:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    goto :goto_0

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
