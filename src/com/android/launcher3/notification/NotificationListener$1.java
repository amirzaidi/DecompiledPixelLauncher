// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import android.util.Pair;
import com.android.launcher3.util.PackageUserKey;
import java.util.Arrays;
import java.util.Collections;
import android.app.Notification;
import android.text.TextUtils;
import android.util.ArraySet;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.service.notification.StatusBarNotification;
import android.os.Handler;
import android.service.notification.NotificationListenerService$Ranking;
import android.service.notification.NotificationListenerService;
import java.util.List;
import java.util.ArrayList;
import android.util.Log;
import android.os.Message;
import android.os.Handler$Callback;

final class NotificationListener$1 implements Handler$Callback
{
    final /* synthetic */ NotificationListener this$0;
    
    NotificationListener$1(final NotificationListener this$0) {
        this.this$0 = this$0;
    }
    
    public boolean handleMessage(final Message message) {
        switch (message.what) {
            case 1: {
                this.this$0.mUiHandler.obtainMessage(message.what, message.obj).sendToTarget();
                break;
            }
            case 2: {
                this.this$0.mUiHandler.obtainMessage(message.what, message.obj).sendToTarget();
                break;
            }
            case 3: {
                while (true) {
                    Label_0194: {
                        if (!NotificationListener.sIsConnected) {
                            break Label_0194;
                        }
                        try {
                            final NotificationListener this$0 = this.this$0;
                            try {
                                final NotificationListener this$2 = this.this$0;
                                try {
                                    final List -wrap1 = this$0.filterNotifications(this$2.getActiveNotifications());
                                    this.this$0.mUiHandler.obtainMessage(message.what, (Object)-wrap1).sendToTarget();
                                }
                                catch (SecurityException ex) {
                                    Log.e("NotificationListener", "SecurityException: failed to fetch notifications");
                                    final List -wrap1 = new ArrayList();
                                }
                            }
                            catch (SecurityException ex2) {}
                        }
                        catch (SecurityException ex3) {}
                    }
                    final List -wrap1 = new ArrayList();
                    continue;
                }
            }
        }
        return true;
    }
}
