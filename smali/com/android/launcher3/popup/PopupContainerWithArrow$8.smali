.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 808
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 812
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-get0(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$8;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    goto :goto_0
.end method
