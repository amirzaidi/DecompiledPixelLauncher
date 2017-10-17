.class final Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/popup/SystemShortcut$Widgets;

.field final synthetic val$itemInfo:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/SystemShortcut$Widgets;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->this$1:Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    iput-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    const v2, 0x7f040036

    .line 68
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetsBottomSheet;

    .line 70
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->populateAndShow(Lcom/android/launcher3/ItemInfo;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$Widgets$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 72
    const/4 v1, 0x2

    .line 71
    invoke-virtual {v0, v3, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 73
    return-void
.end method
