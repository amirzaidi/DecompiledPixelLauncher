// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class q extends i
{
    q(final String s) {
        super(s, null);
    }
    
    public float auQ(final View view) {
        return view.getScrollX();
    }
    
    public void auR(final View view, final float n) {
        view.setScrollX((int)n);
    }
}
