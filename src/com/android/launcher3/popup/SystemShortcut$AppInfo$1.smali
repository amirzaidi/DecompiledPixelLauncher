.class final Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

.field final synthetic val$itemInfo:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/SystemShortcut$AppInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->this$1:Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    iput-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;Landroid/graphics/Rect;Landroid/os/Bundle;)Z

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    const/4 v2, 0x7

    .line 92
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 94
    return-void
.end method
