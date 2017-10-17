// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.notification;

import com.android.launcher3.util.PackageUserKey;
import java.util.List;

public interface NotificationListener$NotificationsChangedListener
{
    void onNotificationFullRefresh(final List p0);
    
    void onNotificationPosted(final PackageUserKey p0, final NotificationKeyData p1, final boolean p2);
    
    void onNotificationRemoved(final PackageUserKey p0, final NotificationKeyData p1);
}
