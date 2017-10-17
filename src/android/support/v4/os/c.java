// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.os;

import android.os.Trace;
import android.os.Build$VERSION;

public final class c
{
    public static void arh() {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
    
    public static void ari(final String s) {
        if (Build$VERSION.SDK_INT >= 18) {
            Trace.beginSection(s);
        }
    }
}
