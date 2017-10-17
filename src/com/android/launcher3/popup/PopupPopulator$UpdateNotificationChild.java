// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.notification.NotificationItemView;
import java.util.List;

class PopupPopulator$UpdateNotificationChild implements Runnable
{
    private List mNotificationInfos;
    private NotificationItemView mNotificationView;
    
    public PopupPopulator$UpdateNotificationChild(final NotificationItemView mNotificationView, final List mNotificationInfos) {
        this.mNotificationView = mNotificationView;
        this.mNotificationInfos = mNotificationInfos;
    }
    
    public void run() {
        this.mNotificationView.applyNotificationInfos(this.mNotificationInfos);
    }
}
