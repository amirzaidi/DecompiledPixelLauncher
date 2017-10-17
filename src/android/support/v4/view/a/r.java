// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.view.accessibility.AccessibilityEvent;
import android.os.Build$VERSION;

public final class r
{
    private static final u Ue;
    
    static {
        if (Build$VERSION.SDK_INT < 19) {
            if (Build$VERSION.SDK_INT < 16) {
                Ue = new u();
            }
            else {
                Ue = new t();
            }
        }
        else {
            Ue = new s();
        }
    }
    
    public static void aeW(final AccessibilityEvent accessibilityEvent, final int n) {
        r.Ue.afa(accessibilityEvent, n);
    }
    
    public static int aeX(final AccessibilityEvent accessibilityEvent) {
        return r.Ue.aeZ(accessibilityEvent);
    }
    
    public static v aeY(final AccessibilityEvent accessibilityEvent) {
        return new v(accessibilityEvent);
    }
}
