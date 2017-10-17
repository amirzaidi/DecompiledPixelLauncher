.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 338
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 345
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    const/16 v2, 0x20

    .line 342
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 346
    return-void
.end method
