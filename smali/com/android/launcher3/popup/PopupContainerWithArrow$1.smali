.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$popupItemView:Lcom/android/launcher3/popup/PopupItemView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/popup/PopupItemView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$popupItemView:Lcom/android/launcher3/popup/PopupItemView;

    .line 320
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$popupItemView:Lcom/android/launcher3/popup/PopupItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupItemView;->setVisibility(I)V

    .line 324
    return-void
.end method
