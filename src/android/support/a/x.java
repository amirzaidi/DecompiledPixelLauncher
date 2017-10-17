// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class x extends i
{
    x(final String s) {
        super(s, null);
    }
    
    public float ave(final View view) {
        return view.getScrollY();
    }
    
    public void avf(final View view, final float n) {
        view.setScrollY((int)n);
    }
}
