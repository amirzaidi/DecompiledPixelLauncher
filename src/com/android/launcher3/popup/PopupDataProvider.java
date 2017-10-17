// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.Utilities;
import android.content.ComponentName;
import com.android.launcher3.util.ComponentKey;
import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.ItemInfo;
import java.util.Set;
import android.service.notification.StatusBarNotification;
import java.util.Iterator;
import android.content.Context;
import com.android.launcher3.notification.NotificationInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.badge.BadgeInfo;
import java.util.HashMap;
import java.util.Map;
import com.android.launcher3.Launcher;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.notification.NotificationListener$NotificationsChangedListener;

public class PopupDataProvider implements NotificationListener$NotificationsChangedListener
{
    private static final SystemShortcut[] SYSTEM_SHORTCUTS;
    private MultiHashMap mDeepShortcutMap;
    private final Launcher mLauncher;
    private Map mPackageUserToBadgeInfos;
    
    static {
        SYSTEM_SHORTCUTS = new SystemShortcut[] { new SystemShortcut$AppInfo(), new SystemShortcut$Widgets() };
    }
    
    public PopupDataProvider(final Launcher mLauncher) {
        this.mDeepShortcutMap = new MultiHashMap();
        this.mPackageUserToBadgeInfos = new HashMap();
        this.mLauncher = mLauncher;
    }
    
    private boolean updateBadgeIcon(final BadgeInfo badgeInfo) {
        final int n = 1;
        final boolean hasNotificationToShow = badgeInfo.hasNotificationToShow();
        final NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        NotificationInfo notificationToShow = null;
        Label_0152: {
            if (instanceIfConnected != null && badgeInfo.getNotificationKeys().size() >= n) {
                final Iterator iterator = badgeInfo.getNotificationKeys().iterator();
                while (iterator.hasNext()) {
                    final String notificationKey = iterator.next().notificationKey;
                    final String[] array = new String[n];
                    array[0] = notificationKey;
                    final StatusBarNotification[] activeNotifications = instanceIfConnected.getActiveNotifications(array);
                    if (activeNotifications.length == n) {
                        notificationToShow = new NotificationInfo((Context)this.mLauncher, activeNotifications[0]);
                        if (notificationToShow.shouldShowIconInBadge()) {
                            break Label_0152;
                        }
                        continue;
                    }
                }
                notificationToShow = null;
            }
            else {
                notificationToShow = null;
            }
        }
        badgeInfo.setNotificationToShow(notificationToShow);
        boolean hasNotificationToShow2;
        if (!hasNotificationToShow) {
            hasNotificationToShow2 = badgeInfo.hasNotificationToShow();
        }
        else {
            hasNotificationToShow2 = (n != 0);
        }
        return hasNotificationToShow2;
    }
    
    private void updateLauncherIconBadges(final Set set) {
        this.updateLauncherIconBadges(set, true);
    }
    
    private void updateLauncherIconBadges(final Set set, final boolean b) {
        final Iterator<Object> iterator = set.iterator();
        while (iterator.hasNext()) {
            final BadgeInfo badgeInfo = this.mPackageUserToBadgeInfos.get(iterator.next());
            if (badgeInfo != null && (this.updateBadgeIcon(badgeInfo) ^ true) && (b ^ true)) {
                iterator.remove();
            }
        }
        if (!set.isEmpty()) {
            this.mLauncher.updateIconBadges(set);
        }
    }
    
    public void cancelNotification(final String s) {
        final NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        if (instanceIfConnected == null) {
            return;
        }
        instanceIfConnected.cancelNotification(s);
    }
    
    public BadgeInfo getBadgeInfoForItem(final ItemInfo itemInfo) {
        if (!DeepShortcutManager.supportsShortcuts(itemInfo)) {
            return null;
        }
        return this.mPackageUserToBadgeInfos.get(PackageUserKey.fromItemInfo(itemInfo));
    }
    
    public List getEnabledSystemShortcutsForItem(final ItemInfo itemInfo) {
        final ArrayList<SystemShortcut> list = new ArrayList<SystemShortcut>();
        final SystemShortcut[] system_SHORTCUTS = PopupDataProvider.SYSTEM_SHORTCUTS;
        for (int i = 0; i < system_SHORTCUTS.length; ++i) {
            final SystemShortcut systemShortcut = system_SHORTCUTS[i];
            if (systemShortcut.getOnClickListener(this.mLauncher, itemInfo) != null) {
                list.add(systemShortcut);
            }
        }
        return list;
    }
    
    public List getNotificationKeysForItem(final ItemInfo itemInfo) {
        final BadgeInfo badgeInfoForItem = this.getBadgeInfoForItem(itemInfo);
        List list;
        if (badgeInfoForItem == null) {
            list = Collections.EMPTY_LIST;
        }
        else {
            list = badgeInfoForItem.getNotificationKeys();
        }
        return list;
    }
    
