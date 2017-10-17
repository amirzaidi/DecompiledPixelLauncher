.class final Lcom/android/launcher3/dragndrop/DragView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic val$shiftX:I

.field final synthetic val$shiftY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$7;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView$7;->val$shiftX:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView$7;->val$shiftY:I

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 619
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$7;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$7;->val$shiftX:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->-set0(Lcom/android/launcher3/dragndrop/DragView;I)I

    .line 620
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragView$7;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$7;->val$shiftY:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/android/launcher3/dragndrop/DragView;->-set1(Lcom/android/launcher3/dragndrop/DragView;I)I

    .line 621
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$7;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-wrap5(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 622
    return-void
.end method
