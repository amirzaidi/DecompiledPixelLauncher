// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common;

import android.app.Notification;
import android.content.res.Resources;
import android.app.NotificationManager;
import com.google.android.gms.R$drawable;
import com.google.android.gms.common.internal.l;
import android.os.Build$VERSION;
import android.app.Notification$Style;
import android.app.Notification$BigTextStyle;
import android.app.Notification$Builder;
import android.support.v4.app.Y;
import com.google.android.gms.common.a.c;
import com.google.android.gms.R$string;
import com.google.android.gms.common.internal.I;
import android.app.PendingIntent;
import android.content.Context;

public final class n extends k
{
    public static final int kT;
    
    static {
        kT = k.kI;
    }
    
    private static void ow(final int n, final Context context, final String s, final PendingIntent contentIntent) {
        final int smallIcon = 17301642;
        final boolean autoCancel = true;
        final Resources resources = context.getResources();
        final String oe = k.oe(context);
        String contentTitle = I.iL(context, n);
        if (contentTitle == null) {
            contentTitle = resources.getString(R$string.common_google_play_services_notification_ticker);
        }
        final String ii = I.iI(context, n, oe);
        Notification notification;
        if (!c.jx(context)) {
            final String string = resources.getString(R$string.common_google_play_services_notification_ticker);
            if (!n.jV()) {
                notification = new Y(context).amu(smallIcon).amC(string).amv(System.currentTimeMillis()).amE(autoCancel).amF(contentIntent).amz(contentTitle).amw(ii).build();
            }
            else {
                final Notification$Builder setAutoCancel = new Notification$Builder(context).setSmallIcon(smallIcon).setContentTitle((CharSequence)contentTitle).setContentText((CharSequence)ii).setContentIntent(contentIntent).setTicker((CharSequence)string).setAutoCancel(autoCancel);
                if (n.jS()) {
                    setAutoCancel.setLocalOnly(autoCancel);
                }
                if (!n.jZ()) {
                    notification = setAutoCancel.getNotification();
                }
                else {
                    setAutoCancel.setStyle((Notification$Style)new Notification$BigTextStyle().bigText((CharSequence)ii));
                    notification = setAutoCancel.build();
                }
                if (Build$VERSION.SDK_INT == 19) {
                    notification.extras.putBoolean("android.support.localOnly", autoCancel);
                }
            }
        }
        else {
            l.hs(n.jZ());
            notification = new Notification$Builder(context).setSmallIcon(R$drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(autoCancel).setStyle((Notification$Style)new Notification$BigTextStyle().bigText((CharSequence)new StringBuilder(String.valueOf(contentTitle).length() + 1 + String.valueOf(ii).length()).append(contentTitle).append(" ").append(ii).toString())).addAction(R$drawable.common_full_open_on_phone, (CharSequence)resources.getString(R$string.common_open_on_phone), contentIntent).build();
        }
        final Notification notification2 = notification;
        int n2;
        if (!k.oq(n)) {
            n2 = 39789;
        }
        else {
            final int n3 = 10436;
            n.kP.set(false);
            n2 = n3;
        }
        final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
        if (s == null) {
            notificationManager.notify(n2, notification2);
        }
        else {
            notificationManager.notify(s, n2, notification2);
        }
    }
    
    public static Resources ox(final Context context) {
        return k.om(context);
    }
    
    static void oy(final int n, final Context context, final PendingIntent pendingIntent) {
        ow(n, context, null, pendingIntent);
    }
}
