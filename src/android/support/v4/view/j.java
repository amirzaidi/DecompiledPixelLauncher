// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.view;

import android.view.View;

class j extends k
{
    public float agM(final View view) {
        return view.getElevation();
    }
    
    public float agN(final View view) {
        return view.getTranslationZ();
    }
    
    public String agO(final View view) {
        return view.getTransitionName();
    }
    
    public void agP(final View view, final float translationZ) {
        view.setTranslationZ(translationZ);
    }
    
    public float agQ(final View view) {
        return view.getZ();
    }
    
    public void agR(final View view, final float z) {
        view.setZ(z);
    }
    
    public void agS(final View view) {
        view.stopNestedScroll();
    }
}
