.class public Lcom/android/launcher3/UninstallDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private static getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 59
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/android/launcher3/AppInfo;

    .line 61
    iget-object v2, p1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 62
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->user:Landroid/os/UserHandle;

    .line 72
    :goto_0
    if-eqz v2, :cond_1

    .line 73
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 64
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 65
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v0, :cond_2

    .line 68
    iget-object v2, p1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 69
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    .line 80
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method protected static sendUninstallResult(Lcom/android/launcher3/Launcher;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)V
    .locals 1

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Lcom/android/launcher3/UninstallDropTarget$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/launcher3/UninstallDropTarget$1;-><init>(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;->onDragObjectRemoved(Z)V

    goto :goto_0
.end method

.method public static startUninstallActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/UninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z

    move-result v0

    return v0
.end method

.method public static startUninstallActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1}, Lcom/android/launcher3/UninstallDropTarget;->getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    .line 108
    if-nez v1, :cond_1

    .line 111
    const v2, 0x7f0c0041

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    if-eqz p2, :cond_0

    .line 123
    iget-object v2, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1, v2, p2}, Lcom/android/launcher3/UninstallDropTarget;->sendUninstallResult(Lcom/android/launcher3/Launcher;ZLandroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)V

    .line 125
    :cond_0
    return v0

    .line 114
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DELETE"

    .line 115
    const-string/jumbo v3, "package"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 114
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    const/high16 v2, 0x10800000

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 118
    const-string/jumbo v2, "android.intent.extra.USER"

    iget-object v3, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 44
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    const-string/jumbo v2, "no_control_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const-string/jumbo v2, "no_uninstall_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    :cond_0
    return v1

    .line 50
    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher3/UninstallDropTarget;->getUninstallTarget(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/UninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)Z

    .line 97
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetSource;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$DropTargetSource;

    invoke-interface {v0}, Lcom/android/launcher3/UninstallDropTarget$DropTargetSource;->deferCompleteDropAfterUninstallActivity()V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 90
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 32
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mHoverColor:I

    .line 34
    const v0, 0x7f020046

    invoke-virtual {p0, v0}, Lcom/android/launcher3/UninstallDropTarget;->setDrawable(I)V

    .line 35
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;)Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/UninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
