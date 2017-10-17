// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class j extends i
{
    j(final String s) {
        super(s, null);
    }
    
    public float auy(final View view) {
        return view.getTranslationX();
    }
    
    public void auz(final View view, final float translationX) {
        view.setTranslationX(translationX);
    }
}
