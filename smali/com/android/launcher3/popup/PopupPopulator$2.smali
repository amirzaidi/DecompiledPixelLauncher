.class final Lcom/android/launcher3/popup/PopupPopulator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Landroid/content/ComponentName;

.field final synthetic val$container:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$notificationKeys:Ljava/util/List;

.field final synthetic val$notificationView:Lcom/android/launcher3/notification/NotificationItemView;

.field final synthetic val$originalInfo:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$shortcutIds:Ljava/util/List;

.field final synthetic val$shortcutViews:Ljava/util/List;

.field final synthetic val$systemShortcutViews:Ljava/util/List;

.field final synthetic val$systemShortcuts:Ljava/util/List;

.field final synthetic val$uiHandler:Landroid/os/Handler;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationItemView;Lcom/android/launcher3/Launcher;Ljava/util/List;Landroid/os/Handler;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationView:Lcom/android/launcher3/notification/NotificationItemView;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationKeys:Ljava/util/List;

    iput-object p4, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$uiHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$activity:Landroid/content/ComponentName;

    iput-object p6, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$shortcutIds:Ljava/util/List;

    iput-object p7, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$user:Landroid/os/UserHandle;

    iput-object p8, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$shortcutViews:Ljava/util/List;

    iput-object p9, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$container:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-object p10, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$systemShortcuts:Ljava/util/List;

    iput-object p11, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$systemShortcutViews:Ljava/util/List;

    iput-object p12, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$originalInfo:Lcom/android/launcher3/ItemInfo;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationKeys:Ljava/util/List;

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getStatusBarNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 197
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 198
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 199
    new-instance v6, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {v6, v7, v0}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-direct {v1, v4, v5}, Lcom/android/launcher3/popup/PopupPopulator$UpdateNotificationChild;-><init>(Lcom/android/launcher3/notification/NotificationItemView;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$activity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$shortcutIds:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$user:Landroid/os/UserHandle;

    .line 204
    invoke-virtual {v0, v1, v4, v5}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v3

    .line 208
    :goto_1
    invoke-static {v1, v0}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 209
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$shortcutViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 210
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 211
    new-instance v5, Lcom/android/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {v5, v0, v1}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 214
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    .line 213
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/android/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 215
    iput v3, v5, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 216
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$container:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$shortcutViews:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-direct {v7, v8, v1, v5, v0}, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$notificationKeys:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v6, v2

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$systemShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$systemShortcuts:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/SystemShortcut;

    .line 224
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$container:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 225
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$systemShortcutViews:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$originalInfo:Lcom/android/launcher3/ItemInfo;

    .line 224
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_3

    .line 227
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/popup/PopupPopulator$2$1;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$launcher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupPopulator$2;->val$originalInfo:Lcom/android/launcher3/ItemInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/popup/PopupPopulator$2$1;-><init>(Lcom/android/launcher3/popup/PopupPopulator$2;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method
