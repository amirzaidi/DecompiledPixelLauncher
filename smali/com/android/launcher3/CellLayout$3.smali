.class final Lcom/android/launcher3/CellLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field final synthetic val$newX:I

.field final synthetic val$newY:I

.field final synthetic val$oldX:I

.field final synthetic val$oldY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput p3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldX:I

    iput p4, p0, Lcom/android/launcher3/CellLayout$3;->val$newX:I

    iput p5, p0, Lcom/android/launcher3/CellLayout$3;->val$oldY:I

    iput p6, p0, Lcom/android/launcher3/CellLayout$3;->val$newY:I

    iput-object p7, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 961
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 962
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newX:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 963
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$3;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    sub-float v2, v4, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$oldY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$newY:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 964
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$3;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 965
    return-void
.end method
