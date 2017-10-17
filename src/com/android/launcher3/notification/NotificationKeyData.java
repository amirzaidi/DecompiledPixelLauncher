// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.app.Notification;
import android.service.notification.StatusBarNotification;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;

public class NotificationKeyData
{
    public int count;
    public final String notificationKey;
    public final String shortcutId;
    
    private NotificationKeyData(final String notificationKey, final String shortcutId, final int n) {
        this.notificationKey = notificationKey;
        this.shortcutId = shortcutId;
        this.count = Math.max(1, n);
    }
    
    public static List extractKeysOnly(final List list) {
        final ArrayList list2 = new ArrayList<String>(list.size());
        final Iterator<NotificationKeyData> iterator = list.iterator();
        while (iterator.hasNext()) {
            list2.add(iterator.next().notificationKey);
        }
        return list2;
    }
    
    public static NotificationKeyData fromNotification(final StatusBarNotification statusBarNotification) {
        final Notification notification = statusBarNotification.getNotification();
        return new NotificationKeyData(statusBarNotification.getKey(), notification.getShortcutId(), notification.number);
    }
    
    public boolean equals(final Object o) {
        return o instanceof NotificationKeyData && ((NotificationKeyData)o).notificationKey.equals(this.notificationKey);
    }
}
