// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityEvent;
import android.os.Build$VERSION;

public final class n
{
    private static final q VE;
    
    static {
        if (Build$VERSION.SDK_INT < 19) {
            if (Build$VERSION.SDK_INT < 16) {
                VE = new q();
            }
            else {
                VE = new p();
            }
        }
        else {
            VE = new o();
        }
    }
    
    public static void afX(final AccessibilityEvent accessibilityEvent, final int n) {
        n.VE.agb(accessibilityEvent, n);
    }
    
    public static int afY(final AccessibilityEvent accessibilityEvent) {
        return n.VE.aga(accessibilityEvent);
    }
    
    public static r afZ(final AccessibilityEvent accessibilityEvent) {
        return new r(accessibilityEvent);
    }
}
