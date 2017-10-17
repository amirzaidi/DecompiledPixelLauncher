// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class t extends i
{
    t(final String s) {
        super(s, null);
    }
    
    public float auW(final View view) {
        return view.getScaleY();
    }
    
    public void auX(final View view, final float scaleY) {
        view.setScaleY(scaleY);
    }
}
