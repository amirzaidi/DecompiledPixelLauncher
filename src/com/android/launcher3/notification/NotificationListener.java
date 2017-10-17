// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.support.v4.a.b;
import com.android.launcher3.util.PackageUserKey;
import java.util.Arrays;
import java.util.Collections;
import android.app.Notification;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import java.util.List;
import android.service.notification.StatusBarNotification;
import android.os.Handler;
import android.os.Handler$Callback;
import android.service.notification.NotificationListenerService$Ranking;
import android.service.notification.NotificationListenerService;

public class NotificationListener extends NotificationListenerService
{
    private static boolean sIsConnected;
    private static NotificationListener sNotificationListenerInstance;
    private static NotificationListener$NotificationsChangedListener sNotificationsChangedListener;
    private NotificationListenerService$Ranking mTempRanking;
    private Handler$Callback mUiCallback;
    private final Handler mUiHandler;
    private Handler$Callback mWorkerCallback;
    private final Handler mWorkerHandler;
    
    static {
        NotificationListener.sNotificationListenerInstance = null;
    }
    
    public NotificationListener() {
        this.mTempRanking = new NotificationListenerService$Ranking();
        this.mWorkerCallback = (Handler$Callback)new NotificationListener$1(this);
        this.mUiCallback = (Handler$Callback)new NotificationListener$2(this);
        this.mWorkerHandler = new Handler(LauncherModel.getWorkerLooper(), this.mWorkerCallback);
        this.mUiHandler = new Handler(Looper.getMainLooper(), this.mUiCallback);
        NotificationListener.sNotificationListenerInstance = this;
    }
    
    private List filterNotifications(final StatusBarNotification[] array) {
        int i = 0;
        if (array == null) {
            return null;
        }
        final HashSet<Integer> set = new HashSet<Integer>();
        for (int j = 0; j < array.length; ++j) {
            if (this.shouldBeFilteredOut(array[j])) {
                set.add(j);
            }
        }
        final ArrayList list = new ArrayList<StatusBarNotification>(array.length - set.size());
        while (i < array.length) {
            if (!set.contains(i)) {
                list.add(array[i]);
            }
            ++i;
        }
        return list;
    }
    
    public static NotificationListener getInstanceIfConnected() {
        NotificationListener sNotificationListenerInstance;
        if (NotificationListener.sIsConnected) {
            sNotificationListenerInstance = NotificationListener.sNotificationListenerInstance;
        }
        else {
            sNotificationListenerInstance = null;
        }
        return sNotificationListenerInstance;
    }
    
    private void onNotificationFullRefresh() {
        this.mWorkerHandler.obtainMessage(3).sendToTarget();
    }
    
    public static void removeNotificationsChangedListener() {
        NotificationListener.sNotificationsChangedListener = null;
    }
    
    public static void setNotificationsChangedListener(final NotificationListener$NotificationsChangedListener sNotificationsChangedListener) {
        NotificationListener.sNotificationsChangedListener = sNotificationsChangedListener;
        if (NotificationListener.sNotificationListenerInstance != null) {
            NotificationListener.sNotificationListenerInstance.onNotificationFullRefresh();
        }
    }
    
    private boolean shouldBeFilteredOut(final StatusBarNotification statusBarNotification) {
        boolean b = true;
        boolean empty = false;
        this.getCurrentRanking().getRanking(statusBarNotification.getKey(), this.mTempRanking);
        if (!this.mTempRanking.canShowBadge()) {
            return b;
        }
        final Notification notification = statusBarNotification.getNotification();
        if (this.mTempRanking.getChannel().getId().equals("miscellaneous") && (notification.flags & 0x2) != 0x0) {
            return b;
        }
        final boolean b2 = (notification.flags & 0x200) != 0x0 && b;
        final CharSequence charSequence = notification.extras.getCharSequence("android.title");
        final CharSequence charSequence2 = notification.extras.getCharSequence("android.text");
        if (TextUtils.isEmpty(charSequence)) {
            empty = TextUtils.isEmpty(charSequence2);
        }
        if (!b2) {
            b = empty;
        }
        return b;
    }
    
    public List getNotificationsForKeys(final List list) {
        final StatusBarNotification[] activeNotifications = this.getActiveNotifications((String[])NotificationKeyData.extractKeysOnly(list).toArray(new String[list.size()]));
        List<StatusBarNotification> list2;
        if (activeNotifications == null) {
            list2 = (List<StatusBarNotification>)Collections.EMPTY_LIST;
        }
        else {
            list2 = Arrays.asList(activeNotifications);
        }
        return list2;
    }
    
    public void onListenerConnected() {
        super.onListenerConnected();
        NotificationListener.sIsConnected = true;
        this.onNotificationFullRefresh();
    }
    
    public void onListenerDisconnected() {
        super.onListenerDisconnected();
        NotificationListener.sIsConnected = false;
    }
    
    public void onNotificationPosted(final StatusBarNotification statusBarNotification) {
        super.onNotificationPosted(statusBarNotification);
        this.mWorkerHandler.obtainMessage(1, (Object)new NotificationListener$NotificationPostedMsg(this, statusBarNotification)).sendToTarget();
    }
    
    public void onNotificationRemoved(final StatusBarNotification statusBarNotification) {
        super.onNotificationRemoved(statusBarNotification);
        this.mWorkerHandler.obtainMessage(2, (Object)new b(PackageUserKey.fromNotification(statusBarNotification), NotificationKeyData.fromNotification(statusBarNotification))).sendToTarget();
    }
}
