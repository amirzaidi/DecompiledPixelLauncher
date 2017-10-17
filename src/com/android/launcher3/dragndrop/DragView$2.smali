.class final Lcom/android/launcher3/dragndrop/DragView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    .line 121
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-get0(Lcom/android/launcher3/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->onDragViewAnimationEnd()V

    .line 127
    :cond_0
    return-void
.end method
