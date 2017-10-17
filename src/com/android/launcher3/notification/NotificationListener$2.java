// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import java.util.Arrays;
import java.util.Collections;
import android.app.Notification;
import android.text.TextUtils;
import java.util.ArrayList;
import android.util.ArraySet;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.service.notification.StatusBarNotification;
import android.os.Handler;
import android.service.notification.NotificationListenerService$Ranking;
import android.service.notification.NotificationListenerService;
import java.util.List;
import com.android.launcher3.util.PackageUserKey;
import android.util.Pair;
import android.os.Message;
import android.os.Handler$Callback;

final class NotificationListener$2 implements Handler$Callback
{
    final /* synthetic */ NotificationListener this$0;
    
    NotificationListener$2(final NotificationListener this$0) {
        this.this$0 = this$0;
    }
    
    public boolean handleMessage(final Message message) {
        switch (message.what) {
            case 1: {
                if (NotificationListener.sNotificationsChangedListener != null) {
                    final NotificationListener$NotificationPostedMsg notificationListener$NotificationPostedMsg = (NotificationListener$NotificationPostedMsg)message.obj;
                    NotificationListener.sNotificationsChangedListener.onNotificationPosted(notificationListener$NotificationPostedMsg.packageUserKey, notificationListener$NotificationPostedMsg.notificationKey, notificationListener$NotificationPostedMsg.shouldBeFilteredOut);
                    break;
                }
                break;
            }
            case 2: {
                if (NotificationListener.sNotificationsChangedListener != null) {
                    final Pair pair = (Pair)message.obj;
                    NotificationListener.sNotificationsChangedListener.onNotificationRemoved((PackageUserKey)pair.first, (NotificationKeyData)pair.second);
                    break;
                }
                break;
            }
            case 3: {
                if (NotificationListener.sNotificationsChangedListener != null) {
                    NotificationListener.sNotificationsChangedListener.onNotificationFullRefresh((List)message.obj);
                    break;
                }
                break;
            }
        }
        return true;
    }
}
