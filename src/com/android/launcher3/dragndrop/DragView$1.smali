.class final Lcom/android/launcher3/dragndrop/DragView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;FF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$initialScale:F

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$scale:F

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$initialScale:F

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$scale:F

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$initialScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->setScaleX(F)V

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$initialScale:F

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$scale:F

    iget v4, p0, Lcom/android/launcher3/dragndrop/DragView$1;->val$initialScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->setScaleY(F)V

    .line 161
    sget v1, Lcom/android/launcher3/dragndrop/DragView;->sDragAlpha:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    sget v2, Lcom/android/launcher3/dragndrop/DragView;->sDragAlpha:F

    mul-float/2addr v2, v0

    sub-float v0, v5, v0

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragView;->setAlpha(F)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 168
    :cond_1
    return-void
.end method
