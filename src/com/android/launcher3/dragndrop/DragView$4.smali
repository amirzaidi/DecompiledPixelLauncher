.class final Lcom/android/launcher3/dragndrop/DragView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeProgress:F

    .line 494
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$4;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->invalidate()V

    .line 495
    return-void
.end method
