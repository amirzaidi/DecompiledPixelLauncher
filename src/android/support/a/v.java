// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class v extends i
{
    v(final String s) {
        super(s, null);
    }
    
    public float ava(final View view) {
        return view.getScaleX();
    }
    
    public void avb(final View view, final float scaleX) {
        view.setScaleX(scaleX);
    }
}
