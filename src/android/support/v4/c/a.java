// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.c;

import android.os.Build$VERSION;
import android.content.Context;

public class a
{
    private static final Object sLock;
    
    static {
        sLock = new Object();
    }
    
    public static final int arj(final Context context, final int n) {
        if (Build$VERSION.SDK_INT < 23) {
            return context.getResources().getColor(n);
        }
        return context.getColor(n);
    }
}
