// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class w extends i
{
    w(final String s) {
        super(s, null);
    }
    
    public float avc(final View view) {
        return view.getRotation();
    }
    
    public void avd(final View view, final float rotation) {
        view.setRotation(rotation);
    }
}
