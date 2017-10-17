// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.widget;

import android.widget.EdgeEffect;
import android.os.Build$VERSION;

public final class g
{
    private static final f Wr;
    
    static {
        if (Build$VERSION.SDK_INT < 21) {
            Wr = new f();
        }
        else {
            Wr = new e();
        }
    }
    
    public static void ahK(final EdgeEffect edgeEffect, final float n, final float n2) {
        g.Wr.ahJ(edgeEffect, n, n2);
    }
}
