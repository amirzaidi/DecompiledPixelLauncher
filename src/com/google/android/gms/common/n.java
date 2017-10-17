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
import android.support.v4.app.Z;
import com.google.android.gms.common.a.c;
import com.google.android.gms.R$string;
import com.google.android.gms.common.internal.I;
import android.app.PendingIntent;
import android.content.Context;

public final class n extends k
{
    public static final int nL;
    
    static {
        nL = k.nA;
    }
    
    private static void ri(final int n, final Context context, final String s, final PendingIntent contentIntent) {
        final int smallIcon = 17301642;
        final boolean autoCancel = true;
        final Resources resources = context.getResources();
        final String qq = k.qQ(context);
        String contentTitle = I.lz(context, n);
        if (contentTitle == null) {
            contentTitle = resources.getString(R$string.common_google_play_services_notification_ticker);
        }
        final String lw = I.lw(context, n, qq);
        Notification notification;
        if (!c.ml(context)) {
            final String string = resources.getString(R$string.common_google_play_services_notification_ticker);
            if (!n.mJ()) {
                notification = new Z(context).anJ(smallIcon).anP(string).anK(System.currentTimeMillis()).anR(autoCancel).anS(contentIntent).anN(contentTitle).anL(lw).build();
            }
            else {
                final Notification$Builder setAutoCancel = new Notification$Builder(context).setSmallIcon(smallIcon).setContentTitle((CharSequence)contentTitle).setContentText((CharSequence)lw).setContentIntent(contentIntent).setTicker((CharSequence)string).setAutoCancel(autoCancel);
                if (n.mG()) {
                    setAutoCancel.setLocalOnly(autoCancel);
                }
                if (!n.mN()) {
                    notification = setAutoCancel.getNotification();
                }
                else {
                    setAutoCancel.setStyle((Notification$Style)new Notification$BigTextStyle().bigText((CharSequence)lw));
                    notification = setAutoCancel.build();
                }
                if (Build$VERSION.SDK_INT == 19) {
                    notification.extras.putBoolean("android.support.localOnly", autoCancel);
                }
            }
        }
        else {
            l.kg(n.mN());
            notification = new Notification$Builder(context).setSmallIcon(R$drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(autoCancel).setStyle((Notification$Style)new Notification$BigTextStyle().bigText((CharSequence)new StringBuilder(String.valueOf(contentTitle).length() + 1 + String.valueOf(lw).length()).append(contentTitle).append(" ").append(lw).toString())).addAction(R$drawable.common_full_open_on_phone, (CharSequence)resources.getString(R$string.common_open_on_phone), contentIntent).build();
        }
        final Notification notification2 = notification;
        int n2;
        if (!k.rc(n)) {
            n2 = 39789;
        }
        else {
            final int n3 = 10436;
            n.nH.set(false);
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
    
    public static Resources rj(final Context context) {
        return k.qY(context);
    }
    
    static void rk(final int n, final Context context, final PendingIntent pendingIntent) {
        ri(n, context, null, pendingIntent);
    }
}
