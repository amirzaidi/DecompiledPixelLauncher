// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.os.Bundle;
import java.util.List;
import android.os.Build$VERSION;

public class b
{
    private static final q Ua;
    private final Object Ub;
    
    static {
        if (Build$VERSION.SDK_INT < 19) {
            if (Build$VERSION.SDK_INT < 16) {
                Ua = new p();
            }
            else {
                Ua = new o();
            }
        }
        else {
            Ua = new n();
        }
    }
    
    public b() {
        this.Ub = b.Ua.aeV(this);
    }
    
    public b(final Object ub) {
        this.Ub = ub;
    }
    
    public Object aev() {
        return this.Ub;
    }
    
    public a createAccessibilityNodeInfo(final int n) {
        return null;
    }
    
    public List findAccessibilityNodeInfosByText(final String s, final int n) {
        return null;
    }
    
    public a findFocus(final int n) {
        return null;
    }
    
    public boolean performAction(final int n, final int n2, final Bundle bundle) {
        return false;
    }
}
