.class final Lcom/android/launcher3/UninstallDropTarget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$cn:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$user:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$callback:Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$user:Landroid/os/UserHandle;

    const/16 v3, 0x2000

    .line 147
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$1;->val$callback:Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;

    invoke-interface {v1, v0}, Lcom/android/launcher3/UninstallDropTarget$DropTargetResultCallback;->onDragObjectRemoved(Z)V

    .line 151
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
