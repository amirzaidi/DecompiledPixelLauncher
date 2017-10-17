// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.ArrayList;
import android.graphics.Bitmap;
import android.app.PendingIntent;
import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import android.app.Notification$Builder;

public class L implements Y, D
{
    private Notification$Builder ZJ;
    private RemoteViews ZK;
    private int ZL;
    private RemoteViews ZM;
    private Bundle ZN;
    
    public L(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean localOnly, final ArrayList list, final Bundle bundle, final String group, final boolean groupSummary, final String sortKey, final RemoteViews zm, final RemoteViews zk, final int zl) {
        this.ZJ = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 0x2) != 0x0).setOnlyAlertOnce((notification.flags & 0x8) != 0x0).setAutoCancel((notification.flags & 0x10) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (notification.flags & 0x80) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b).setLocalOnly(localOnly).setGroup(group).setGroupSummary(groupSummary).setSortKey(sortKey);
        this.ZN = new Bundle();
        if (bundle != null) {
            this.ZN.putAll(bundle);
        }
        if (list != null && !list.isEmpty()) {
            this.ZN.putStringArray("android.people", (String[])list.toArray(new String[list.size()]));
        }
        this.ZM = zm;
        this.ZK = zk;
        this.ZL = zl;
    }
    
    private void amB(final Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= 0xFFFFFFFE;
        notification.defaults &= 0xFFFFFFFD;
    }
    
    public void ajA(final T t) {
        aN.aoW(this.ZJ, t);
    }
    
    public Notification build() {
        this.ZJ.setExtras(this.ZN);
        final Notification build = this.ZJ.build();
        if (this.ZM != null) {
            build.contentView = this.ZM;
        }
        if (this.ZK != null) {
            build.bigContentView = this.ZK;
        }
        if (this.ZL != 0) {
            if (build.getGroup() != null && (build.flags & 0x200) != 0x0 && this.ZL == 2) {
                this.amB(build);
            }
            if (build.getGroup() != null && (build.flags & 0x200) == 0x0 && this.ZL == 1) {
                this.amB(build);
            }
        }
        return build;
    }
}
