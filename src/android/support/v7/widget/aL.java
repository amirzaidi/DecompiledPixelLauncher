// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import java.util.Iterator;
import java.util.ArrayList;

class al implements Runnable
{
    final /* synthetic */ Z TI;
    final /* synthetic */ ArrayList TJ;
    
    al(final Z ti, final ArrayList tj) {
        this.TI = ti;
        this.TJ = tj;
    }
    
    public void run() {
        for (final X x : this.TJ) {
            this.TI.abx(x.Sr, x.Sp, x.So, x.Ss, x.Sq);
        }
        this.TJ.clear();
        this.TI.SI.remove(this.TJ);
    }
}
