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

public class aW implements X, C
{
    private Notification$Builder acC;
    private List acD;
    private RemoteViews acE;
    private RemoteViews acF;
    private Bundle acG;
    
    public aW(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean b2, final ArrayList list, final Bundle bundle, final String s, final boolean b3, final String s2, final RemoteViews acF, final RemoteViews acE) {
        this.acD = new ArrayList();
        this.acC = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 0x2) != 0x0).setOnlyAlertOnce((notification.flags & 0x8) != 0x0).setAutoCancel((notification.flags & 0x10) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (notification.flags & 0x80) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b);
        this.acG = new Bundle();
        if (bundle != null) {
            this.acG.putAll(bundle);
        }
        if (list != null && !list.isEmpty()) {
            this.acG.putStringArray("android.people", (String[])list.toArray(new String[list.size()]));
        }
        if (b2) {
            this.acG.putBoolean("android.support.localOnly", true);
        }
        if (s != null) {
            this.acG.putString("android.support.groupKey", s);
            if (!b3) {
                this.acG.putBoolean("android.support.useSideChannel", true);
            }
            else {
                this.acG.putBoolean("android.support.isGroupSummary", true);
            }
        }
        if (s2 != null) {
            this.acG.putString("android.support.sortKey", s2);
        }
        this.acF = acF;
        this.acE = acE;
    }
    
    public void aim(final S s) {
        this.acD.add(aJ.ann(this.acC, s));
    }
    
    public Notification$Builder ain() {
        return this.acC;
    }
    
    public Notification build() {
        final SparseArray ank = aJ.ank(this.acD);
        if (ank != null) {
            this.acG.putSparseParcelableArray("android.support.actionExtras", ank);
        }
        this.acC.setExtras(this.acG);
        final Notification build = this.acC.build();
        if (this.acF != null) {
            build.contentView = this.acF;
        }
        if (this.acE != null) {
            build.bigContentView = this.acE;
        }
        return build;
    }
}
