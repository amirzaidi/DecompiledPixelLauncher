.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$removeMarginView:Landroid/view/View;

.field final synthetic val$spacing:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$removeMarginView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$spacing:I

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$removeMarginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 610
    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$spacing:I

    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 609
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 611
    return-void
.end method
