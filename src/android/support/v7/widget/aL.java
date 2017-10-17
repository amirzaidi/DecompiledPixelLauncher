// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Iterator;
import java.util.ArrayList;

class al implements Runnable
{
    final /* synthetic */ Z RZ;
    final /* synthetic */ ArrayList Sa;
    
    al(final Z rz, final ArrayList sa) {
        this.RZ = rz;
        this.Sa = sa;
    }
    
    public void run() {
        for (final W w : this.Sa) {
            this.RZ.aav(w.QF, w.QD, w.QC, w.QG, w.QE);
        }
        this.Sa.clear();
        this.RZ.QZ.remove(this.Sa);
    }
}
