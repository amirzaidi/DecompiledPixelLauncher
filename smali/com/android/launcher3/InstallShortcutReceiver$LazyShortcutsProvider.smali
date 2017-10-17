.class Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;
.super Lcom/android/launcher3/util/Provider;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/launcher3/util/Provider;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;->mContext:Landroid/content/Context;

    .line 598
    iput-object p2, p0, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;->mPendingItems:Ljava/util/ArrayList;

    .line 599
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;->get()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 607
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    .line 610
    iget-object v0, p0, Lcom/android/launcher3/InstallShortcutReceiver$LazyShortcutsProvider;->mPendingItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;

    .line 612
    iget-object v4, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v4}, Lcom/android/launcher3/InstallShortcutReceiver;->-wrap1(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 613
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 614
    iget-object v5, v0, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Landroid/os/UserHandle;

    .line 613
    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 621
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/InstallShortcutReceiver$PendingInstallShortcutInfo;->getItemInfo()Lcom/android/launcher3/ItemInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 623
    :cond_2
    return-object v1
.end method
