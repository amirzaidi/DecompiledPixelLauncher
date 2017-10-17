.class final Lcom/android/launcher3/popup/PopupContainerWithArrow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    if-nez p2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logDeepShortcutsOpen(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 541
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-get2(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
