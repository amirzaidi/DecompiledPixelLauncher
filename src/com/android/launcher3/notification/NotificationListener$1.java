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
import java.util.HashSet;
import android.os.Looper;
import com.android.launcher3.LauncherModel;
import android.service.notification.StatusBarNotification;
import android.os.Handler;
import android.service.notification.NotificationListenerService$Ranking;
import android.service.notification.NotificationListenerService;
import java.util.List;
import java.util.ArrayList;
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
                List -wrap1;
                if (NotificationListener.sIsConnected) {
                    -wrap1 = this.this$0.filterNotifications(this.this$0.getActiveNotifications());
                }
                else {
                    -wrap1 = new ArrayList();
                }
                this.this$0.mUiHandler.obtainMessage(message.what, (Object)-wrap1).sendToTarget();
                break;
            }
        }
        return true;
    }
}
