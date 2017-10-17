// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.Iterator;
import java.util.ArrayList;
import android.os.Bundle;
import android.app.Notification;
import android.os.Build$VERSION;

public class k
{
    static final j YQ;
    
    static {
        if (Build$VERSION.SDK_INT < 26) {
            if (Build$VERSION.SDK_INT < 24) {
                if (Build$VERSION.SDK_INT < 21) {
                    if (Build$VERSION.SDK_INT < 20) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 16) {
                                YQ = new w();
                            }
                            else {
                                YQ = new aj();
                            }
                        }
                        else {
                            YQ = new l();
                        }
                    }
                    else {
                        YQ = new N();
                    }
                }
                else {
                    YQ = new aw();
                }
            }
            else {
                YQ = new am();
            }
        }
        else {
            YQ = new H();
        }
    }
    
    public static Bundle alm(final Notification notification) {
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build$VERSION.SDK_INT < 16) {
            return null;
        }
        return aF.aom(notification);
    }
    
    static void aln(final D d, final ArrayList list) {
        final Iterator<aO> iterator = list.iterator();
        while (iterator.hasNext()) {
            d.ajA(iterator.next());
        }
    }
}
