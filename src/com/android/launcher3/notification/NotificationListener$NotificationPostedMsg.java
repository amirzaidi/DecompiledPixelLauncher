// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.util.Pair;
import java.util.Arrays;
import java.util.Collections;
import android.app.Notification;
import android.text.TextUtils;
import java.util.ArrayList;
import android.util.ArraySet;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import java.util.List;
import android.os.Handler;
import android.os.Handler$Callback;
import android.service.notification.NotificationListenerService$Ranking;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.util.PackageUserKey;

class NotificationListener$NotificationPostedMsg
{
    final NotificationKeyData notificationKey;
    final PackageUserKey packageUserKey;
    final boolean shouldBeFilteredOut;
    final /* synthetic */ NotificationListener this$0;
    
    NotificationListener$NotificationPostedMsg(final NotificationListener this$0, final StatusBarNotification statusBarNotification) {
        this.this$0 = this$0;
        this.packageUserKey = PackageUserKey.fromNotification(statusBarNotification);
        this.notificationKey = NotificationKeyData.fromNotification(statusBarNotification);
        this.shouldBeFilteredOut = this$0.shouldBeFilteredOut(statusBarNotification);
    }
}
