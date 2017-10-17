.class public Lcom/android/launcher3/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# static fields
.field private static final SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;


# instance fields
.field private mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mPackageUserToBadgeInfos:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/popup/SystemShortcut;

    .line 54
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 55
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Lcom/android/launcher3/popup/PopupDataProvider;->SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 67
    return-void
.end method

.method private updateBadgeIcon(Lcom/android/launcher3/badge/BadgeInfo;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->hasNotificationToShow()Z

    move-result v3

    .line 189
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v4

    .line 190
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    .line 193
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->notificationKey:Ljava/lang/String;

    .line 195
    new-array v6, v2, [Ljava/lang/String;

    aput-object v0, v6, v8

    .line 194
    invoke-virtual {v4, v6}, Lcom/android/launcher3/notification/NotificationListener;->getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 196
    array-length v0, v6

    if-ne v0, v2, :cond_0

    .line 197
    new-instance v0, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    aget-object v6, v6, v8

    invoke-direct {v0, v7, v6}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    .line 198
    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationInfo;->shouldShowIconInBadge()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/badge/BadgeInfo;->setNotificationToShow(Lcom/android/launcher3/notification/NotificationInfo;)V

    .line 209
    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/badge/BadgeInfo;->hasNotificationToShow()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    move-object v0, v1

    .line 190
    goto :goto_0

    :cond_2
    move v0, v2

    .line 209
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private updateLauncherIconBadges(Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->updateLauncherIconBadges(Ljava/util/Set;Z)V

    .line 154
    return-void
.end method

.method private updateLauncherIconBadges(Ljava/util/Set;Z)V
    .locals 3

    .prologue
    .line 166
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 169
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->updateBadgeIcon(Lcom/android/launcher3/badge/BadgeInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->updateIconBadges(Ljava/util/Set;)V

    .line 178
    :cond_2
    return-void
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 262
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;
    .locals 2

    .prologue
    .line 231
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    return-object v0
.end method

.method public getEnabledSystemShortcutsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;
    .locals 6

    .prologue
    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    sget-object v2, Lcom/android/launcher3/popup/PopupDataProvider;->SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 254
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5, p1}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 255
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-object v1
.end method

.method public getNotificationKeysForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v0

    .line 240
    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getShortcutIdsForItem(Lcom/android/launcher3/ItemInfo;)Ljava/util/List;
    .locals 4

    .prologue
    .line 218
    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 222
    if-nez v0, :cond_1

    .line 223
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 227
    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public getStatusBarNotificationsForKeys(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    .line 248
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/launcher3/notification/NotificationListener;->getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 114
    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 119
    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v4

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/badge/BadgeInfo;

    .line 121
    if-nez v1, :cond_1

    .line 122
    new-instance v1, Lcom/android/launcher3/badge/BadgeInfo;

    invoke-direct {v1, v4}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 123
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/PackageUserKey;

    .line 131
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/badge/BadgeInfo;

    .line 132
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/badge/BadgeInfo;

    .line 133
    if-nez v1, :cond_4

    .line 134
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/launcher3/badge/BadgeInfo;->shouldBeInvalidated(Lcom/android/launcher3/badge/BadgeInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 142
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->updateLauncherIconBadges(Ljava/util/Set;)V

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->trimNotifications(Ljava/util/Map;)V

    .line 150
    :cond_7
    return-void
.end method

.method public onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 74
    if-nez v0, :cond_1

    .line 75
    if-nez p3, :cond_0

    .line 76
    new-instance v0, Lcom/android/launcher3/badge/BadgeInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/badge/BadgeInfo;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    .line 78
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/4 v1, 0x1

    .line 91
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->updateLauncherIconBadges(Ljava/util/Set;Z)V

    .line 93
    return-void

    .line 84
    :cond_1
    if-eqz p3, :cond_2

    .line 85
    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    .line 87
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    goto :goto_1
.end method

.method public onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/badge/BadgeInfo;

    .line 99
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/badge/BadgeInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v0}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->singletonHashSet(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->updateLauncherIconBadges(Ljava/util/Set;)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToBadgeInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->trimNotifications(Ljava/util/Map;)V

    .line 110
    :cond_1
    return-void
.end method

.method public setDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 215
    return-void
.end method
