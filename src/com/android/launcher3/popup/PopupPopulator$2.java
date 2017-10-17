// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import android.view.View;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import android.content.Context;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.notification.NotificationInfo;
import java.util.ArrayList;
import android.os.UserHandle;
import android.os.Handler;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.notification.NotificationItemView;
import java.util.List;
import com.android.launcher3.Launcher;
import android.content.ComponentName;

final class PopupPopulator$2 implements Runnable
{
    final /* synthetic */ ComponentName val$activity;
    final /* synthetic */ PopupContainerWithArrow val$container;
    final /* synthetic */ Launcher val$launcher;
    final /* synthetic */ List val$notificationKeys;
    final /* synthetic */ NotificationItemView val$notificationView;
    final /* synthetic */ ItemInfo val$originalInfo;
    final /* synthetic */ List val$shortcutIds;
    final /* synthetic */ List val$shortcutViews;
    final /* synthetic */ List val$systemShortcutViews;
    final /* synthetic */ List val$systemShortcuts;
    final /* synthetic */ Handler val$uiHandler;
    final /* synthetic */ UserHandle val$user;
    
    PopupPopulator$2(final NotificationItemView val$notificationView, final Launcher val$launcher, final List val$notificationKeys, final Handler val$uiHandler, final ComponentName val$activity, final List val$shortcutIds, final UserHandle val$user, final List val$shortcutViews, final PopupContainerWithArrow val$container, final List val$systemShortcuts, final List val$systemShortcutViews, final ItemInfo val$originalInfo) {
        this.val$notificationView = val$notificationView;
        this.val$launcher = val$launcher;
        this.val$notificationKeys = val$notificationKeys;
        this.val$uiHandler = val$uiHandler;
        this.val$activity = val$activity;
        this.val$shortcutIds = val$shortcutIds;
        this.val$user = val$user;
        this.val$shortcutViews = val$shortcutViews;
        this.val$container = val$container;
        this.val$systemShortcuts = val$systemShortcuts;
        this.val$systemShortcutViews = val$systemShortcutViews;
        this.val$originalInfo = val$originalInfo;
    }
    
    public void run() {
        if (this.val$notificationView != null) {
            final List statusBarNotificationsForKeys = this.val$launcher.getPopupDataProvider().getStatusBarNotificationsForKeys(this.val$notificationKeys);
            final ArrayList list = new ArrayList<NotificationInfo>(statusBarNotificationsForKeys.size());
            for (int i = 0; i < statusBarNotificationsForKeys.size(); ++i) {
                list.add(new NotificationInfo((Context)this.val$launcher, statusBarNotificationsForKeys.get(i)));
            }
            this.val$uiHandler.post((Runnable)new PopupPopulator$UpdateNotificationChild(this.val$notificationView, list));
        }
        final List queryForShortcutsContainer = DeepShortcutManager.getInstance((Context)this.val$launcher).queryForShortcutsContainer(this.val$activity, this.val$shortcutIds, this.val$user);
        String shortcutId;
        if (this.val$notificationKeys.isEmpty()) {
            shortcutId = null;
        }
        else {
            shortcutId = this.val$notificationKeys.get(0).shortcutId;
        }
        final List sortAndFilterShortcuts = PopupPopulator.sortAndFilterShortcuts(queryForShortcutsContainer, shortcutId);
        for (int rank = 0; rank < sortAndFilterShortcuts.size() && rank < this.val$shortcutViews.size(); ++rank) {
            final ShortcutInfoCompat shortcutInfoCompat = sortAndFilterShortcuts.get(rank);
            final ShortcutInfo shortcutInfo = new ShortcutInfo(shortcutInfoCompat, (Context)this.val$launcher);
            shortcutInfo.iconBitmap = LauncherIcons.createShortcutIcon(shortcutInfoCompat, (Context)this.val$launcher, false);
            shortcutInfo.rank = rank;
            this.val$uiHandler.post((Runnable)new PopupPopulator$UpdateShortcutChild(this.val$container, this.val$shortcutViews.get(rank), shortcutInfo, shortcutInfoCompat));
        }
        for (int j = 0; j < this.val$systemShortcuts.size(); ++j) {
            this.val$uiHandler.post((Runnable)new PopupPopulator$UpdateSystemShortcutChild(this.val$container, (View)this.val$systemShortcutViews.get(j), (SystemShortcut)this.val$systemShortcuts.get(j), this.val$launcher, this.val$originalInfo));
        }
        this.val$uiHandler.post((Runnable)new PopupPopulator$2$1(this, this.val$launcher, this.val$originalInfo));
    }
}
