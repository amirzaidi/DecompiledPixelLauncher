.class final Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$si:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->this$1:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    .line 465
    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get()Lcom/android/launcher3/ShortcutInfo;
    .locals 4

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->this$1:Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    iget-object v2, v2, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Landroid/content/pm/LauncherActivityInfo;

    const/4 v3, 0x0

    .line 468
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->val$si:Lcom/android/launcher3/ShortcutInfo;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo$1;->get()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method
