// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.widget.RemoteViews;
import android.os.Build$VERSION;
import android.app.Notification;

class aq
{
    public Notification anX(final Z z, final Y y) {
        RemoteViews alR = null;
        if (z.abC != null) {
            alR = z.abC.alR(y);
        }
        final Notification build = y.build();
        if (alR == null) {
            if (z.abc != null) {
                build.contentView = z.abc;
            }
        }
        else {
            build.contentView = alR;
        }
        if (Build$VERSION.SDK_INT >= 16 && z.abC != null) {
            final RemoteViews alQ = z.abC.alQ(y);
            if (alQ != null) {
                build.bigContentView = alQ;
            }
        }
        if (Build$VERSION.SDK_INT >= 21 && z.abC != null) {
            final RemoteViews alP = z.abC.alP(y);
            if (alP != null) {
                build.headsUpContentView = alP;
            }
        }
        return build;
    }
}
