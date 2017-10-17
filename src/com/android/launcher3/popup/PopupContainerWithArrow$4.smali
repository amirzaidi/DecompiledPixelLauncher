.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$translateYBy:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$translateYBy:I

    .line 782
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->val$translateYBy:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setTranslationY(F)V

    .line 790
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-get0(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-set1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 793
    return-void
.end method
