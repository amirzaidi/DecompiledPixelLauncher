.class public Lcom/android/launcher3/InfoDropTarget;
.super Lcom/android/launcher3/UninstallDropTarget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public static startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, p2, v0, v0}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;Landroid/graphics/Rect;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;Landroid/graphics/Rect;Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    instance-of v2, p0, Lcom/android/launcher3/AppInfo;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 73
    check-cast v0, Lcom/android/launcher3/AppInfo;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    move-object v2, v0

    .line 81
    :goto_0
    if-eqz v2, :cond_4

    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 83
    invoke-virtual {v0, v2, v3, p3, p4}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v0, 0x1

    .line 92
    :goto_1
    if-eqz p2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p1, v0, v2, v1, p2}, Lcom/android/launcher3/InfoDropTarget;->sendUninstallResult(Lcom/android/launcher3/Launcher;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)V

    .line 95
    :cond_0
    return v0

    .line 74
    :cond_1
    instance-of v2, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_2

    move-object v0, p0

    .line 75
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 76
    :cond_2
    instance-of v2, p0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 77
    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_0

    .line 78
    :cond_3
    instance-of v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 79
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const v3, 0x7f0c001f

    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 88
    const-string/jumbo v3, "InfoDropTarget"

    const-string/jumbo v4, "Unable to launch settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method

.method public static supportsDrop(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 106
    const-string/jumbo v3, "development_settings_enabled"

    .line 105
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v2, v1

    .line 107
    :goto_0
    if-nez v2, :cond_1

    .line 108
    return v0

    :cond_0
    move v2, v0

    .line 105
    goto :goto_0

    .line 110
    :cond_1
    iget v2, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v2, v1, :cond_4

    .line 111
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_3

    .line 112
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 111
    if-nez v0, :cond_3

    .line 113
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v0, :cond_5

    :cond_3
    move v0, v1

    .line 110
    :cond_4
    :goto_1
    return v0

    .line 115
    :cond_5
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    goto :goto_1
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    .line 57
    :goto_0
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/InfoDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/launcher3/UninstallDropTarget;->onFinishInflate()V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/InfoDropTarget;->mHoverColor:I

    .line 50
    const v0, 0x7f02003e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setDrawable(I)V

    .line 51
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 100
    invoke-interface {p1}, Lcom/android/launcher3/DragSource;->supportsAppInfoDropTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/InfoDropTarget;->supportsDrop(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
