// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.util.SparseArray;
import java.util.ArrayList;
import android.graphics.Bitmap;
import android.app.PendingIntent;
import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.List;
import android.app.Notification$Builder;

public class aS implements Y, D
{
    private Notification$Builder adW;
    private List adX;
    private RemoteViews adY;
    private RemoteViews adZ;
    private Bundle aea;
    
    public aS(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean b2, final ArrayList list, final Bundle bundle, final String s, final boolean b3, final String s2, final RemoteViews adZ, final RemoteViews adY) {
        this.adX = new ArrayList();
        this.adW = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 0x2) != 0x0).setOnlyAlertOnce((notification.flags & 0x8) != 0x0).setAutoCancel((notification.flags & 0x10) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (notification.flags & 0x80) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b);
        this.aea = new Bundle();
        if (bundle != null) {
            this.aea.putAll(bundle);
        }
        if (list != null && !list.isEmpty()) {
            this.aea.putStringArray("android.people", (String[])list.toArray(new String[list.size()]));
        }
        if (b2) {
            this.aea.putBoolean("android.support.localOnly", true);
        }
        if (s != null) {
            this.aea.putString("android.support.groupKey", s);
            if (!b3) {
                this.aea.putBoolean("android.support.useSideChannel", true);
            }
            else {
                this.aea.putBoolean("android.support.isGroupSummary", true);
            }
        }
        if (s2 != null) {
            this.aea.putString("android.support.sortKey", s2);
        }
        this.adZ = adZ;
        this.adY = adY;
    }
    
    public void ajA(final T t) {
        this.adX.add(aF.aoo(this.adW, t));
    }
    
    public Notification build() {
        final SparseArray aon = aF.aon(this.adX);
        if (aon != null) {
            this.aea.putSparseParcelableArray("android.support.actionExtras", aon);
        }
        this.adW.setExtras(this.aea);
        final Notification build = this.adW.build();
        if (this.adZ != null) {
            build.contentView = this.adZ;
        }
        if (this.adY != null) {
            build.bigContentView = this.adY;
        }
        return build;
    }
}
