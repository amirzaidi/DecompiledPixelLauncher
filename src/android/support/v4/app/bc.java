// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.util.SparseArray;
import java.util.Iterator;
import java.util.ArrayList;
import android.graphics.Bitmap;
import android.app.PendingIntent;
import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.List;
import android.app.Notification$Builder;

public class bc implements X, C
{
    private Notification$Builder acW;
    private List acX;
    private RemoteViews acY;
    private RemoteViews acZ;
    private final Bundle ada;
    
    public bc(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean b2, final Bundle bundle, final String s, final boolean b3, final String s2, final RemoteViews acZ, final RemoteViews acY) {
        this.acX = new ArrayList();
        this.acW = new Notification$Builder(context).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 0x2) != 0x0).setOnlyAlertOnce((notification.flags & 0x8) != 0x0).setAutoCancel((notification.flags & 0x10) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (notification.flags & 0x80) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b);
        this.ada = new Bundle();
        if (bundle != null) {
            this.ada.putAll(bundle);
        }
        if (b2) {
            this.ada.putBoolean("android.support.localOnly", true);
        }
        if (s != null) {
            this.ada.putString("android.support.groupKey", s);
            if (!b3) {
                this.ada.putBoolean("android.support.useSideChannel", true);
            }
            else {
                this.ada.putBoolean("android.support.isGroupSummary", true);
            }
        }
        if (s2 != null) {
            this.ada.putString("android.support.sortKey", s2);
        }
        this.acZ = acZ;
        this.acY = acY;
    }
    
    public void aim(final S s) {
        this.acX.add(aJ.ann(this.acW, s));
    }
    
    public Notification$Builder ain() {
        return this.acW;
    }
    
    public Notification build() {
        final Notification build = this.acW.build();
        final Bundle anj = aJ.anj(build);
        final Bundle bundle = new Bundle(this.ada);
        for (final String s : this.ada.keySet()) {
            if (anj.containsKey(s)) {
                bundle.remove(s);
            }
        }
        anj.putAll(bundle);
        final SparseArray ank = aJ.ank(this.acX);
        if (ank != null) {
            aJ.anj(build).putSparseParcelableArray("android.support.actionExtras", ank);
        }
        if (this.acZ != null) {
            build.contentView = this.acZ;
        }
        if (this.acY != null) {
            build.bigContentView = this.acY;
        }
        return build;
    }
}
