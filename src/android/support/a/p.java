// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.View;

class p extends i
{
    p(final String s) {
        super(s, null);
    }
    
    public float auO(final View view) {
        return view.getTranslationY();
    }
    
    public void auP(final View view, final float translationY) {
        view.setTranslationY(translationY);
    }
}
