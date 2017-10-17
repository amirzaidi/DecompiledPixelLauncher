// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class o extends i
{
    o(final String s) {
        super(s, null);
    }
    
    public float auM(final View view) {
        return view.getRotationX();
    }
    
    public void auN(final View view, final float rotationX) {
        view.setRotationX(rotationX);
    }
}