    public List getShortcutIdsForItem(final ItemInfo itemInfo) {
        if (!DeepShortcutManager.supportsShortcuts(itemInfo)) {
            return Collections.EMPTY_LIST;
        }
        final ComponentName targetComponent = itemInfo.getTargetComponent();
        if (targetComponent == null) {
            return Collections.EMPTY_LIST;
        }
        List empty_LIST = this.mDeepShortcutMap.get(new ComponentKey(targetComponent, itemInfo.user));
        if (empty_LIST == null) {
            empty_LIST = Collections.EMPTY_LIST;
        }
        return empty_LIST;
    }
    
    public List getStatusBarNotificationsForKeys(final List list) {
        final NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
        List list2;
        if (instanceIfConnected == null) {
            list2 = Collections.EMPTY_LIST;
        }
        else {
            list2 = instanceIfConnected.getNotificationsForKeys(list);
        }
        return list2;
    }
    
    public void onNotificationFullRefresh(final List list) {
        if (list == null) {
            return;
        }
        final HashMap<PackageUserKey, BadgeInfo> hashMap = new HashMap<PackageUserKey, BadgeInfo>(this.mPackageUserToBadgeInfos);
        this.mPackageUserToBadgeInfos.clear();
        for (final StatusBarNotification statusBarNotification : list) {
            final PackageUserKey fromNotification = PackageUserKey.fromNotification(statusBarNotification);
            BadgeInfo badgeInfo = this.mPackageUserToBadgeInfos.get(fromNotification);
            if (badgeInfo == null) {
                badgeInfo = new BadgeInfo(fromNotification);
                this.mPackageUserToBadgeInfos.put(fromNotification, badgeInfo);
            }
            badgeInfo.addOrUpdateNotificationKey(NotificationKeyData.fromNotification(statusBarNotification));
        }
        for (final PackageUserKey packageUserKey : this.mPackageUserToBadgeInfos.keySet()) {
            final BadgeInfo badgeInfo2 = hashMap.get(packageUserKey);
            final BadgeInfo badgeInfo3 = this.mPackageUserToBadgeInfos.get(packageUserKey);
            if (badgeInfo2 == null) {
                hashMap.put(packageUserKey, badgeInfo3);
            }
            else {
                if (badgeInfo2.shouldBeInvalidated(badgeInfo3)) {
                    continue;
                }
                hashMap.remove(packageUserKey);
            }
        }
        if (!hashMap.isEmpty()) {
            this.updateLauncherIconBadges(hashMap.keySet());
        }
        final PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(this.mLauncher);
        if (open != null) {
            open.trimNotifications(hashMap);
        }
    }
    
    public void onNotificationPosted(final PackageUserKey packageUserKey, final NotificationKeyData notificationKeyData, final boolean b) {
        boolean b2 = false;
        final BadgeInfo badgeInfo = this.mPackageUserToBadgeInfos.get(packageUserKey);
        if (badgeInfo == null) {
            if (!b) {
                final BadgeInfo badgeInfo2 = new BadgeInfo(packageUserKey);
                badgeInfo2.addOrUpdateNotificationKey(notificationKeyData);
                this.mPackageUserToBadgeInfos.put(packageUserKey, badgeInfo2);
                b2 = true;
            }
        }
        else {
            if (b) {
                b2 = badgeInfo.removeNotificationKey(notificationKeyData);
            }
            else {
                b2 = badgeInfo.addOrUpdateNotificationKey(notificationKeyData);
            }
            if (badgeInfo.getNotificationKeys().size() == 0) {
                this.mPackageUserToBadgeInfos.remove(packageUserKey);
            }
        }
        this.updateLauncherIconBadges(Utilities.singletonHashSet(packageUserKey), b2);
    }
    
    public void onNotificationRemoved(final PackageUserKey packageUserKey, final NotificationKeyData notificationKeyData) {
        final BadgeInfo badgeInfo = this.mPackageUserToBadgeInfos.get(packageUserKey);
        if (badgeInfo != null && badgeInfo.removeNotificationKey(notificationKeyData)) {
            if (badgeInfo.getNotificationKeys().size() == 0) {
                this.mPackageUserToBadgeInfos.remove(packageUserKey);
            }
            this.updateLauncherIconBadges(Utilities.singletonHashSet(packageUserKey));
            final PopupContainerWithArrow open = PopupContainerWithArrow.getOpen(this.mLauncher);
            if (open != null) {
                open.trimNotifications(this.mPackageUserToBadgeInfos);
            }
        }
    }
    
    public void setDeepShortcutMap(final MultiHashMap mDeepShortcutMap) {
        this.mDeepShortcutMap = mDeepShortcutMap;
    }
}
