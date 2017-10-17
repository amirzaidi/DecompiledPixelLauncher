// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view.a;

import android.os.Bundle;
import java.util.List;
import android.os.Build$VERSION;

public class b
{
    private static final y VA;
    private final Object VB;
    
    static {
        if (Build$VERSION.SDK_INT < 19) {
            if (Build$VERSION.SDK_INT < 16) {
                VA = new x();
            }
            else {
                VA = new w();
            }
        }
        else {
            VA = new v();
        }
    }
    
    public b() {
        this.VB = b.VA.agj(this);
    }
    
    public b(final Object vb) {
        this.VB = vb;
    }
    
    public Object afx() {
        return this.VB;
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
