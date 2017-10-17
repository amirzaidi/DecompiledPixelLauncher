// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.ArrayList;

class s implements aF
{
    final /* synthetic */ aV XL;
    final String XM;
    final int XN;
    final int mFlags;
    
    s(final aV xl, final String xm, final int xn, final int mFlags) {
        this.XL = xl;
        this.XM = xm;
        this.XN = xn;
        this.mFlags = mFlags;
    }
    
    public boolean akA(final ArrayList list, final ArrayList list2) {
        if (this.XL.acs != null && this.XN < 0 && this.XM == null) {
            final bb ajt = this.XL.acs.ajt();
            if (ajt != null && ajt.aom()) {
                return false;
            }
        }
        return this.XL.apY(list, list2, this.XM, this.XN, this.mFlags);
    }
}
