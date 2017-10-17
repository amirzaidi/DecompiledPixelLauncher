// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.Iterator;
import android.os.Bundle;
import java.util.ArrayList;
import android.graphics.Bitmap;
import android.app.PendingIntent;
import android.widget.RemoteViews;
import android.app.Notification;
import android.content.Context;
import android.app.Notification$Builder;

public class ap implements X, C
{
    private Notification$Builder aaI;
    private int aaJ;
    
    public ap(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean localOnly, final String category, final ArrayList list, final Bundle extras, final int color, final int visibility, final Notification publicVersion, final String group, final boolean groupSummary, final String sortKey, final CharSequence[] remoteInputHistory, final RemoteViews customContentView, final RemoteViews customBigContentView, final RemoteViews customHeadsUpContentView, final int aaJ) {
        this.aaI = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 0x2) != 0x0).setOnlyAlertOnce((notification.flags & 0x8) != 0x0).setAutoCancel((notification.flags & 0x10) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (notification.flags & 0x80) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b).setLocalOnly(localOnly).setExtras(extras).setGroup(group).setGroupSummary(groupSummary).setSortKey(sortKey).setCategory(category).setColor(color).setVisibility(visibility).setPublicVersion(publicVersion).setRemoteInputHistory(remoteInputHistory);
        if (customContentView != null) {
            this.aaI.setCustomContentView(customContentView);
        }
        if (customBigContentView != null) {
            this.aaI.setCustomBigContentView(customBigContentView);
        }
        if (customHeadsUpContentView != null) {
            this.aaI.setCustomHeadsUpContentView(customHeadsUpContentView);
        }
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.aaI.addPerson((String)iterator.next());
        }
        this.aaJ = aaJ;
    }
    
    private void amR(final Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= 0xFFFFFFFE;
        notification.defaults &= 0xFFFFFFFD;
    }
    
    public void aim(final S s) {
        as.amU(this.aaI, s);
    }
    
    public Notification$Builder ain() {
        return this.aaI;
    }
    
    public Notification build() {
        final Notification build = this.aaI.build();
        if (this.aaJ != 0) {
            if (build.getGroup() != null && (build.flags & 0x200) != 0x0 && this.aaJ == 2) {
                this.amR(build);
            }
            if (build.getGroup() != null && (build.flags & 0x200) == 0x0 && this.aaJ == 1) {
                this.amR(build);
            }
        }
        return build;
    }
}
