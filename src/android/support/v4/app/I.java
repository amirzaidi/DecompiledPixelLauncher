// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.List;
import android.net.Uri;
import java.util.Iterator;
import java.util.ArrayList;
import android.os.Bundle;
import android.app.Notification;
import android.os.Build$VERSION;
import android.support.v4.os.a;

public class i
{
    static final h Xg;
    
    static {
        if (!a.isAtLeastO()) {
            if (Build$VERSION.SDK_INT < 24) {
                if (Build$VERSION.SDK_INT < 21) {
                    if (Build$VERSION.SDK_INT < 20) {
                        if (Build$VERSION.SDK_INT < 19) {
                            if (Build$VERSION.SDK_INT < 16) {
                                Xg = new v();
                            }
                            else {
                                Xg = new aj();
                            }
                        }
                        else {
                            Xg = new j();
                        }
                    }
                    else {
                        Xg = new L();
                    }
                }
                else {
                    Xg = new ay();
                }
            }
            else {
                Xg = new an();
            }
        }
        else {
            Xg = new F();
        }
    }
    
    public static Bundle ajZ(final Notification notification) {
        if (Build$VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build$VERSION.SDK_INT < 16) {
            return null;
        }
        return aJ.anj(notification);
    }
    
    static void aka(final X x, final z z) {
        if (z != null) {
            if (!(z instanceof aG)) {
                if (!(z instanceof ax)) {
                    if (z instanceof aC) {
                        final aC ac = (aC)z;
                        aJ.anm(x, ac.XU, ac.XW, ac.XV, ac.aaV, ac.aaX, ac.aaW);
                    }
                }
                else {
                    final ax ax = (ax)z;
                    aJ.ani(x, ax.XU, ax.XW, ax.XV, ax.aaS);
                }
            }
            else {
                final aG ag = (aG)z;
                aJ.anl(x, ag.XU, ag.XW, ag.XV, ag.abr);
            }
        }
    }
    
    static void akb(final C c, final ArrayList list) {
        final Iterator<aS> iterator = list.iterator();
        while (iterator.hasNext()) {
            c.aim(iterator.next());
        }
    }
    
    static void akc(final X x, final z z) {
        if (z != null) {
            if (!(z instanceof q)) {
                aka(x, z);
            }
            else {
                final q q = (q)z;
                final ArrayList<CharSequence> list = new ArrayList<CharSequence>();
                final ArrayList<Long> list2 = new ArrayList<Long>();
                final ArrayList<CharSequence> list3 = new ArrayList<CharSequence>();
                final ArrayList<String> list4 = new ArrayList<String>();
                final ArrayList<Uri> list5 = new ArrayList<Uri>();
                for (final al al : q.XI) {
                    list.add(al.amP());
                    list2.add(al.amQ());
                    list3.add(al.amL());
                    list4.add(al.amM());
                    list5.add(al.amN());
                }
                as.amT(x, q.XJ, q.XK, list, list2, list3, list4, list5);
            }
        }
    }
}
